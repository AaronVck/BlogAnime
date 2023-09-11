from django.db import models

# Create your models here.

CHOICES = (
    ('ReZero','Re:Zero'),
    ('Yofukashi No Uta','Yofukashi No Uta'),
    ('Kimetsu No Yaiba','Kimetsu No Yaiba'),
    ('Bocchi The Rock!','Bocchi The Rock!'),
    ('Shingeki No Kyojin','Shingeki No Kyojin'),
    ('Boku No Hero','Boku No Hero'),
    ('Kumo Desu Ga Nani Ka?','Kumo Desu Ga Nani Ka?'),
    ('Oshi No Ko','Oshi No Ko'),
    ('Kaguya-sama','Kaguya-sama'),
    ('Full Metal Alchemist','Full Metal Alchemist'),
    ('Pokemon','Pokemon'),
    ('Jujutsu Kaisen','Jujutsu Kaisen'),


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

