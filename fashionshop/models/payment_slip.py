from django.db import models

class PaymentSlip(models.Model):
    trading_code = models.CharField(max_length=100, default='')
    trading_date = models.DateField(default='')
    store_name = models.CharField(max_length=100, default='')
    trading_name = models.CharField(max_length=100, default='')
    value = models.CharField(max_length=100, default='')
    
    class Meta:
        db_table = 'payment_slip'   