from django.conf.urls import url
from Student import views_if

urlpatterns = [
    url(r'^add_student/$', views_if.add_student, name= 'add_student'),
    url(r'^del_student/', views_if.del_student, name= 'del_student'),
    url(r'^update_student/', views_if.update_student, name= 'update_student'),
]