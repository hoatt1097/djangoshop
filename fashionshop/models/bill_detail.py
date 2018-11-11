from django.db import models

class BillDetail(models.Model):
    id = models.IntegerField(primary_key=True)
    bill_id =models.IntegerField()
    product_id = models.IntegerField()
    number = models.IntegerField()
    color = models.CharField(max_length=100, default='')
    size = models.CharField(max_length=100, default='')
    sum_price = models.CharField(max_length=100, default='')
    
    class Meta:
        db_table = 'bill_detail'
        unique_together = ('id', 'bill_id', 'product_id')