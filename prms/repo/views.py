from django.shortcuts import render
from django.core.servers.basehttp import FileWrapper
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from .forms import uploadFile
import os
import professor.models as profModels
from .models import *
from mimetypes import guess_type

PATH = os.path.join(os.getcwd(),"Projects/")
# Create your views here.

def writeFile(f,path):
	print path
	with open(path,'wb+') as dest:
		for chunks in f.chunks():
			dest.write(chunks)


def fileUpload(request):
	if request.method=="POST" and request.is_ajax():
		form = uploadFile(request.POST,request.FILES)

		if form.is_valid():
			pid = request.POST.get("projectId")
			pId = profModels.Projects.objects.get(pId=pid)	#get pId from session

			if not os.path.exists(os.path.join(PATH,str(pId.pId))):
				os.makedirs(os.path.join(PATH,str(pId.pId)))

			path = os.path.join(PATH,str(pId.pId))
			path = os.path.join(path,request.FILES['file'].name)

			File = Files(pId=pId,filePath=path)
			try:
				writeFile(request.FILES['file'],path)
				string = request.FILES['file'].name
				File.save()
			except:
				string = "<p>File Was not uploaded Successfully</p>"
			return HttpResponse(string)

	else:
		form = uploadFile()

	return render(request,'uploadFile.html',{'form':form})

def download(request):
	if request.method=="POST" and request.is_ajax():
		pId = int(request.POST.get('data'))
		print pId
		F = Files.objects.filter(pId=pId) 
		files = []
		for f in F:
			files.append(f.filePath.split("/")[-1])
		fls = {"files":files}
		print fls
		return JsonResponse(fls)


def downloadFile(request):
	print request.get_full_path()
	fileName = request.get_full_path().split("/")[-2]
	pId = request.get_full_path().split("/")[-3]
	mime = guess_type(fileName)[0]
	path = os.path.join(PATH,pId)
	wrapper = FileWrapper(open(os.path.join(path,fileName)))
	response = HttpResponse(wrapper,content_type=mime)
	response['Content-Disposition'] = "attachment; filename=%s" %(fileName)

	return response








