from django.db import models

class Product(models.Model):
    name = models.CharField(max_length=100, default='')
    brand = models.CharField(max_length=100, default='')
    color = models.CharField(max_length=100, default='')
    price = models.CharField(max_length=100, default='')
    status = models.IntegerField()
    amount = models.IntegerField()
    sale = models.IntegerField()
    description = models.CharField(max_length=100, default='')
    category_id = models.IntegerField()
    image_id = models.IntegerField()
    image_link = models.CharField(max_length=100, default='')
    date_add = models.DateField(default='')
    supplier = models.CharField(max_length=100, default='')

    class Meta: 
        db_table = "product"
