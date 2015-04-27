import datetime
from django.shortcuts import render
from django.http import *
from django.shortcuts import render_to_response
from django.template import RequestContext
from student.models import *
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login
from student.models import *
from professor.models import *
from django.shortcuts import redirect
from django.contrib import messages
from repo.models import Files
from repo.forms import uploadFile
from django.core.exceptions import ObjectDoesNotExist

class PasswordNoMatchException(Exception):
	def __init__(self):
		pass


def login_user(request):
	return render_to_response('login.html',context_instance=RequestContext(request))

def login_response(request):
	#acctype tells us if it is a student/teacher
	flag = 0
	#print("Inside login response")
	loggedin = request.session.get('loggedin')
	print("loggedin=",loggedin)
	if(loggedin==1):
		return HttpResponseRedirect('/index')
	
	if request.method=="POST":
		username = request.POST.get('username')
		password = request.POST.get('password')
		print("username=",username)
		print("password=",password)
		#student = Student.objects.all()
		#teacher = Teacher.objects.all()
		#user = Users.objects.all();
		user = ""
		acctype = ""
		try:
			user = Users.objects.get(email = username)
			acctype = user.accountType

		except ObjectDoesNotExist:
			messages.error(request,"Invalid Username or Password!")
			return redirect('/login',error="Invalid Username or Password!")

		try:
			if password != user.password:
				raise PasswordNoMatchException

		except PasswordNoMatchException:
			print "passwordExcep"
			messages.error(request,"Invalid Username or Password!")
			return redirect('/login',error="Invalid Username or Password!")

		#domain = []
		#projects = []

		'''for i in dom:
			domain.append(i.domain_name)
		for i in proj:
			projects.append(i.project_name)'''
		request.session.flush()
		#request.session.modified = True
		request.session['loggedin'] = 1
		request.session['acctype'] = acctype
		request.session['email'] = username
		#if user is a student
		if(acctype == 'S'):
			student = Student.objects.get(email = user)
			nam = student.name
			sem = student.sem
			usn = student.usn
			#email = i.student_email
			phone = student.phone
			dept = student.deptName
			cgpa = student.cgpa
			
			try:
				link = (Gitlinks.objects.get(email=username)).link
			except:
				link = ""

			request.session['s_name'] = nam
			request.session['s_usn'] = usn
			request.session['s_sem'] = sem
			request.session['s_phone'] = phone
			request.session['s_dept'] = dept
			request.session['s_cgpa'] = cgpa
			

			return render(request,'index.html',{"name":nam,"gitRepo":link})	
		#if user is a professor	
		elif(acctype == 'T'):
			teacher = Teacher.objects.get(email = user)
			nam = teacher.name
			domainName = teacher.domainName
			deptName = teacher.deptName
			#email = i.student_email
			tid = teacher.tId
			phone = teacher.phone
			#addr = i.address 		

			request.session['t_id'] = tid			
			request.session['t_name'] = nam
			request.session['t_domainName'] = domainName
			request.session['t_deptName'] = deptName
			request.session['t_phone'] = phone
			return render(request,'index_teacher.html',{"name":nam,})

def guest(request):
	projects = []
	pro = Projects.objects.all()
	print len(pro)
	#teach = Teacher.objects.get(tId = pro.tId)
	for i in pro:
		dic = {}
		teach = Teacher.objects.get(tId = i.tId_id)
		dic["teach"] = teach.name
		dic["teamSize"] = i.teamSize
		dic["projectName"] = i.projectName
		dic["domainName"] = i.domainName
		dic["synopsis"] = i.synopsis
		dic["status"] = i.status
		projects.append(dic)
		#print("count=",count)			
	return render(request,'list_guest.html',{"projects":projects})
	#return render(request,'guest.html',{"name":"guest",})

