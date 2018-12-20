from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import *

# Create your views here.
def showProductDetail(request, product_id):
    resultProduct = product.Product.objects.filter(id = product_id)
    subImage = image.Image.objects.filter(id = product_id)
    numberCart = cart.Cart.objects.count()

    for a in subImage:
        link = a.image_link
        subLink = link.split(',')

    for a in resultProduct:
        productDetail = a
        color = a.color.split(',')

    template = loader.get_template('frontend/product.html')
    context = {
        'productDetail': productDetail,
        'numberCart' : numberCart,
        'subLink' : subLink,
        'color' : color,
    }
    return HttpResponse(template.render(context, request))
