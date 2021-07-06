# Generated by Django 3.2.4 on 2021-06-22 15:38

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='student',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('stuId', models.CharField(max_length=12)),
                ('stuName', models.CharField(max_length=8)),
                ('sex', models.CharField(max_length=2)),
                ('brithDate', models.DateTimeField(verbose_name='brithDate')),
                ('native', models.CharField(max_length=40)),
                ('entranceTime', models.DateTimeField(verbose_name='entranceTime')),
                ('politicalFee', models.CharField(max_length=1)),
                ('perPhone', models.CharField(max_length=11)),
                ('idNum', models.CharField(max_length=18)),
                ('classId', models.CharField(max_length=9)),
                ('dormitoryId', models.CharField(max_length=4)),
                ('national', models.CharField(max_length=1)),
                ('employmcntStatus', models.CharField(max_length=10)),
                ('hPhone', models.CharField(max_length=11)),
                ('address', models.CharField(max_length=50)),
            ],
        ),
    ]
