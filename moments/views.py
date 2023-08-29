from django.shortcuts import render

def home(request):
    return render(request, 'header.html')

# Create your views here.
