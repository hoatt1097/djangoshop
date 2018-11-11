from django.db import models

class Supplier(models.Model):
    name = models.CharField(max_length=100, default='') 
    type = models.CharField(max_length=100, default='') 
    address = models.CharField(max_length=100, default='') 
    money_debt = models.CharField(max_length=100, default='')  
    
    class Meta:
        db_table = 'supplier'