def signup_student(request):
	if request.method=="POST":

		s_usn = request.POST.get('usn')
		s_name = request.POST.get('name')
		s_email = request.POST.get('email')
		s_sem = request.POST.get('sem')
		s_phone = request.POST.get('phone')
		s_dept = request.POST.get('dept')
		s_password = request.POST.get('password')
		#s_acctype = request.POST.get('accountType')
		names = []
		usns = []
		
		user = Users(email = s_email,password = s_password,accountType = "S")
		user.save()
		x = Users.objects.get(email = s_email)
		stud = Student(usn=s_usn, name=s_name, sem=s_sem, phone=s_phone, deptName = s_dept)
		#stud.save()   
		stud.email = x
		stud.save()  
		
	
		'''d = Domain("1","mse","cse")
		d.save()
		d = Domain("2","ccbd","cse")
		d.save()
		d = Domain("3","signals","ece")
		d.save()

		p = Project("1","prms","A project for managing projects","10")
		p.save()
		p = Project("2","abcd","A project for blind","5")
		p.save()'''
		
		x = Student.objects.filter(name=s_name) 
		for i in x:
			print(type(i))
			usns.append(i.usn)			
		return render(request,'confirm.html',{"usn":usns,})


def signup_teacher(request):
	if request.method=="POST":
		t_name = request.POST.get('name')
		t_id = request.POST.get('id')
		t_dept = request.POST.get('departmentName')
		t_email = request.POST.get('email')
		t_phone = request.POST.get('phone')
		t_password = request.POST.get('password')
		t_domain = request.POST.get('domainName')
		names = []
		usns = []
		
		user = Users(email = t_email,password = t_password,accountType = "T")
		user.save()
		x = Users.objects.get(email = t_email)	
		teach = Teacher(name=t_name, tId=t_id , domainName=t_domain, deptName=t_dept,phone = t_phone)    
		teach.email = x 
		teach.save()
		

		'''d = Domain("1","mse","cse")
		d.save()
		d = Domain("2","ccbd","cse")
		d.save()
		d = Domain("3","signals","ece")
		d.save()

		p = Project("1","prms","A project for managing projects","10")
		p.save()
		p = Project("2","abcd","A project for blind","5")
		p.save()'''
		
		x = Teacher.objects.filter(name=t_name) 
		for i in x:
			print(type(i))
			usns.append(i.deptName)			
		return render(request,'confirm.html',{"usn":usns,})

def user_signup(request):
	return render_to_response('signup.html',context_instance=RequestContext(request))


def profile(request):
	
	if request.method=="GET":
		#try:
		loggedin = request.session.get('loggedin')
		if(loggedin == None):
			return HttpResponseRedirect('/login')
		
		#except:
			#messages.error(request,"Please Login First!")
		acctype = request.session['acctype'];
	#profile for student
	'''loggedin = request.session.get('loggedin')
	print("loggedin1=",loggedin)
	if(loggedin == 0):
		return render(request,'nologin.html',{"answer":"Loggedin as Teacher!",})
	else:'''
	if(acctype == 'S'):
		s_name = request.session.get('s_name')
		s_usn = request.session.get('s_usn')
		s_sem = request.session.get('s_sem')
		s_phone = request.session.get('s_phone')
		s_dept = request.session.get('s_dept')
		s_cgpa = request.session.get('s_cgpa')
		'''print("name=",s_name)
		print("usn=",s_usn)
		print("sem=",s_sem)
		print("phone=",s_phone)'''
		return render(request,'ui.html',{"name":s_name,"usn":s_usn,"sem":s_sem,"phone":s_phone,"dept":s_dept,"cgpa":s_cgpa,})

	#profile for teacher
	elif(acctype == 'T'):
		tid = request.session.get('t_id');	
		area = areaOfInterest.objects.get(tId = tid)
		t_aoi = area.aoi
		t_name = request.session.get('t_name')
		t_email = request.session.get('email')
		t_dept = request.session.get('t_deptName')
		t_phone = request.session.get('t_phone')
		t_domain = request.session.get('t_domainName')
		
		return render(request,'teacherProf.html',{"name":t_name,"domain":t_domain,"dept":t_dept,"phone":t_phone,"email":t_email,"aoi":t_aoi})
	
