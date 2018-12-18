from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import admin

# Create your views here.
def index(request):
    response = HttpResponse()
    response.write("<h1>Welcome</h1>")
    response.write("This is the polls app")
    return response
def viewAdmin(request):
    listAdmin = admin.Admin.objects.all()
    template = loader.get_template('frontend/index.html')
    context = {
        'latest_question_list': listAdmin,
    }
    return HttpResponse(template.render(context, request))
