from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from pmsMain.models import Student,Team,Mentor
from django.urls import reverse
# Create your views here.
def index(request,roll_no):
    if request.method == 'POST':
        
        roll_number=request.POST.get('roll_no','')
        project_name=request.POST.get('projectName','')
        team_member1=request.POST.get('member1','')
        team_member2=request.POST.get('member2','')
        team_member3=request.POST.get('member3','')
        team_member4=request.POST.get('member4','')
        project_desc=request.POST.get('projectDescription','')
        github_link=request.POST.get('githubLink','')
        project_type=request.POST.get('proj_type','')
        semester_values = {}
        for i in range(1, 9):
            key = f'semester{i}' 
            value = request.POST.get(key, '')  
            semester_values[key] = value
        start_date=request.POST.get('startDate','')
        end_date=request.POST.get('endDate','')
        print(roll_number)
        print(semester_values)
    student_user = Student.objects.filter(roll_no=roll_no).first()
    return render(request, 'pmsStudent/index.html', {'student': student_user})