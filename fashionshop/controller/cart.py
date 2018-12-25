from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from django.db import connection
from django.template import loader
from ..models import *

# Create your views here.
def addCart(request):
    count = cart.Cart.objects.count()
    id_product = request.GET.get('id_product')
    color_choose = request.GET.get('color_choose')
    size_choose = request.GET.get('size_choose')
    amount = request.GET.get('amount')
    price = request.GET.get('price')
    sum_price = int(amount) * int(price)
    try: 
        newCart = cart.Cart.objects.get(product_id = id_product, color_choose = color_choose, size_choose = size_choose)
        a = newCart.amount
        b = newCart.sum_price
        newCart.amount = int(a) + int(amount)
        newCart.sum_price = int(b) + int(sum_price)
        newCart.save()
    except Cart.DoesNotExist:   
        data = cart.Cart.objects.create(product_id = id_product,\
                                    color_choose = color_choose,\
                                    size_choose = size_choose,\
                                    amount = amount,\
                                    sum_price = sum_price)
    except Employee.MultipleObjectsReturned:
        data = ""

    response = HttpResponse()
    response.write("Ok")
    return response
    
def showCart(request):
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

    template = loader.get_template('frontend/cart.html')
    context = {
        'numberCart': numberCart,
        'sumPrice': sumPrice,
        'listCart': listCart,
        'sumPrice': sumPrice,
    }
    return HttpResponse(template.render(context, request))

def deleteCart(request):
    id = request.GET.get('id')
    newCart = cart.Cart.objects.get(id = id)
    newCart.delete()
    response = HttpResponse()
    response.write("Bạn đã xóa thành công")
    return response