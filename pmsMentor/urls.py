from django.urls import path
from . import views
from pmsMain.models import Mentor
urlpatterns = [
    path("<str:roll_no>/",views.index,name="MentorHome"),
]