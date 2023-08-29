from .models import Card
from django import forms

class CardForm(forms.ModelForm):
    class Meta:
        model = Card
        formatos = (
            ('Novela','Novela'),
            ('Anime','Anime'),
            ('Manga','Manga'),
        )
        fields = ['title','sinopsis','image','review','serie','formato']
        widgets = {
            'title': forms.TextInput(attrs={'class': 'form-control', 'placeholder':'Write a title.'}),
            'sinopsis': forms.Textarea(attrs={'class': 'form-control', 'placeholder':'Write a sinopsis'}),
            'image': forms.FileInput(attrs={'class': 'form-laber', 'for':'formFile'}),
            'review': forms.Textarea(attrs={'class': 'form-control', 'placeholder':'Write a review'}),
            'serie': forms.Select(attrs={'class': 'form-control'}),
            'formato':forms.RadioSelect(attrs={'class': 'form-check-input pt-4'})
        }