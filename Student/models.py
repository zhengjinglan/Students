# -*-coding:utf-8 -*-

from django.db import models


# class AuthGroup(models.Model):
#     name = models.CharField(unique=True, max_length=150)
#
#     class Meta:
#         managed = False
#         db_table = 'auth_group'
#
#
# class AuthGroupPermissions(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
#     permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)
#
#     class Meta:
#         managed = False
#         db_table = 'auth_group_permissions'
#         unique_together = (('group', 'permission'),)
#
#
# class AuthPermission(models.Model):
#     name = models.CharField(max_length=255)
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
#     codename = models.CharField(max_length=100)
#
#     class Meta:
#         managed = False
#         db_table = 'auth_permission'
#         unique_together = (('content_type', 'codename'),)
#
#
# class AuthUser(models.Model):
#     password = models.CharField(max_length=128)
#     last_login = models.DateTimeField(blank=True, null=True)
#     is_superuser = models.IntegerField()
#     username = models.CharField(unique=True, max_length=150)
#     first_name = models.CharField(max_length=150)
#     last_name = models.CharField(max_length=150)
#     email = models.CharField(max_length=254)
#     is_staff = models.IntegerField()
#     is_active = models.IntegerField()
#     date_joined = models.DateTimeField()
#
#     class Meta:
#         managed = False
#         db_table = 'auth_user'
#
#
# class AuthUserGroups(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#     group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
#
#     class Meta:
#         managed = False
#         db_table = 'auth_user_groups'
#         unique_together = (('user', 'group'),)
#
#
# class AuthUserUserPermissions(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#     permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)
#
#     class Meta:
#         managed = False
#         db_table = 'auth_user_user_permissions'
#         unique_together = (('user', 'permission'),)
#
#
# class DjangoAdminLog(models.Model):
#     action_time = models.DateTimeField()
#     object_id = models.TextField(blank=True, null=True)
#     object_repr = models.CharField(max_length=200)
#     action_flag = models.PositiveSmallIntegerField()
#     change_message = models.TextField()
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#
#     class Meta:
#         managed = False
#         db_table = 'django_admin_log'
#
#
# class DjangoContentType(models.Model):
#     app_label = models.CharField(max_length=100)
#     model = models.CharField(max_length=100)
#
#     class Meta:
#         managed = False
#         db_table = 'django_content_type'
#         unique_together = (('app_label', 'model'),)
#
#
# class DjangoMigrations(models.Model):
#     id = models.BigAutoField(primary_key=True)
#     app = models.CharField(max_length=255)
#     name = models.CharField(max_length=255)
#     applied = models.DateTimeField()
#
#     class Meta:
#         managed = False
#         db_table = 'django_migrations'
#
#
# class DjangoSession(models.Model):
#     session_key = models.CharField(primary_key=True, max_length=40)
#     session_data = models.TextField()
#     expire_date = models.DateTimeField()
#
#     class Meta:
#         managed = False
#         db_table = 'django_session'
#

class StudentStudent(models.Model):
    id = models.BigAutoField(primary_key=True)
    stuid = models.CharField(db_column='stuId', max_length=12)  # Field name made lowercase.
    stuname = models.CharField(db_column='stuName', max_length=8)  # Field name made lowercase.
    sex = models.CharField(max_length=2)
    brithdate = models.DateTimeField(db_column='brithDate')  # Field name made lowercase.
    native = models.CharField(max_length=40)
    entrancetime = models.DateTimeField(db_column='entranceTime')  # Field name made lowercase.
    politicalfee = models.CharField(db_column='politicalFee', max_length=1)  # Field name made lowercase.
    perphone = models.CharField(db_column='perPhone', max_length=11)  # Field name made lowercase.
    idnum = models.CharField(db_column='idNum', max_length=18)  # Field name made lowercase.
    classid = models.CharField(db_column='classId', max_length=9)  # Field name made lowercase.
    dormitoryid = models.CharField(db_column='dormitoryId', max_length=4)  # Field name made lowercase.
    national = models.CharField(max_length=1)
    employmcntstatus = models.CharField(db_column='employmcntStatus', max_length=10)  # Field name made lowercase.
    hphone = models.CharField(db_column='hPhone', max_length=11)  # Field name made lowercase.
    address = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'student_student'

