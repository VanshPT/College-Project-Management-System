# Generated by Django 4.1 on 2023-09-05 11:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("pmsStudent", "0002_alter_project_member1_alter_project_member2_and_more"),
    ]

    operations = [
        migrations.AddField(
            model_name="project",
            name="project_status",
            field=models.CharField(
                blank=True,
                choices=[("O", "Ongoing"), ("P", "Previous")],
                max_length=1,
                null=True,
            ),
        ),
    ]