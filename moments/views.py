from django.shortcuts import render, redirect
from .forms import CardForm
from .models import Card

def home(request):
    return render(request, 'home.html')

def moments(request):
    card = Card.objects.all()
    return render(request, 'moments.html',{
        'card':card
    })

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

# Create your views here.
