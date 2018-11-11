from django.db import models

class User(models.Model):
    # ALTER DATABASE databasename CHARACTER SET utf8 COLLATE utf8_unicode_ci;
    email = models.EmailField(default='')
    password = models.CharField(max_length=100, default='')
    firstname = models.CharField(max_length=100, default='')
    lastname = models.CharField(max_length=100, default='')
    lastlogin = models.DateField(default='')
    dateofbirth = models.DateField(default='')
    
    class Meta:
        db_table = 'user'