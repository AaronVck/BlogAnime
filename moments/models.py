from django.db import models

# Create your models here.

class Card(models.Model):
    title = models.CharField(max_length=100)
    sinopsis = models.TextField(blank=True)
    image = models.ImageField(upload_to="escenas", null=True)
    review = models.TextField(blank=True)

    def __str__(self):
        return self.title

