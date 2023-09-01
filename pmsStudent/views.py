from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from pmsMain.models import Student,Team,Mentor
from django.urls import reverse
# Create your views here.
def index(request,roll_no):
    student_user = Student.objects.filter(roll_no=roll_no).first()
    return render(request,'pmsStudent/index.html')