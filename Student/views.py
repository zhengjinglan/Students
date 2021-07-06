import json
import time

from django.views.decorators.csrf import csrf_exempt
from django.contrib import auth
from django.http import HttpResponseRedirect, JsonResponse
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from Student.mysql.mysql_demo import DB
from Student import models
import pymysql
from Students.MyEncoder import MyEncoder

def index(request):
    return render(request, "index.html")

#登录动作
@csrf_exempt
def login_action(request):
    if request.method == 'POST':
        username = request.POST.get('username', '')
        password = request.POST.get('password', '')
        user = auth.authenticate(
            username = username,
            password = password
        )
        if user is not None:
            auth.login(request, user) #登录
            response = HttpResponseRedirect('/student_add/')
            request.session['user'] = username #将session信息记录到浏览器
            # response.set_cookie('user', username, 3600)
            return response
        else:
            return render(
                request,
                'index.html',
                {
                    'error': '账号或密码错误！'
                }
            )

#学生管理

def student_manage(request):
    db = DB()
    sql = "SELECT * FROM tb_student"
    res = db.get_all(sql)
    print(res)
    results = {'res':[]} #定义一个空数组
    results['res'] = str(res) #转换为字符串
    # return render(
    #     request,
    #     "student_manage.html",
    #     {
    #         # "user": username,
    #         "students": res
    #     }
    #               )
    return JsonResponse(
        {
            'status': 200,
            'message': 'success',
            "students": results
        }
    )


def student_add(request):
    return render(request, "student_add.html")

def student_update(request):
    db = DB()
    stuId = request.GET.get('stuId', '')
    sql = "SELECT * FROM tb_student where StuID = %s"
    res = db.get_one(sql,stuId)
    print(res)
    results = {'res': []}  # 定义一个空数组
    results['res'] = str(res)  # 转换为字符串
    # return render(request,'student_update.html',{"students":res})
    return JsonResponse(
        {
            'status': 200,
            'message': 'success',
            "students" : results
        }
    )