def index(request):
	#This is the home page where students can apply for the projects
	if request.method=="GET":
		#try:
		loggedin = request.session.get('loggedin')
		if(loggedin == None):
			return HttpResponseRedirect('/login')
		#except:
			#messages.error(request,"Please Login First!")
					
	acctype = request.session.get('acctype')
	print("acctype=",acctype)
	'''loggedin = request.session.get('loggedin')
	print("loggedin2=",loggedin)
	if(loggedin == 0):
		return render(request,'nologin.html',{"answer":"Loggedin as Teacher!",})
	else:'''
	if(acctype == 'S'):
		domain = []
		projects = []
		s_dept = request.session.get('s_dept')
		nam = request.session.get('s_name')
		student = Student.objects.all()
		teacher = Teacher.objects.all()
		#pp = ProposedProject()
		dep_eligible = DeptsEligible.objects.filter(deptName = s_dept)
		#print(dep_eligible.ppId.ppId)
		for i in dep_eligible:
			print("i.ppid=",i.ppId.ppId)
			x = ProposedProject.objects.filter(ppId = i.ppId.ppId)
			print("x=",x)
			for j in x:
				domain.append(j.domainName)
				projects.append(j.projectName)
		print("domain=",domain)
		print("project=",projects)

		#usn = request.session.get('s_usn')
	#elif(acctype == 'T'):

		return render(request,'index.html',{"domain":domain,"projects":projects,"name":nam,})

def form(request):
	if request.method=="GET":
		#try:
		loggedin = request.session.get('loggedin')
		if(loggedin == None):
			return HttpResponseRedirect('/login')
	return render_to_response('form.html',context_instance=RequestContext(request))

def notification(request):
	return render_to_response('notification.html',context_instance=RequestContext(request))

def table(request):
	return render_to_response('table.html',context_instance=RequestContext(request))

def table_teacher(request):
	return render_to_response('table_teacher.html',context_instance=RequestContext(request))

def tour(request):
	return render_to_response('tour.html',context_instance=RequestContext(request))

def logout(request):
	request.session.flush()
	return HttpResponseRedirect('/login')

def getproject(request):
	form = uploadFile() #fileUpload for repo
	s_usn = request.session.get('s_usn')
	#pro = Projects.objects.all()
	print(s_usn)
	stu = ProjectMembers.objects.filter(usn=s_usn)
	pids = []
	projects = []
	#stu = ProjectMembers.objects.all()
	for i in stu:
		print(i.pId.pId)
		pids.append(i.pId.pId)
	#print(pids)
	for i in pids:
		dic = {}
		pro = Projects.objects.get(pId=i)
		teach = Teacher.objects.get(tId = pro.tId.tId)
		dic["pId"] = i
		dic["teach"] = teach
		dic["teamSize"] = pro.teamSize
		dic["domainName"] = pro.domainName
		dic["projectName"] = pro.projectName
		dic["synopsis"] = pro.synopsis
		dic["status"] = pro.status
		projects.append(dic)
	#print("count=",count)			
	return render(request,'table.html',{"projects":projects,"form":form})
	#pro = Projects.objects.all()

def search(request):
	t_id = request.session.get('t_id')
	acctype = request.session.get('acctype')
	if request.method=="POST":
		search = request.POST.get('search')
		category = request.POST.get('category')
		#print("category=",category)
		#print("Inside search")
		if(category == 'student'):
			projects = []
			student = Student.objects.filter(name__icontains = search)
			for i in student:
				#print(i.usn)
				members = ProjectMembers.objects.filter(usn = i.usn)
				for j in members:
					#print(j.pId.pId)
					pro = Projects.objects.filter(pId = j.pId.pId)
					for k in pro:
						dic={}
						teach = Teacher.objects.filter(tId = k.tId.tId)
						dic["projectName"] = k.projectName
						dic["stuName"] = i.name
						dic["domainName"] = k.domainName
						dic["synopsis"] = k.synopsis
						dic["status"] = k.status
						for teacher in teach:
							dic["teach"] = teacher.name
			
						projects.append(dic)

			if(acctype == 'S'):
				return render(request,'searchresults.html',{"projects":projects,"student":"Y"})
			else:
				return render(request,'searchresults_teacher.html',{"projects":projects,"student":"Y"})
	
		else:
			projects = []
			stu = Projects.objects.filter(projectName__icontains = search)
		
			for i in stu:
				dic={}
				teach = Teacher.objects.filter(tId = i.tId.tId)
			
				dic["projectName"] = i.projectName
				dic["domainName"] = i.domainName
				dic["synopsis"] = i.synopsis
				dic["status"] = i.status
				for i in teach:
					dic["teach"] = i.name
			
				projects.append(dic)
			#for i in projects:
				#print(i)
		
			if(acctype == 'S'):
				return render(request,'searchresults.html',{"projects":projects,"student":"N"})
			else:
				return render(request,'searchresults_teacher.html',{"projects":projects,"student":"N"})


