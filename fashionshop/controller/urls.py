from django.conf.urls import url 
 
from . import views, home, extra_template, product, cart, login, register, category, pay, admin
 
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
    url(r'news-fashion', extra_template.showNewsFashion , name='showNewsFashion'),
    url(r'news-detail/(?P<groupid>.*)/(?P<newsid>.*)$', extra_template.showNewsDetailFashion , name='showNewsDetailFashion'),

    # This is function add to cart 
    url(r'addcart', cart.addCart, name='addCart'),
    url(r'delete', cart.deleteCart, name='deleteCart'),
    url(r'cart', cart.showCart, name='showCart'),

    url(r'^search', category.textSearch, name='textSearch'),
    url(r'^product/(?P<product_id>[0-9]+)/$', product.showProductDetail , name='showProductDetail'),
    url(r'login', login.index, name='index'),
    url(r'register', register.index, name='index'),
    url(r'category/(?P<id>.*)/(?P<sortby>.*)$', category.index, name='index'),
    url(r'pay', pay.index, name='index'),
    url(r'sendmail', pay.sendMail, name='sendMail'),

    # This is ulrs of admin
    url(r'manage/admin', admin.showProduct, name='showProduct'),
]