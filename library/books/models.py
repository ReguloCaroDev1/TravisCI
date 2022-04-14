from django.db import models

class Author(models.Model):
    name = models.CharField(max_length=128)
    last_name = models.CharField(max_length=128, null=True)

class Illustrator(models.Model):
    name = models.CharField(max_length=128)
    last_name = models.CharField(max_length=128, null=True)

class Book(models.Model):
    name = models.CharField(max_length=256)
    publish_year = models.SmallIntegerField()
    pages = models.SmallIntegerField()
    price = models.DecimalField(max_digits=6,decimal_places=2)
    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    authors = models.ManyToManyField(Author,through='BooksAuthors')
    
class General(models.Model):
    language = models.CharField(max_length=256)
    subject = models.CharField(max_length=256)
    downloads = models.SmallIntegerField()
    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    illustrators = models.ManyToManyField(Illustrator,through='IllustratorGeneral')


class BooksAuthors(models.Model):
    book = models.ForeignKey(Book,related_name='BookWithAuthors',on_delete=models.DO_NOTHING) #on_update=models.DO_NOTHING)
    author = models.ForeignKey(Author,related_name='AuthorWithBooks', on_delete=models.DO_NOTHING)

class IllustratorGeneral(models.Model):
    illustrator = models.ForeignKey(Illustrator,related_name='IllustratorInGeneral',on_delete=models.DO_NOTHING) #on_update=models.DO_NOTHING)
    general = models.ForeignKey(General,related_name='GeneralIllustrator', on_delete=models.DO_NOTHING)

def __str__(self):
	return f'{self.id}'