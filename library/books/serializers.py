from rest_framework import serializers
from library.books.models import *

class AuthorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Author
        fields = ['id','name','last_name']

class IllustratorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Illustrator
        fields = ['id','name','last_name']


class BookSerializer(serializers.ModelSerializer):
    authors = serializers.StringRelatedField(many=True, read_only=True)
    #author = AuthorSerializer()
    class Meta:
        model = Book
        fields = ['id', 'name', 'publish_year', 'pages', 'price', 'created_at', 'updated_at', 'authors']

class AuthorsBooksSerializer(serializers.ModelSerializer):
    class Meta:
        model = BooksAuthors
        fields = ['id', 'book', 'author']

class GeneralSerializer(serializers.ModelSerializer):
    illustrators = serializers.StringRelatedField(many=True, read_only=True)
    class Meta:
        model = General
        fields = ['id','language', 'subject', 'downloads' , 'created_at', 'updated_at', 'illustrators']


class IllustratorGeneralSerializer(serializers.ModelSerializer):
    #author = AuthorSerializer()
    class Meta:
        model = IllustratorGeneral
        fields = ['id','illustrator','general']

