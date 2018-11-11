from django.db import models

class PaymentSlipDetail(models.Model):
    payment_slip_id = models.IntegerField(primary_key=True)
    product_id = models.IntegerField()
    number = models.IntegerField()
    money = models.CharField(max_length=100, default='') 
    note = models.CharField(max_length=100, default='') 

    class Meta:
        db_table = 'payment_slip_detail'
        unique_together = (("payment_slip_id", "product_id"),)