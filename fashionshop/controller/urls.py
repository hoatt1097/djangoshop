from django.conf.urls import url 
 
from . import views, home, extra_template, product, cart, login, register
 
urlpatterns = [ 
    url(r'^$', home.showProduct , name='showProduct'),
    url(r'listadmin', views.viewAdmin, name='viewAdmin'),

    # This is urls show extra template of footer
    url(r'questions-guide', extra_template.showQuestionGuide , name='showQuestionGuide'),
    url(r'size-guide', extra_template.showSizeGuide , name='showSizeGuide'),
    url(r'policy-guide', extra_template.showPolicyGuide , name='showPolicyGuide'),
    url(r'storage-guide', extra_template.showStorageGuide , name='showStorageGuide'),
    url(r'payment-guide', extra_template.showPaymentGuide , name='showPaymentGuide'),
    url(r'delivery-guide', extra_template.showDeliveryGuide , name='showDeliveryGuide'),

    # This is function add to cart 
    url(r'addcart', cart.addCart, name='addCart'),
    url(r'cart', cart.showCart, name='showCart'),

    url(r'^product/(?P<product_id>[0-9]+)/$', product.showProductDetail , name='showProductDetail'),
    url(r'login', login.index, name='index'),
    url(r'register', register.index, name='index'),
    
]