# Generated by Django 4.1.3 on 2022-12-30 15:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("books", "0003_remove_book_date_added_book_year"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="book",
            name="status",
        ),
        migrations.AddField(
            model_name="book",
            name="finished",
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
    ]
