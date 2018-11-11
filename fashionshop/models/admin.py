from django.db import models

class Admin(models.Model):
    email = models.CharField(max_length=100, default='') 
    password = models.CharField(max_length=100, default='') 
    name = models.CharField(max_length=100, default='') 

    class Meta:
        db_table = 'admin'
    