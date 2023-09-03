from django.db import models

# Create your models here.

CHOICES = (
    ('rezero','Re:Zero'),
    ('yofukashi','Yofukashi No Uta'),
    ('kimetsu','Kimetsu No Yaiba'),
    ('bocchi','Bocchi The Rock!'),
    ('shingeki','Shingeki No Kyojin'),
    ('boku','Boku No Hero'),
    ('kumo','Kumo Desu Ga Nani Ka?'),
    ('oshi','Oshi No Ko'),
    ('kaguya','Kaguya-sama'),
    ('fullmetal','Full Metal Alchemist'),
    ('pokemon','Pokemon'),


)

class Card(models.Model):
    title = models.CharField(max_length=100)
    sinopsis = models.TextField(blank=True)
    image = models.ImageField(upload_to="escenas", null=True)
    review = models.TextField(blank=True)
    serie = models.CharField(
        max_length=50,
        choices=CHOICES,
        default='rezero',
    )


    def __str__(self):
        return self.title

