# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2018-11-11 14:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fashionshop', '0002_product'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='', max_length=100)),
                ('parent_id', models.IntegerField()),
            ],
            options={
                'db_table': 'product_category',
            },
        ),
    ]
