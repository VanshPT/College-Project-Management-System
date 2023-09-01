from django.urls import path
from . import views
urlpatterns = [
    path("<str:user_name>/",views.index,name="TeamHome"),
]