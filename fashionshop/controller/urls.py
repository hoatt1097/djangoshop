from django.conf.urls import url 
 
from . import views, home
 
urlpatterns = [ 
    url(r'^$', views.index, name='index'),
    url(r'listadmin', views.viewAdmin, name='viewAdmin'),
    url(r'homepage', home.showProduct , name='showProduct'),
]