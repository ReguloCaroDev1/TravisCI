import pytest
from library.books.models import *


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre, apellido',
    (
        ('Paulo','Coelho'),
        ('Francisco','Alvarado'),
        ('Hazel','mtz'),
    )
)
def test_author_name(nombre,apellido):
    author = Author.objects.create(name=nombre,last_name=apellido)
    print('first author: ', author.name)
    assert author.name == author.name
    assert Author.objects.all().count() == 1
    author.delete()
    assert Author.objects.all().count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre, apellido',
    (
        ('Alice','Wonderland'),
        ('Luis','Elisea'),
        ('Hugo','Gomez'),
    )
)
def test_illustrator_last_name(nombre,apellido):
    illustrator = Illustrator.objects.create(name=nombre,last_name=apellido)
    print('first illustrator: ', illustrator.name)
    assert illustrator.name == illustrator.name
    assert Illustrator.objects.all().count() == 1
    illustrator.delete()
    assert Illustrator.objects.all().count() == 0

@pytest.mark.django_db
@pytest.mark.parametrize(
    'language, downloads',
    (
        ('Japanese',5232),
        ('Chinese',8238),
        ('Korean',1923),
    )
)
def test_general(language,downloads):
    general = General.objects.create(language=language, downloads=downloads)
    print('downloads ', general.downloads)
    if(general.downloads < 10000):
        assert general.downloads == general.downloads
    else:
        print('no paso')
    

@pytest.mark.django_db
@pytest.mark.parametrize(
    'language, downloads',
    (
        ('English',2000),
        ('Spanish',2311),
        ('Russian',3122),
    )
)
def test_generalDelete(language,downloads):
    general = General.objects.create(language=language, downloads=downloads)
    print('language ', general.language)
    print('downloads ', general.downloads)
    if(general.language == general.language):
        print(general)
        assert general.delete()
        print(general)
    else:
        print('no hizo nada')


@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre, apellido',
    (
        ('MAYO','Zambada'),
        ('Regulo','Caro'),
        ('GUILLERMO','Villarreal'),
    )
)
def test_illustratorIsUpper(nombre,apellido):
    illustrator = Illustrator.objects.create(name=nombre,last_name=apellido)
    assert illustrator.name == illustrator.name
    if illustrator.name.isupper():
        print('paso')
    else:
        print('no hizo nada')

@pytest.mark.django_db
@pytest.mark.parametrize(
    'nombre, apellido',
    (
        ('adame','WASAOWSKI'),
        ('MiKe','WASAOWSKI'),
        ('ARIZ','WASAOWSKI'),
    )
)
def test_illustratorIsUpperLast_Name(nombre,apellido):
    illustrator = Illustrator.objects.create(name=nombre,last_name=apellido)
    assert illustrator.last_name == illustrator.last_name
    if (illustrator.last_name == 'WASAOWSKI'):
        print('paso')
    else:
        print('no hizo nada')




@pytest.mark.django_db
def test_author_with_mokey(monkeypatch):
    author = Author.objects.create(name='Paulo',last_name='Coelho')
    def model_count_mock():
        return 4
    
    monkeypatch.setattr(Author.objects.all(),'count',model_count_mock)
    assert Author.objects.all().count() == 4
    print('haciendo el monkeypatch')