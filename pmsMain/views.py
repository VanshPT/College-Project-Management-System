from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from .models import Student,Team,Mentor
from django.urls import reverse
# Create your views here.
def index(request):
    return render(request,'pmsMain/index.html')

def login(request):
    if request.method == 'GET':
        username = request.GET.get('Username', '')
        password = request.GET.get('Password', '')
        message=""

        student_user = Student.objects.filter(roll_no=username, password=password).first()
        team = Team.objects.filter(user_name=username, password=password).first()
        mentor = Mentor.objects.filter(roll_no=username, password=password).first()

        if student_user:
            params = {
            'message': "",
        }
            return HttpResponseRedirect(f'/pmsStudent/{username}/')


        elif team:
            params = {
            'message': "",
        }
            return HttpResponseRedirect(f'/pmsTeam/{username}/')
        
        elif mentor:
            params = {
            'message': "",
        }
            return HttpResponseRedirect(f'/pmsMentor/{username}/')
        

        else:
            message = "Sorry! Try Again"
        params = {
            'message': message,
        }
        return render(request, 'pmsMain/login.html', params)