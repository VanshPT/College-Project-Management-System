# Generated by Django 4.1 on 2023-09-02 20:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("pmsMain", "0009_alter_student_department"),
    ]

    operations = [
        migrations.AlterField(
            model_name="student",
            name="department",
            field=models.CharField(
                choices=[
                    ("COMPS", "Computer Engineering"),
                    ("AIDS", "Artificial Intelligence and Data Science"),
                    ("MECH", "Mechanical Engineering"),
                    ("ECS", "Electronics and Computer Science"),
                    ("PROD", "Production Engineering"),
                ],
                default="",
                max_length=10,
            ),
        ),
        migrations.AlterField(
            model_name="team",
            name="student_1",
            field=models.ForeignKey(
                default="",
                on_delete=django.db.models.deletion.CASCADE,
                to="pmsMain.student",
            ),
        ),
    ]