from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import *

# Create your views here.
def index(request):
    response = HttpResponse()
    response.write("<h1>Welcome</h1>")
    response.write("This is the polls app")
    return response
def showProduct(request):
    listAdmin = product.Product.objects.all()
    numberCart = cart.Cart.objects.count()
    query1 = 'SELECT * FROM product WHERE category_id = 4 or category_id = 5 or category_id = 6 '
    query2 = 'SELECT * FROM product WHERE category_id = 7 or category_id = 8 or category_id = 9 '
    query3 = 'SELECT * FROM product WHERE category_id = 10 or category_id = 11'
    listProduct1 = product.Product.objects.raw(query1)
    listProduct2 = product.Product.objects.raw(query2)
    listProduct3 = product.Product.objects.raw(query3)

    template = loader.get_template('frontend/home.html')
    context = {
        'latest_question_list': listAdmin,
        'numberCart' : numberCart,
        'listProduct1': listProduct1,
        'listProduct2': listProduct2,
        'listProduct3': listProduct3,
    }
    return HttpResponse(template.render(context, request))