def projects_home(request):
	count=0
	pids = []
	teamsize = []
	projectName = []
	domainName = []
	synopsis = []
	status = []
	teacher = []
	#stu = ProjectMembers.objects.filter(usn=s_usn)
	stu = ProjectMembers.objects.all()
	for i in stu:
		print(i.pId.pId)
		pids.append(i.pId.pId)
	#print(pids)
	for i in pids:
		pro = Projects.objects.filter(pId=i)
		
		#for j in teach:
			#teacher.append(j.name)
		for k in pro:
			count+=1
			#print("tid=",k.tId.tId)
			teach = Teacher.objects.filter(tId = k.tId.tId)
			teamsize.append(k.teamSize)
			projectName.append(k.projectName)
			domainName.append(k.domainName)
			synopsis.append(k.synopsis)
			status.append(k.status)
			for j in teach:
				teacher.append(j.name)
	return render(request,'projects_home.html',{"projectName":projectName,"synopsis":synopsis,"status":status,})

def checkgit(request):
	pids = []
	s_name = request.session.get('s_name')
	stu = ProjectMembers.objects.all()
	for i in stu:
		print(i.pId.pId)
		pids.append(i.pId.pId)
	#print(pids)
	for i in pids:
		git = gitlinks.objects.filter(pId=i)
		for j in git:
			if(j.link!=""):
				return render(request,'create_link.html',{"link":"enter link"})
			else:
				gitlink = j.link
				return render(request,'login.html',{"link":"enter link"})

'''def archive(request):
	s_usn = request.session.get('s_usn')
	#pro = Projects.objects.all()
	print(s_usn)
	count=0
	pids = []
	members = []
	projectName = []
	teacher = []
	stu = ProjectMembers.objects.filter(usn=s_usn)
	#stu = ProjectMembers.objects.all()
	for i in stu:
		print(i.pId.pId)
		pids.append(i.pId.pId)
	#print(pids)
	for i in pids:
		pro = Projects.objects.filter(pId=i)
		
		#for j in teach:
			#teacher.append(j.name)
		for k in pro:
			count+=1
			#print("tid=",k.tId.tId)
			teach = Teacher.objects.filter(tId = k.tId.tId)
			projectName.append(k.projectName)
			for j in teach:
				teacher.append(j.name)
	print("count=",count)			
	return render(request,'table.html',{"pid":pids,"teamsize":teamsize,"projectName":projectName,"domainName":domainName,"synopsis":synopsis,"status":status,"count":count,"teacher":teacher,})'''
def archive(request):
	s_usn = request.session.get('s_usn')
	pids = []
	names = []
	mems = []
	projectName = []
	#pro = Projects.objects.all()
	print(s_usn)
	pid = Projects.objects.all()
	for i in pid:
		pids.append(i)
		projectName.append(i.projectName)
	for i in pids:
		mem = ProjectMembers.objects.filter(pId = i)
		for j in mem:
			mems.append(j.usn)
	for i in mems:
		stu = Student.objects.filter(usn=i)
		names.append(stu.name)
	return render(request,'tour.html',{"pid":pids,"projectName":projectName,"teacher":teacher,"members":names,})

def create(request):
	return render(request,'teacherform.html',{"pid":"1",})

def create_project(request):
	if request.method=="POST":
		if request.POST.get('cs', True):
			cs = request.POST.get('cs')
			print("dept selected=",cs)

		if request.POST.get('is', True):
			ise = request.POST.get('is')
			print("dept selected=",ise)
		
		if request.POST.get('ee', True):
			ise = request.POST.get('is')
			print("dept selected=",ee)

		if request.POST.get('ec', True):
			ise = request.POST.get('is')
			print("dept selected=",ec)

		if request.POST.get('te', True):
			ise = request.POST.get('is')
			print("dept selected=",te)

		if request.POST.get('me', True):
			ise = request.POST.get('is')
			print("dept selected=",me)


		if request.POST.get('bt', True):
			ise = request.POST.get('is')
			print("dept selected=",bt)

		p_name = request.POST.get('name')
		p_size = request.POST.get('size')
		p_synopsis = request.POST.get('synopsis')
	return render(request,'confirm.html',{"name":p_name,"size":p_size,"synopsis":p_synopsis,"depts":depts,})

