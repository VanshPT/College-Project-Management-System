from django.shortcuts import render
from django.http import HttpResponse
from pmsMain.models import Mentor
# Create your views here.
def index(request,roll_no):
    team = Mentor.objects.filter(roll_no=roll_no).first()
    return render(request,'pmsMentor/index.html')