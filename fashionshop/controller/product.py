from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import *

# Create your views here.
def showProductDetail(request, product_id):
    resultProduct = product.Product.objects.filter(id = product_id)
    numberCart = cart.Cart.objects.count()

    template = loader.get_template('frontend/product.html')
    context = {
        'resultProduct': resultProduct,
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))
