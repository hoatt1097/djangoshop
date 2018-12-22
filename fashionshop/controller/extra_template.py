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

def showNewsFashion(request):        
    numberCart = cart.Cart.objects.count()

    query1 = 'SELECT * from news where group_id = 1 order by id desc'
    listNews = news.News.objects.raw(query1)

    template = loader.get_template('extra_template/tapchi-thoitrang.html')
    context = {
        'numberCart' : numberCart,
        'listNews' : listNews,
    }
    return HttpResponse(template.render(context, request))

def showNewsDetailFashion(request, groupid, newsid):        
    numberCart = cart.Cart.objects.count()

    query1 = '''SELECT * FROM group_news WHERE id = ''' + groupid
    group = group_news.GroupNews.objects.raw(query1)
    for a in group:
        groupDetail = a
    
    query2 = '''SELECT * FROM news WHERE id = ''' + newsid
    detail = news.News.objects.raw(query2)
    for a in detail:
        newsDetail = a

    query3 = 'SELECT * FROM news '
    newsOther = news.News.objects.raw(query3)

    template = loader.get_template('extra_template/chitiet-tapchi.html')
    context = {
        'numberCart' : numberCart,
        'groupDetail' : groupDetail,
        'newsDetail' : newsDetail,
        'newsOther' : newsOther,
    }
    return HttpResponse(template.render(context, request))
