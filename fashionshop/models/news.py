from django.db import models

class News(models.Model):
    group_id = models.IntegerField()
    title = models.CharField(max_length=5000, default='') 
    header = models.CharField(max_length=5000, default='') 
    image = models.CharField(max_length=100, default='') 
    content = models.CharField(max_length=5000, default='') 
    date = models.DateField(default='')

    class Meta:
        db_table = 'news'
    