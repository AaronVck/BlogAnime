# Generated by Django 4.2.4 on 2023-09-11 18:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moments', '0007_alter_card_serie'),
    ]

    operations = [
        migrations.AlterField(
            model_name='card',
            name='serie',
            field=models.CharField(choices=[('ReZero', 'Re:Zero'), ('Yofukashi No Uta', 'Yofukashi No Uta'), ('Kimetsu No Yaiba', 'Kimetsu No Yaiba'), ('Bocchi The Rock!', 'Bocchi The Rock!'), ('Shingeki No Kyojin', 'Shingeki No Kyojin'), ('Boku No Hero', 'Boku No Hero'), ('Kumo Desu Ga Nani Ka?', 'Kumo Desu Ga Nani Ka?'), ('Oshi No Ko', 'Oshi No Ko'), ('Kaguya-sama', 'Kaguya-sama'), ('Full Metal Alchemist', 'Full Metal Alchemist'), ('Pokemon', 'Pokemon'), ('Jujutsu Kaisen', 'Jujutsu Kaisen')], default='rezero', max_length=50),
        ),
    ]
