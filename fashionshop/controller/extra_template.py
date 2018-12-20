from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from ..models import *

# Create your views here.
def showQuestionGuide(request):
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('extra_template/cau-hoi-thuong-gap.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))

def showSizeGuide(request):
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('extra_template/huong-dan-tinh-size.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))

def showPolicyGuide(request):
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('extra_template/chinh-sach-doi-tra.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))

def showStorageGuide(request):
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('extra_template/huong-dan-bao-quan.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))

def showPaymentGuide(request):        
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('extra_template/huong-dan-thanh-toan.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))

def showDeliveryGuide(request):        
    numberCart = cart.Cart.objects.count()
    template = loader.get_template('extra_template/chinh-sach-giao-hang.html')
    context = {
        'numberCart' : numberCart,
    }
    return HttpResponse(template.render(context, request))
