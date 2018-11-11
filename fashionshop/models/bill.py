from django.db import models

class Bill(models.Model):
    date = models.DateField(default='')
    employee = models.CharField(max_length=100, default='') 
    customer = models.CharField(max_length=100, default='') 
    phone_number = models.CharField(max_length=100, default='') 
    address = models.CharField(max_length=100, default='') 
    money_ship = models.CharField(max_length=100, default='') 
    VAT = models.CharField(max_length=100, default='') 
    value = models.CharField(max_length=100, default='') 
    
    class Meta:
        db_table = 'bill'