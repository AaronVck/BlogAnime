# Generated by Django 4.2.4 on 2023-09-03 18:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moments', '0005_card_serie_alter_card_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='card',
            name='serie',
            field=models.CharField(choices=[('opcion1', 'Re:Zero'), ('opcion2', 'Yofukashi No Uta'), ('opcion3', 'Kimetsu No Yaiba'), ('opcion4', 'Bocchi The Rock!'), ('opcion5', 'Shingeki No Kyojin'), ('opcion6', 'Boku No Hero'), ('opcion7', 'Kumo Desu Ga Nani Ka?'), ('opcion8', 'Oshi No Ko'), ('opcion9', 'Kaguya-sama'), ('opcion10', 'Full Metal Alchemist'), ('opcion11', 'Pokemon')], default='opcion1', max_length=50),
        ),
    ]
