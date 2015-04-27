from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

admin.autodiscover()


urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'prms.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
	#url(r'^$', 'student.views.studentLogin', name='studentLogin'),
	#url(r'^auth$', 'student.views.StudentAuth', name='studentAuth'),
	url(r'^$', 'professor.views.profSignUp'),
	url(r'^profValues$', 'professor.views.profValues', name='profValues'),
	url(r'^proposeProject$', 'professor.views.proposeProject', name='proposeProject'),
	#copied from SE folder
	url(r'^login/$', 'student.views.login_user',name='login'),
	url(r'^resp$', 'student.views.login_response',name='verify'),
	url(r'^signup$', 'student.views.user_signup',name='signup'),
	url(r'^versgn$', 'student.views.signup_student',name='verify-signup-stud'),
	url(r'^versgn2$', 'student.views.signup_teacher',name='verify-signup-teach'),
	url(r'^profile$', 'student.views.profile',name='profile'),
	url(r'^index$', 'student.views.index',name='index'),
	url(r'^form$', 'student.views.form',name='form'),
	url(r'^notification$', 'student.views.notification',name='notification'),
	url(r'^table$', 'student.views.table',name='table'),
	url(r'^table_teacher$', 'student.views.table_teacher',name='table_teacher'),
	url(r'^tour$', 'student.views.tour',name='tour'),
	#url(r'^ui$', 'student.views.ui',name='ui'),
	url(r'^login3$', 'student.views.logout',name='logout'),
	url(r'^getproject$', 'student.views.getproject',name='getproject'),
	url(r'^search$', 'student.views.search',name='search'),
	url(r'^projects_home$', 'student.views.projects_home',name='projects_home'),
	url(r'^checkgit$', 'student.views.checkgit',name='checkgit'),
	url(r'^archive$', 'student.views.archive',name='archive'),
	url(r'^create$', 'student.views.create',name='create'),
	url(r'^create_project$', 'student.views.create_project',name='create_project'),
	url(r'^project_list$', 'student.views.project_list',name='project_list'),
	url(r'^teacherProf$', 'student.views.teacherProf',name='teacherProf'),
	url(r'^index_teacher$', 'student.views.index_teacher',name='index_teacher'),
	url(r'^getproject_teacher$', 'student.views.getproject_teacher',name='getproject_teacher'),
	url(r'^members$','professor.views.members',name='members'),
	url(r'^fileUpload/$','repo.views.fileUpload',name='fileUpload'),
	url(r'^download/$','repo.views.download',name='download'),
	url(r'^\d*\/.*\..*/$','repo.views.downloadFile',name='downloadFile'),
	url(r'^gitStu/$', 'student.views.gitlink',name='gitStu'),
	url(r'^gitTeach/$', 'student.views.gitlink',name='gitTeach'),
	url(r'^getGitPro$','professor.views.getGitPro',name='getGitPro'),
	url(r'^setGitPro$','professor.views.setGitPro',name='setGitPro'),
	url(r'^stuFormSubmit/$','student.views.stuFormSubmit',name='stuFormSubmit'),
	url(r'^studentsapplied$','student.views.studentsapplied',name='studentsapplied'),
	url(r'^guest$', 'student.views.guest',name='guest'),
	#url(r'^teacherProf$', 'student.views.teacherProf',name='teacherProf'),
	#url(r'^ui$', 'student.views.profile',name='profile'),
)
urlpatterns += staticfiles_urlpatterns()
