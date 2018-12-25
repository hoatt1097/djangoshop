from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection
from django.template import loader
from ..models import *

# Create your views here.
def index(request, id, sortby):
    numberCart = cart.Cart.objects.count()

    cursor = connection.cursor()
    cursor.execute('''SELECT DISTINCT brand FROM product''')
    listBrand = cursor.fetchall()

    # Get option from variable sortby use 
    def getOption(sortby): 
        option = { 
            "price-asc": "Giá tăng dần", 
            "price-desc": "Giá giảm dần", 
            "name-asc": "Từ A-Z", 
            "name-desc": "Từ Z-A",
            "default": "Mặc định",
        } 
        return option.get(sortby) 
    option = getOption(sortby)

    # Get arraySortby = price-asc to ["price", "asc"] in order to use in query
    arraySortby = sortby.split("-")

    #Get query when sortby = default
    def getQuery(id): 
        query = { 
            1: '''SELECT * FROM product WHERE category_id = 4 or category_id = 5 or category_id = 6''', 
            2: '''SELECT * FROM product WHERE category_id = 7 or category_id = 8 or category_id = 9''', 
            3: '''SELECT * FROM product WHERE category_id = 11 or category_id = 10''', 
            0: '''SELECT * FROM product WHERE sale > 0''',
            "all": '''SELECT * FROM product''',
        } 
        default = '''SELECT * FROM product WHERE category_id = ''' + str(id)
        return query.get(id, default) 
    
    #Get query when sortby != default
    def getQuery1(id, arraySortby): 
        query = { 
            1: '''SELECT * FROM product WHERE category_id = 4 or category_id = 5 or category_id = 6 ORDER BY ''' + arraySortby[0] + ' ' + arraySortby[1], 
            2: '''SELECT * FROM product WHERE category_id = 7 or category_id = 8 or category_id = 9 ORDER BY ''' + arraySortby[0] + ' ' + arraySortby[1],  
            3: '''SELECT * FROM product WHERE category_id = 11 or category_id = 10 ORDER BY ''' + arraySortby[0] + ' ' + arraySortby[1],  
            "Sản phẩm khuyến mãi": '''SELECT * FROM product WHERE sale > 0 ORDER BY ''' + arraySortby[0] + ' ' + arraySortby[1],  
            "all": '''SELECT * FROM product ORDER BY ''' + arraySortby[0] + ' ' + arraySortby[1],  
        } 
        default = '''SELECT * FROM product WHERE category_id = ''' + str(id) + ' ORDER BY ' + arraySortby[0] + ' ' + arraySortby[1]
        return query.get(id, default) 

    def getQueryData(id, arraySortby):
        if(arraySortby[0] == "default"):
            query = getQuery(id)
        else:
            query = getQuery1(id, arraySortby)
        return query

    query = getQueryData(int(id), arraySortby)
    listProduct = product.Product.objects.raw(query)
    template = loader.get_template('frontend/category.html')
    context = {
        'listBrand' : listBrand,
        'numberCart':numberCart,
        'id': id,
        'option': option, 
        'sortby': sortby,
        'listProduct': listProduct
    }
    return HttpResponse(template.render(context, request))


def textSearch(request, text):
    listProduct = product.Product.objects.filter(name = text)
    context = {
        'listProduct': listProduct
    }
    template = loader.get_template('frontend/category.html')
    return HttpResponse(template.render(context, request))