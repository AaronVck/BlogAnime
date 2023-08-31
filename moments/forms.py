from .models import Card
from django import forms

class CardForm(forms.ModelForm):
    class Meta:
        model = Card
        fields = ['title','sinopsis','image','review']
        widgets = {
            'title': forms.TextInput(attrs={'class': 'form-control', 'placehholder':'Write a title.'}),
            'sinopsis': forms.Textarea(attrs={'class': 'form-control', 'placeholder':'Write a sinopsis'}),
            'image': forms.FileInput(attrs={'class': 'form-laber', 'for':'formFile'}),
            'review': forms.Textarea(attrs={'class': 'form-control', 'placeholder':'Write a review'})
        }