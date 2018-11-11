from django.db import models
class ProductCategory(models.Model):
    name = models.CharField(max_length=100, default='')
    parent_id = models.IntegerField()

    class Meta:
        db_table = "product_category"