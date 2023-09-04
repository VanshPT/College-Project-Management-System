from django.db import models

# Create your models here.
from django.db import models

class Student(models.Model):
    DEPARTMENT_CHOICES = [
        ('COMPS', 'Computer Engineering'),
        ('AIDS', 'Artificial Intelligence and Data Science'),
        ('MECH', 'Mechanical Engineering'),
        ('ECS', 'Electronics and Computer Science'),
        ('PROD', 'Production Engineering'),
    ]
    
    student_id = models.AutoField(primary_key=True)
    roll_no = models.CharField(max_length=10)
    password = models.CharField(max_length=15, default='')
    first_name = models.CharField(max_length=20, default='')
    last_name = models.CharField(max_length=20, default='')
    department = models.CharField(max_length=10, choices=DEPARTMENT_CHOICES, default='')
    batch = models.IntegerField(default=0)
    team = models.CharField(max_length=15,default="",null=True,blank=True)

    def __str__(self):
        return str(self.roll_no)

class Mentor(models.Model):
    DEPARTMENT_CHOICES = [
        ('COMPS', 'Computer Engineering'),
        ('AIDS', 'Artificial Intelligence and Data Science'),
        ('MECH', 'Mechanical Engineering'),
        ('ECS', 'Electronics and Computer Science'),
        ('PROD', 'Production Engineering'),
    ]
    
    mentor_id = models.AutoField(primary_key=True)
    roll_no = models.CharField(max_length=10)
    password = models.CharField(max_length=15, default='')
    first_name = models.CharField(max_length=20, default='')
    last_name = models.CharField(max_length=20, default='')
    department = models.CharField(max_length=10, choices=DEPARTMENT_CHOICES, default='COMPS')
    date_joined = models.DateField(default='1970-01-01')

    def __str__(self):
        return str(self.roll_no)

class Team(models.Model):
    team_id = models.AutoField(primary_key=True)
    team_name = models.CharField(max_length=20)
    user_name = models.CharField(max_length=20, unique=True)
    password = models.CharField(max_length=15, default='')
    student_1 = models.ForeignKey(Student, related_name='team_student_1', on_delete=models.CASCADE, null=True,blank=True)
    student_2 = models.ForeignKey(Student, related_name='team_student_2', on_delete=models.CASCADE, null=True,blank=True)
    student_3 = models.ForeignKey(Student, related_name='team_student_3', on_delete=models.CASCADE, null=True,blank=True)
    student_4 = models.ForeignKey(Student, related_name='team_student_4', on_delete=models.CASCADE, null=True,blank=True)
    mentor = models.ForeignKey(Mentor, related_name='Team_Mentor_Name', on_delete=models.CASCADE, null=True,blank=True)

    def __str__(self):
        return str(self.team_name)
    