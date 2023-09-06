from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from pmsMain.models import Student,Team,Mentor
from .models import Project
from django.urls import reverse
# Create your views here.
def index(request,roll_no):
    student_user = Student.objects.filter(roll_no=roll_no).first()
    if request.method == 'POST':
        
        roll_number=request.POST.get('rollno')
        try:
            student_instance = Student.objects.get(roll_no=roll_number)
        except Student.DoesNotExist:
            error_message = "Invalid roll number for project creator."
            return render(request, 'pmsStudent/index.html', {'student': student_user, 'error_message': error_message})

        project_name=request.POST.get('projectName')

        team_member1=request.POST.get('member1','')
        team_member2=request.POST.get('member2','')
        team_member3=request.POST.get('member3','')
        team_member4=request.POST.get('member4','')

        try:
            student_member1 = Student.objects.get(roll_no=team_member1)
            student_member2 = Student.objects.get(roll_no=team_member2)
            student_member3 = Student.objects.get(roll_no=team_member3)
            student_member4 = Student.objects.get(roll_no=team_member4)
        except Student.DoesNotExist:
            error_message = "Invalid roll numbers for team members."
            return render(request, 'pmsStudent/index.html', {'student': student_user, 'error_message': error_message})

        project_desc=request.POST.get('projectDescription','')
        github_link=request.POST.get('githubLink','')
        project_type=request.POST.get('projectType','')
        semester_values = {}
        for i in range(1, 9):
            key = f'semester{i}' 
            value = request.POST.get(key, '')  
            if value=='on':
                semester_values[key] = value
        
        start_date=request.POST.get('startDate','')
        end_date=request.POST.get('endDate','')
        roll=[]
        roll_numbers = Student.objects.values('roll_no')
        for j in roll_numbers:
            roll.append(j['roll_no'])
            
        project_status=request.POST.get('projectStatus')
        if (team_member1 not in roll) or (team_member2 not in roll) or (team_member3 not in roll) or (team_member4 not in roll) or (roll_number not in roll):
            error_message = "Invalid roll numbers for team members or project creator."
            student_roll = Student.objects.get(roll_no=roll_no)
            projects_p = Project.objects.filter(project_status='P', roll_no=student_roll)
            projects_o = Project.objects.filter(project_status='O', roll_no=student_roll)
            return render(request, 'pmsStudent/index.html', {'student': student_user, 'error_message': error_message, 'projects_p':projects_p, 'projects_o':projects_o})
        projects = Project(
        roll_no=student_instance,
        project_name=project_name,
        member1=student_member1,
        member2=student_member2,
        member3=student_member3,
        member4=student_member4,
        project_description=project_desc,
        github_link=github_link,
        project_type=project_type,
        project_semesters=semester_values,
        start_date=start_date,
        end_date=end_date,
        project_status=project_status,
        )
        projects.save()
    

    # retrieval of data from database and show on web page code below
    student_roll = Student.objects.get(roll_no=roll_no)
    projects_p = Project.objects.filter(project_status='P', roll_no=student_roll)
    # print(projects_p)

    projects_o = Project.objects.filter(project_status='O', roll_no=student_roll)
    # print(projects_o)
        
    return render(request, 'pmsStudent/index.html', {'student': student_user,'projects_p':projects_p, 'projects_o':projects_o})