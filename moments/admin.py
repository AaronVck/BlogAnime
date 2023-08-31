from django.contrib import admin
from .models import Card

class CardAdmin(admin.ModelAdmin):
    #readonly_fields = ("created", )
    pass
admin.site.register(Card, CardAdmin )
# Register your models here.
