from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection
from django.template import loader
from ..models import *

# Create your views here.
def index(request):
    numberCart = cart.Cart.objects.count()

    cursor = connection.cursor()
    cursor.execute('''SELECT DISTINCT brand FROM product''')
    listBrand = cursor.fetchall()

    template = loader.get_template('frontend/category.html')
    context = {
        'listBrand' : listBrand,
    }
    return HttpResponse(template.render(context, request))
