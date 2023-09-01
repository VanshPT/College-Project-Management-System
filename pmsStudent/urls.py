from django.urls import path
from . import views
urlpatterns = [
    path("<str:roll_no>/",views.index,name="StudentHome"),
]