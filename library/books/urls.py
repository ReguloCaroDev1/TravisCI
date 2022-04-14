from . import views
from rest_framework import routers
from django.urls import path, include

router = routers.DefaultRouter()


router.register(r'books', views.BookViewSet)
router.register(r'author', views.AuthorViewSet)
router.register(r'authors', views.AuthorsBooksViewSet)
router.register(r'illustrator', views.IllustratorViewSet)
router.register(r'general', views.GeneralViewSet)
router.register(r'illustrators', views.IllustratorGeneralViewSet)
router.register(r'', views.BookViewSet)

urlpatterns = [
    path('', include(router.urls)),
]