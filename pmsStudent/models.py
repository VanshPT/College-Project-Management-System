from django.db import models
from pmsMain.models import Student

# Create your models here.
class Project(models.Model):
    project_id = models.AutoField(primary_key=True)
    roll_no = models.ForeignKey(Student, on_delete=models.CASCADE)
    project_name = models.CharField(max_length=100)
    member1 = models.ForeignKey(Student, related_name='member1_projects', on_delete=models.CASCADE ,null=True ,blank=True)
    member2 = models.ForeignKey(Student, related_name='member2_projects', on_delete=models.CASCADE ,null=True ,blank=True)
    member3 = models.ForeignKey(Student, related_name='member3_projects', on_delete=models.CASCADE ,null=True ,blank=True)
    member4 = models.ForeignKey(Student, related_name='member4_projects', on_delete=models.CASCADE ,null=True ,blank=True)
    project_description = models.TextField(max_length=1000)
    github_link = models.URLField(max_length=100)
    
    PROJECT_TYPE_CHOICES = [
        ('full_year', 'Full Year'),
        ('semester', 'Semester'),
        ('personal', 'Personal'),
    ]
    project_type = models.CharField(
        max_length=20,
        choices=PROJECT_TYPE_CHOICES,
    )
    
    project_semesters = models.CharField(max_length=50)
    start_date = models.DateField()
    end_date = models.DateField()
    PROJECT_STATUS_TYPES = [
        ('O', 'Ongoing'),
        ('P', 'Previous')
    ]
    project_status = models.CharField(
        max_length=1,
        choices=PROJECT_STATUS_TYPES,
        null=True,
        blank=True
    )

    def __str__(self):
        return self.project_name