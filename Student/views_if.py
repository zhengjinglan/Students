from django.http import JsonResponse, HttpResponse
from django.core.exceptions import ValidationError,ObjectDoesNotExist
from django.db.utils import IntegrityError
import time
from django.shortcuts import render
from Student.mysql.mysql_demo import DB
import pymysql

#添加学生信息接口
def add_student(request):
    db = DB()
    stuId = request.POST.get('stuId','')  # 学号
    stuName = request.POST.get('stuName', '')  # 姓名
    sex = request.POST.get('sex', '')  # 性别
    brithDate = request.POST.get('brithDate', '')  # 出生日期
    native = request.POST.get('native', '')  # 籍贯
    entranceTime = request.POST.get('entranceTime', '')  # 入学日期
    politicalFee = request.POST.get('politicalFee', '')  # 政治面貌
    perPhone = request.POST.get('perPhone', '')  # 个人电话
    idNum = request.POST.get('idNum', '')  # 身份证号
    classId = request.POST.get('classId', '')  # 班级id
    dormitoryId = request.POST.get('dormitoryId', '')  # 宿舍id
    national = request.POST.get('national', '')  # 民族
    employmcntStatus = request.POST.get('employmcntStatus', '')  # W就业情况
    hPhone = request.POST.get('hPhone', '')  # 家庭电话
    address = request.POST.get('address', '')  # 家庭电话
    sql = "INSERT INTO tb_student (StuID, StuName, Sex, BrithDate, Native, EntranceTime, " \
          "politicalFee, PerPhone, IDnum, ClassID, DormitoryID, " \
          "National, EmploymcntStatus, HPhone, Address) VALUES (" \
          " %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"

    try:
         res = db.edit(sql,(stuId, stuName, sex, brithDate, native, entranceTime, politicalFee, perPhone, idNum,
                            classId, dormitoryId, national, employmcntStatus, hPhone, address))
         print(res)
    except ValidationError as e:
        error = '添加失败'
        return JsonResponse(
            {
                'status' : 10024,
                'message' : error
            }
        )
    #
    sql = "SELECT * FROM tb_student"
    result = db.get_all(sql)
    # 继续渲染到该页面，此时展示的就是修改某条数据后的结果
    return render(request, "student_manage.html", {"students": result})

#删除学生信息接口
def del_student(request):
    db = DB()
    if request.method == 'GET':
        print("走了删除逻辑1")
        stuId  = request.GET.get('stuId', '')
        print("stuID===", stuId)
        #根据返回的id删除该id的内容
        # student.objects.all().filter(stuId = stuId).delete()
        sql = "DELETE FROM tb_student WHERE StuID = %s;"
        res = db.edit(sql, stuId)
        #删除后还要拿到数据库所有剩余的信息
        sql = "SELECT * FROM tb_student"
        result = db.get_all(sql)
        #继续渲染到该页面，此时展示的就是删除某条数据后的结果
        return render(request, "student_manage.html", {"students": result})
    else:
        return HttpResponse("删除失败")

def update_student(request):
    db = DB()
    stuId = request.POST.get('stuId', '')  # 学号
    stuName = request.POST.get('stuName', '')  # 姓名
    sex = request.POST.get('sex', '')  # 性别
    brithDate = request.POST.get('brithDate', '')  # 出生日期
    native = request.POST.get('native', '')  # 籍贯
    entranceTime = request.POST.get('entranceTime', '')  # 入学日期
    politicalFee = request.POST.get('politicalFee', '')  # 政治面貌
    perPhone = request.POST.get('perPhone', '')  # 个人电话
    idNum = request.POST.get('idNum', '')  # 身份证号
    classId = request.POST.get('classId', '')  # 班级id
    dormitoryId = request.POST.get('dormitoryId', '')  # 宿舍id
    national = request.POST.get('national', '')  # 民族
    employmcntStatus = request.POST.get('employmcntStatus', '')  # W就业情况
    hPhone = request.POST.get('hPhone', '')  # 家庭电话
    address = request.POST.get('address', '')  # 家庭电话
    sql = "update tb_student set StuName = %s, Sex = %s, BrithDate = %s, Native = %s, " \
          "EntranceTime = %s, politicalFee = %s, PerPhone = %s, IDnum = %s, ClassID = %s, " \
          "DormitoryID = %s, National = %s, EmploymcntStatus = %s, HPhone = %s, Address = %s" \
          "where StuID = %s"
    try:
        res = db.edit(sql, (stuId, stuName, sex, brithDate, native, entranceTime, politicalFee, perPhone, idNum,
                            classId, dormitoryId, national, employmcntStatus, hPhone, address))
        print('res------',res)
    except ValidationError as e:
        error = '修改失败'
        return JsonResponse(
            {
                'status': 10024,
                'message': error
            }
        )
    #
    sql = "SELECT * FROM tb_student"
    result = db.get_all(sql)
    # 继续渲染到该页面，此时展示的就是修改某条数据后的结果
    return render(request, "student_manage.html", {"students": result})