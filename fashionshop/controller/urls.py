from django.conf.urls import url 
 
from . import views, home, extra_template, product
 
urlpatterns = [ 
    url(r'^$', views.index, name='index'),
    url(r'listadmin', views.viewAdmin, name='viewAdmin'),

    # This is urls show extra template of footer
    url(r'questions-guide', extra_template.showQuestionGuide , name='showQuestionGuide'),
    url(r'size-guide', extra_template.showSizeGuide , name='showSizeGuide'),
    url(r'policy-guide', extra_template.showPolicyGuide , name='showPolicyGuide'),
    url(r'storage-guide', extra_template.showStorageGuide , name='showStorageGuide'),
    url(r'payment-guide', extra_template.showPaymentGuide , name='showPaymentGuide'),
    url(r'delivery-guide', extra_template.showDeliveryGuide , name='showDeliveryGuide'),

    url(r'homepage', home.showProduct , name='showProduct'),
    url(r'^product/(?P<product_id>[0-9]+)/$', product.showProductDetail , name='showProductDetail'),
    
]