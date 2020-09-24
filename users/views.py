from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets

from users.models import Student
from users.serializers import StudentSerializer


class StudentViewset(viewsets.ModelViewSet):
    serializer_class = StudentSerializer
    queryset = Student.objects.all()