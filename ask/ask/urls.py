from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('qa.views',
    # Examples:
    # url(r'^$', 'ask.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', 'test'),
    url(r'^login/.*$', 'test', name='login'),
    url(r'^signup/.*', 'test', name='signup'),
    url(r'^question/(\d+)', 'question', name='question'),
    url(r'^ask/.*$', 'test', name='ask'),
    url(r'^popular/.*', 'popular', name='popular'),
    url(r'^new/.*', 'new', name='new'),
)
