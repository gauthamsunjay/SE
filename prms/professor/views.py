from django.shortcuts import render, render_to_response, RequestContext
from django.http import JsonResponse, HttpResponse
from models import *
import json

# Create your views here.

def profSignUp(request):
	return render_to_response("ProfSignUp.html",context_instance=RequestContext(request))

def profValues(request):
	if request.method=="POST":
		name = request.POST.get("name")
		email = request.POST.get("email")
		deptName = request.POST.get("deptName")
		domainName = request.POST.get("domainName")
		teacher = Teacher(name=name,email=email,domainName=domainName,deptName=deptName)
		teacher.save()
	return render(request,'proposeProject.html')

def proposeProject(request):
	details = []
	if request.method=="POST":
		synopsis = ""
		projName = request.POST.get("pName")
		domainName = request.POST.get("dName")
		teamSize = int(request.POST.get("size"))
		choice = request.POST.get("choiceOfProp")
		if(choice=="Prof"):
			synopsis = request.POST.get("synopsis")

		proj =	ProposedProject(teamSize = teamSize, projectName = projName, domainName = domainName, synopsis = synopsis, choiceOfProposal = choice)
		proj.save()
		details.append(proj.pId)
		details.append(projName)
		details.append(domainName)
		details.append(teamSize)
		details.append(choice)
		details.append(synopsis)

	return render(request,"projects.html",{"details":details,})

def members(request):
	if request.method == "POST" and request.is_ajax():
		pId = int(request.POST.get('data'))
		mem = ProjectMembers.objects.filter(pId=pId)
		usns = [m.usn for m in mem]
		members = [u.name for u in usns]
		mems = {"members":members}
		print mems
		return JsonResponse(mems)


def getGitPro(request):
	if request.method=="POST" and request.is_ajax():
		pId = int(request.POST.get('data'))
		try:
			l = (gitlinks.objects.get(pId=pId)).link
		except:
			l = ""
		link = {"link":l}
		print link
		return JsonResponse(link) 

def setGitPro(request):
	if request.method=="POST" and request.is_ajax():
		data = json.loads(request.POST.get("data"))
		pId = int(data["pId"])
		link = data["link"]
		p = Projects.objects.get(pId=pId)
		l = gitlinks(pId=p,link=link)
		l.save()
		return HttpResponse("Saved")

