# Generated by Django 4.2.4 on 2023-09-11 18:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('moments', '0008_alter_card_serie'),
    ]

    operations = [
        migrations.AddField(
            model_name='card',
            name='anime',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='card',
            name='manga',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='card',
            name='novela',
            field=models.BooleanField(default=False),
        ),
    ]