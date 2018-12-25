from django.contrib import admin
from .models import user, image
# Register your models here.
admin.site.register(user.User)
admin.site.register(image.Image)