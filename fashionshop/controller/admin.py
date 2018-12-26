from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import *

# Create your views here.
def showProduct(request):
    listAdmin = product.Product.objects.all()
    
    template = loader.get_template('admin/listproducts.html')
    context = {
        'listAdmin': listAdmin,
    }
    return HttpResponse(template.render(context, request))
