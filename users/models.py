from django.db import models

# Create your models here.


class Student(models.Model):
    name = models.CharField(default='demo',max_length=200)
    photo = models.ImageField(upload_to='images/',null=True,blank=True)