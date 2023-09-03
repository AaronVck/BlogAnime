"""
URL configuration for blog project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from moments import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name="home"),
    path('moments/', views.moments, name="moments"),
    path('moments/create/', views.create_moment, name="create_moment"),
    path('rezero/', views.rezero_moments, name="rezero_moment"),
    path('yofukashi/', views.yofukashi_moments, name="yofukashi_moment"),
    path('kimetsu/', views.kimetsu_moments, name="kimetsu_moment"),
    path('bocchi/', views.bocchi_moments, name="bocchi_moment"),
    path('shingeki/', views.shingeki_moments, name="shingeki_moment"),
    path('boku/', views.boku_moments, name="boku_moment"),
    path('kumo/', views.kumo_moments, name="kumo_moment"),
    path('oshi/', views.oshi_moments, name="oshi_moment"),
    path('kaguya/', views.kaguya_moments, name="kaguya_moment"),
    path('fullmetal/', views.fullmetal_moments, name="fullmetal_moment"),
    path('pokemon/', views.pokemon_moments, name="pokemon_moment"),

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
