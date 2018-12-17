from django.shortcuts import render
from django.http import HttpResponse
from .models import admin

# Create your views here.
def index(request):
    response = HttpResponse()
    response.write("<h1>Welcome</h1>")
    response.write("This is the polls app")
    return response
def viewAdmin(request):
    listAdmin = admin.Admin.objects.filter(id=1)
    return HttpResponse(listAdmin)
