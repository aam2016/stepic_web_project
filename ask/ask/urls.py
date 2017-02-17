from django.conf.urls import url, include
from django.contrib import admin

from ask.views import found, not_found, init25
from qa.views import popular, new

urlpatterns = [

    url(r'^$', index),
    url(r'^init25/', init25),
    url(r'^login/', 'test', name='login'),
    url(r'^signup/', 'test', name='signup'),
    url(r'^ask/', 'test', name='ask'),
    # url(r'^answer/', answer),
    url(r'^popular/', popular),
    url(r'^new/', new),
    url(r'^admin/', admin.site.urls),
    url(r'^question/', include('qa.urls')),
    url(r'^', not_found),
]



#from django.conf.urls import patterns, include, url

#from django.contrib import admin
#admin.autodiscover()

#urlpatterns = patterns('qa.views',
    # Examples:
    # url(r'^$', 'ask.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

#    url(r'^admin/', include(admin.site.urls)),
#    url(r'^$', 'test'),
#   url(r'^login/.*$', 'test', name='login'),
#    url(r'^signup/.*', 'test', name='signup'),
    #url(r'^question/(\d+)', 'question', name='question'),
#    url(r'^question/', include('qa.urls')),
#    url(r'^ask/.*$', 'test', name='ask'),
#    url(r'^popular/.*', 'popular', name='popular'),
#    url(r'^new/.*', 'new', name='new'),
#)
