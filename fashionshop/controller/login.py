from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import *

# Create your views here.
def index(request):
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('frontend/login.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))
