from django.shortcuts import render, redirect, get_object_or_404
from .forms import CardForm
from .models import Card

def home(request):
    return render(request, 'home.html')

def moments(request):
    card = Card.objects.all()
    return render(request, 'moments.html',{
        'card':card
    })


def delete_card(request, card_id):
    card = get_object_or_404(Card,pk=card_id)
    if request.method == 'POST':
        card.delete()
        return redirect('moments')

def moments_by_serie(request, serie):
    card = Card.objects.filter(serie=serie)
    template_name = f'moments/{serie}_moments.html'
    return render(request, template_name, {'card': card})

def rezero_moments(request):
    return moments_by_serie(request, 'rezero')

def yofukashi_moments(request):
    return moments_by_serie(request, 'yofukashi')

def kimetsu_moments(request):
    return moments_by_serie(request, 'kimetsu')

def bocchi_moments(request):
    return moments_by_serie(request, 'bocchi')

def shingeki_moments(request):
    return moments_by_serie(request, 'shingeki')

def boku_moments(request):
    return moments_by_serie(request, 'boku')

def kumo_moments(request):
    return moments_by_serie(request, 'kumo')

def oshi_moments(request):
    return moments_by_serie(request, 'oshi')

def kaguya_moments(request):
    return moments_by_serie(request, 'kaguya')

def fullmetal_moments(request):
    return moments_by_serie(request, 'fullmetal')

def pokemon_moments(request):
    return moments_by_serie(request, 'pokemon')

def jujutsu_moments(request):
    return moments_by_serie(request, 'jujutsu')



def create_moment(request):
    if request.method == 'GET':
        return render(request, 'create_moment.html', {'form': CardForm()})
    else:
        form = CardForm(request.POST, request.FILES)  # Asegúrate de incluir request.FILES para manejar la carga de archivos
        if form.is_valid():
            try:
                new_card = form.save(commit=False)
                new_card.save()
                return redirect('moments')
            except IntegrityError:
                return render(request, 'create_moment.html', {
                    'error': 'Ha ocurrido un error al guardar los datos.',
                    'form': form
                })
        else:
            return render(request, 'create_moment.html', {
                'error': 'Ingresa correctamente los datos',
                'form': form
            })



def card_detail(request, card_id):
    if request.method == 'GET':
        card = get_object_or_404(Card,pk=card_id)
        form = CardForm(instance=card)
        return render(request, 'card_detail.html',{'card':card, 'form':form})
    else:
        try:
            card = get_object_or_404(Card,pk=card_id)
            form = CardForm(request.POST, request.FILES, instance=card )
            form.save()
            return redirect ('moments')
        except ValueError:
            return render(request, 'card_detail.html',{'card':card, 'form':form,'error':'Error Modificando momento'})


# Create your views here.
