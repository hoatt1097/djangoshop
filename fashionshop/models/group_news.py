from django.db import models

class GroupNews(models.Model):
    name = models.CharField(max_length=100, default='')  
    
    class Meta:
        db_table = 'group_news'