class TbClass(models.Model):
    classid = models.CharField(db_column='ClassID', primary_key=True, max_length=9)  # Field name made lowercase.
    classname = models.CharField(db_column='ClassName', max_length=20)  # Field name made lowercase.
    num = models.IntegerField(db_column='Num')  # Field name made lowercase.
    speeializeid = models.CharField(db_column='SpeeializeID', max_length=2)  # Field name made lowercase.
    departmentid = models.CharField(db_column='DepartmentID', max_length=2)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_class'


class TbCourse(models.Model):
    courseid = models.CharField(db_column='CourseID', primary_key=True, max_length=8)  # Field name made lowercase.
    coursename = models.CharField(db_column='CourseName', max_length=25)  # Field name made lowercase.
    coursenature = models.CharField(db_column='CourseNature', max_length=10)  # Field name made lowercase.
    credits = models.IntegerField(db_column='Credits')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_course'

class TbDepartment(models.Model):
    departmentid = models.CharField(db_column='DepartmentID', primary_key=True, max_length=2)  # Field name made lowercase.
    departmentname = models.CharField(db_column='DepartmentName', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_department'


class TbSchool(models.Model):
    schoolid = models.IntegerField(db_column='schoolId', primary_key=True)  # Field name made lowercase.
    schoolname = models.CharField(db_column='schoolName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    schoolprincipal = models.CharField(db_column='schoolPrincipal', max_length=20, blank=True, null=True)  # Field name made lowercase.
    schooladd = models.CharField(db_column='schoolAdd', max_length=200, blank=True, null=True)  # Field name made lowercase.
    schoolemain = models.CharField(db_column='schoolEmain', max_length=200, blank=True, null=True)  # Field name made lowercase.
    schooltel = models.CharField(db_column='schoolTel', max_length=11, blank=True, null=True)  # Field name made lowercase.
    schoolwebsite = models.CharField(db_column='schoolWebsite', max_length=30, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_school'


class TbScore(models.Model):
    scoreid = models.IntegerField(db_column='scoreId', primary_key=True)  # Field name made lowercase.
    studentid = models.IntegerField(db_column='studentId', blank=True, null=True)  # Field name made lowercase.
    courseid = models.IntegerField(db_column='courseId', blank=True, null=True)  # Field name made lowercase.
    score = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tb_score'

class TbSpecialize(models.Model):
    speeializeid = models.CharField(db_column='SpeeializeID', primary_key=True, max_length=2)  # Field name made lowercase.
    specializename = models.CharField(db_column='SpecializeName', max_length=20)  # Field name made lowercase.
    departmentid = models.CharField(db_column='DepartmentID', max_length=2)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_specialize'


class TbStudent(models.Model):
    stuid = models.CharField(db_column='StuID', primary_key=True, max_length=12)  # Field name made lowercase.
    stuname = models.CharField(db_column='StuName', max_length=8)  # Field name made lowercase.
    sex = models.CharField(db_column='Sex', max_length=2)  # Field name made lowercase.
    brithdate = models.DateField(db_column='BrithDate')  # Field name made lowercase.
    native = models.CharField(db_column='Native', max_length=40)  # Field name made lowercase.
    entrancetime = models.DateField(db_column='EntranceTime')  # Field name made lowercase.
    politicalfee = models.CharField(db_column='PoliticalFee', max_length=10)  # Field name made lowercase.
    perphone = models.CharField(db_column='PerPhone', max_length=11)  # Field name made lowercase.
    idnum = models.CharField(db_column='IDNum', max_length=255)  # Field name made lowercase.
    classid = models.CharField(db_column='ClassID', max_length=9)  # Field name made lowercase.
    dormitoryid = models.CharField(db_column='DormitoryID', max_length=4)  # Field name made lowercase.
    national = models.CharField(db_column='National', max_length=10)  # Field name made lowercase.
    employmcntstatus = models.CharField(db_column='EmploymcntStatus', max_length=10, blank=True, null=True)  # Field name made lowercase.
    hphone = models.CharField(db_column='HPhone', max_length=11)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=50)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_student'

class TbTeacher(models.Model):
    teacherid = models.CharField(db_column='TeacherID', primary_key=True, max_length=10)  # Field name made lowercase.
    teachername = models.CharField(db_column='TeacherName', max_length=8)  # Field name made lowercase.
    sex = models.CharField(db_column='Sex', max_length=2)  # Field name made lowercase.
    birthdate = models.DateTimeField(db_column='BirthDate')  # Field name made lowercase.
    politicalface = models.CharField(db_column='PoliticalFace', max_length=8)  # Field name made lowercase.
    native = models.CharField(db_column='Native', max_length=40)  # Field name made lowercase.
    national = models.CharField(db_column='National', max_length=1)  # Field name made lowercase.
    tephone = models.CharField(db_column='Tephone', max_length=1)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=50)  # Field name made lowercase.
    idnum = models.CharField(db_column='IDNum', max_length=18)  # Field name made lowercase.
    photo = models.CharField(db_column='Photo', max_length=255)  # Field name made lowercase.
    admissiontime = models.DateTimeField(db_column='AdmissionTime')  # Field name made lowercase.
    firstdegree = models.CharField(db_column='FirstDegree', max_length=4)  # Field name made lowercase.
    highestdegree = models.CharField(db_column='HighestDegree', max_length=4)  # Field name made lowercase.
    position = models.CharField(db_column='Position', max_length=8)  # Field name made lowercase.
    notes = models.CharField(db_column='Notes', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_teacher'


class TbTeacheryoung(models.Model):
    teacherid = models.CharField(db_column='TeacherID', primary_key=True, max_length=10)  # Field name made lowercase.
    courseid = models.CharField(db_column='CourseID', max_length=8)  # Field name made lowercase.
    classid = models.CharField(db_column='ClassID', max_length=9)  # Field name made lowercase.
    term = models.IntegerField(db_column='Term')  # Field name made lowercase.
    classroomid = models.CharField(db_column='ClassroomID', max_length=10)  # Field name made lowercase.
    weeklyhours = models.IntegerField(db_column='WeeklyHours')  # Field name made lowercase.
    termworkload = models.IntegerField(db_column='TermWorkload')  # Field name made lowercase.
    wubie = models.CharField(db_column='Wubie', max_length=2)  # Field name made lowercase.
    jieci = models.CharField(db_column='JieCi', max_length=2)  # Field name made lowercase.
    notes = models.CharField(db_column='Notes', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_teacheryoung'
        unique_together = (('teacherid', 'courseid', 'classid'),)

class TbTeachingplan(models.Model):
    term = models.IntegerField(db_column='Term', primary_key=True)  # Field name made lowercase.
    departmcntid = models.CharField(db_column='DepartmcntID', max_length=2)  # Field name made lowercase.
    specializclid = models.CharField(db_column='SpecializclID', max_length=2)  # Field name made lowercase.
    courscid = models.CharField(db_column='CourscID', max_length=8)  # Field name made lowercase.
    startwcck = models.IntegerField(db_column='StartWcck')  # Field name made lowercase.
    endwcck = models.IntegerField(db_column='EndWcck')  # Field name made lowercase.
    thcoryhours = models.IntegerField(db_column='ThcoryHours')  # Field name made lowercase.
    practicchours = models.IntegerField(db_column='PracticcHours')  # Field name made lowercase.
    sumhours = models.IntegerField(db_column='SumHours')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tb_teachingplan'