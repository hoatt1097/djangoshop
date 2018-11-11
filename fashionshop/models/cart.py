from django.db import models

class Cart(models.Model):
    product_id = models.IntegerField()
    color_choose = models.CharField(max_length=100, default='') 
    size_choose = models.CharField(max_length=100, default='') 
    amount = models.IntegerField()
    sum_price = models.CharField(max_length=100, default='') 

    class Meta:
        db_table = 'cart'
    