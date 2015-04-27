from django.db import models

# Create your models here.


class Users(models.Model):
	ACCOUNT_TYPES = (('S','STUDENT'),('T','TEACHER'),)
	email = models.EmailField(max_length=254,primary_key=True)
	password = models.CharField(max_length=254)
	accountType = models.CharField(max_length=1,choices=ACCOUNT_TYPES)

class Student(models.Model):
	SEM = ((1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),)
	usn = models.CharField(max_length=10,primary_key=True)
	name = models.CharField(max_length=255)
	email = models.ForeignKey(Users)
	deptName = models.CharField(max_length=255)
	sem = models.IntegerField(max_length=1,choices=SEM)
	phone = models.CharField(max_length=10)
	cgpa = models.CharField(max_length=6)