def project_list(request):
	acctype = request.session.get('acctype')
	
	projects = []
	pro = Projects.objects.all()
	print len(pro)
	#teach = Teacher.objects.get(tId = pro.tId)
	for i in pro:
		dic = {}
		teach = Teacher.objects.get(tId = i.tId_id)
		dic["pId"] = i.pId
		dic["teach"] = teach
		dic["teamSize"] = i.teamSize
		dic["projectName"] = i.projectName
		dic["domainName"] = i.domainName
		dic["synopsis"] = i.synopsis
		dic["status"] = i.status
		projects.append(dic)
		#print("count=",count)
	if(acctype=='S'):			
		return render(request,'list.html',{"projects":projects})
	else:
		return render(request,'list_teacher.html',{"projects":projects})

def teacherProf(request):
	return render(request,'teacherProf.html',{"projects":"p"})


def index_teacher(request):
	if request.method=="GET":
		#try:
		loggedin = request.session.get('loggedin')
		if(loggedin == None):
			return HttpResponseRedirect('/login')
		#except:
			#messages.error(request,"Please Login First!")
					
	acctype = request.session.get('acctype')
	print("acctype=",acctype)
	'''loggedin = request.session.get('loggedin')
	print("loggedin2=",loggedin)
	if(loggedin == 0):
		return render(request,'nologin.html',{"answer":"Loggedin as Teacher!",})
	else:'''
	if(acctype == 'T'):
		domain = []
		projects = []
		t_dept = request.session.get('t_deptName')
		t_nam = request.session.get('t_name')
		#student = Student.objects.all()
		#teacher = Teacher.objects.all()
		return render(request,'index_teacher.html',{"name":t_nam,})

def getproject_teacher(request):
	t_id = request.session.get('t_id')
	form = uploadFile() #fileUpload for repo
	pro = Projects.objects.filter(tId = t_id)
	pids = []
	projects = []
	for i in pro:
		#print(i.pId.pId)
		pids.append(i.pId)
	#print(pids)
	for i in pids:
		dic = {}
		pro = Projects.objects.get(pId=i)
		teach = Teacher.objects.get(tId = pro.tId.tId)
		dic["pId"] = i
		dic["teach"] = teach
		dic["teamSize"] = pro.teamSize
		dic["domainName"] = pro.domainName
		dic["projectName"] = pro.projectName
		dic["synopsis"] = pro.synopsis
		dic["status"] = pro.status
		projects.append(dic)
	#print("count=",count)			
	return render(request,'table_teacher.html',{"projects":projects,"form":form})

def gitlink(request):
	if request.method=="POST" and request.is_ajax():
		link = request.POST.get('data')
		email = Users.objects.get(email=request.session.get('email'))
		lin = Gitlinks(email=email,link=link)
		lin.save()
		return HttpResponse("Saved")


def stuFormSubmit(request):
	if request.method == "POST" and request.is_ajax():
		usn = request.session.get('s_usn')
		domainName = request.POST.get("domain").upper()
		deptName = request.POST.get("dept")
		app = stuDomainApp(usn_id=usn,domainName=domainName)
		app.save()
		return HttpResponse("Your response was recorded!")

def studentsapplied(request):
	students = []
	print("In sa:")
	domain = request.session.get('t_domainName')
	studs = stuDomainApp.objects.filter(domainName = domain)
	for stud in studs:	
		print stud.usn_id
		names = Student.objects.filter(usn = stud.usn_id)
		for nam in names:
			dic = {}
			dic["name"] = nam.name
			dic["deptName"] = nam.deptName
			dic["sem"] = nam.sem
			dic["cgpa"] = nam.cgpa
			students.append(dic)

	return render(request,'studentsapplied.html',{"students":students})