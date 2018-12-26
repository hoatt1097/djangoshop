from django.shortcuts import render
from django.http import HttpResponse
from django.core.mail import send_mail
from django.conf import settings
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

def sendMail(request):
    email = request.GET.get('email')
    name = request.GET.get('name')
    phone = request.GET.get('phone')
    address = request.GET.get('address')
    sum_price = request.GET.get('sum_price')

    subject = 'Thank you for registering to our site'
    message = 'Bạn đã đặt mua hàng tại ShopFashion \n' + \
            'Với thông tin: \n' + \
            'Tên: ' + name + '\n' +\
            'Số ĐT: ' + phone + '\n' +\
            'Email: ' + email + '\n' +\
            'Address: ' + address + '\n' +\
            'Tổng tiền: ' + sum_price + ' VNĐ \n' +\
            'Cửa hàng sẽ gọi điện thoại xác nhận sau 15 phút. Xin cảm ơn!'
    email_from = settings.EMAIL_HOST_USER
    recipient_list = [email,]
    send_mail( subject, message, email_from, recipient_list )

    cart.Cart.objects.all().delete()
    response = HttpResponse()
    response.write("Ok")
    return response
