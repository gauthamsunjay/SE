from django.db import models
import student.models as stuModels

# Create your models here.

'''class Domain(models.Model):
	pass'''

class Teacher(models.Model):
	tId = models.CharField(max_length=255,primary_key=True)
	name = models.CharField(max_length=255)
	email = models.ForeignKey(stuModels.Users)
	domainName = models.CharField(max_length=255)
	deptName = models.CharField(max_length=255)
	phone = models.CharField(max_length=10)
	
class Projects(models.Model):
	STATUS = (
			('A','ACTIVE'),
			('C','COMPLETE'),
		)
	pId = models.IntegerField(primary_key=True)
	tId = models.ForeignKey(Teacher)
	teamSize = models.IntegerField()
	projectName = models.CharField(max_length=1024)
	domainName = models.CharField(max_length=255)
	synopsis = models.TextField()
	status = models.CharField(max_length=1,choices=STATUS)

class ProposedProject(models.Model):
	PROPOSAL = (
			('S','STUDENT'),
			('P','PROFESSOR'),
		)
	ppId = models.AutoField(primary_key=True)
	tId = models.ForeignKey(Teacher)
	teamSize = models.IntegerField()
	projectName = models.CharField(max_length=1024)
	domainName = models.CharField(max_length=255)
	synopsis = models.TextField()
	choiceOfProposal = models.CharField(max_length=1,choices=PROPOSAL)

class DeptsEligible(models.Model):
	ppId = models.ForeignKey(ProposedProject)
	deptName = models.CharField(max_length=255)

	class meta:
		unique_together = (("ppId","deptName"),)

class ProjectMembers(models.Model):
	pId = models.ForeignKey(Projects)
	usn = models.ForeignKey(stuModels.Student)

	class meta:
		unique_together = (("pId","usn"),)

class StudentsApplied(models.Model):
	ppId = models.ForeignKey(ProposedProject)
	usn = models.ForeignKey(stuModels.Student)
	synopsis = models.TextField()

	class meta:
		unique_together = (("ppId","usn"),)

class areaOfInterest(models.Model):
	tId = models.ForeignKey(Teacher)
	aoi = models.CharField(max_length=100)

	class meta:
		unique_together = (("tId","aoi"),)

class gitlinks(models.Model):
	pId = models.ForeignKey(Projects,primary_key=True)
	link = models.CharField(max_length=255)


