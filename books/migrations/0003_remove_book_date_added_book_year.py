# Generated by Django 4.1.3 on 2022-12-29 16:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("books", "0002_book_date_added"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="book",
            name="date_added",
        ),
        migrations.AddField(
            model_name="book",
            name="year",
            field=models.IntegerField(default=0),
            preserve_default=False,
        ),
    ]