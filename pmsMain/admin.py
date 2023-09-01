from django.contrib import admin
from .models import Student,Mentor,Team
# Register your models here.
admin.site.register(Student)
admin.site.register(Mentor)
admin.site.register(Team)