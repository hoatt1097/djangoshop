from django.db import models

class Comment(models.Model):
    comment_id = models.IntegerField()
    user_id = models.IntegerField(primary_key=True)
    comment = models.CharField(max_length=100, default='')
    date = models.DateField(default='')
    product_id = models.IntegerField()
    
    class Meta:
        db_table = 'comment'