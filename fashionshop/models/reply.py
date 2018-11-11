from django.db import models

class Reply(models.Model):
    user_id = models.IntegerField()
    reply = models.CharField(max_length=100, default='')
    date_reply = models.DateField(default='')
    comment_id = models.IntegerField()
    
    class Meta:
        db_table = 'reply'