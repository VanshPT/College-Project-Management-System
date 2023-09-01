from django.shortcuts import render
from django.http import HttpResponse
from pmsMain.models import Student,Team,Mentor
# Create your views here.
def index(request,user_name):
    team = Team.objects.filter(user_name=user_name).first()
    return render(request,'pmsTeam/index.html')