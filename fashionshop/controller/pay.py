from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection
from django.template import loader
from ..models import *

# Create your views here.
def index(request):
    numberCart = cart.Cart.objects.count()
    listAdmin = product.Product.objects.all()
    # This is way join 2 table in Django
    # The result of cursor.fetchall() is a tupple not is a object 
    cursor = connection.cursor()
    cursor.execute('''SELECT * FROM product,cart WHERE product.id = cart.product_id''')
    listCart = cursor.fetchall()

    # Get sum price of build
    sumPrice = 0
    for a in listCart:
        sumPrice = int(sumPrice) + int(a[19])

    template = loader.get_template('frontend/pay.html')
    context = {
        'numberCart': numberCart,
        'sumPrice': sumPrice,
        'listCart': listCart,
        'sumPrice': sumPrice,
    }
    return HttpResponse(template.render(context, request))