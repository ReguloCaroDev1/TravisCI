from rest_framework import viewsets
from rest_framework import permissions
from library.books.serializers import *


class AuthorViewSet(viewsets.ModelViewSet):
    queryset = Author.objects.all().order_by('name')
    serializer_class = AuthorSerializer
    permission_classes = [permissions.IsAuthenticated]
    #permission_classes = []

class IllustratorViewSet(viewsets.ModelViewSet):
    queryset = Illustrator.objects.all().order_by('name')
    serializer_class = IllustratorSerializer
    permission_classes = [permissions.IsAuthenticated]
    #permission_classes = []
class GeneralViewSet(viewsets.ModelViewSet):
    queryset = General.objects.all().order_by('GeneralIllustrator')
    serializer_class = GeneralSerializer
    permission_classes = [permissions.IsAuthenticated]
    #permission_classes = []

class BookViewSet(viewsets.ModelViewSet):
    queryset = Book.objects.all().order_by('name')
    serializer_class = BookSerializer
    permission_classes = [permissions.IsAuthenticated]
    #permission_classes = []

class AuthorsBooksViewSet(viewsets.ModelViewSet):
    queryset = BooksAuthors.objects.all().order_by()
    serializer_class = AuthorsBooksSerializer
    #permission_classes = [permissions.IsAuthenticated]
    permission_classes = []



class IllustratorGeneralViewSet(viewsets.ModelViewSet):
    queryset = IllustratorGeneral.objects.all().order_by()
    serializer_class = IllustratorGeneralSerializer
    permission_classes = [permissions.IsAuthenticated]
    #permission_classes = []