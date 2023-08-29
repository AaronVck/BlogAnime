# Generated by Django 4.2.4 on 2023-08-29 18:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Card',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('sinopsis', models.TextField(blank=True)),
                ('image', models.BinaryField(blank=True, null=True)),
                ('review', models.TextField(blank=True)),
            ],
        ),
    ]
