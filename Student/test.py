from Student.mysql.mysql_demo import DB
import pymysql
import Student.views_if as  views

if __name__ == "__main__":
    db = DB()
    sql = "SELECT * FROM student_student"
    res = db.get_all(sql)
    print(res)

    sql = "SELECT * FROM student_student WHERE stuName = %s"
    param = '张三'
    res1 = db.get_one(sql, param)
    print(res1)

    sql = "INSERT INTO student_student (StuID, StuName, Sex, BrithDate, Native, EntranceTime, " \
                                      "politicalFee, PerPhone, IDnum, ClassID, DormitoryID, " \
                                  "National, EmploymcntStatus, HPhone, Address) VALUES (" \
                                  "%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);"

    parama = ['0025', '张三', '男', '1995-02-08', '无', '2020-08-09', '无', '13811000011' \
                , '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索']
    res2 = db.edit(sql, parama)
    print(res2)