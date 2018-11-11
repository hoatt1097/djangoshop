from django.db import models

class Image(models.Model):
    image_link = models.CharField(max_length=100, default='') 

    class Meta:
        db_table = 'image'