from rest_framework_simplejwt.views import (
    TokenObtainPairView
)
from rest_framework_simplejwt.tokens import AccessToken, RefreshToken, TokenError

from users import serializers
class CustomTokenObtainPairView(TokenObtainPairView):
    # Replace the serializer with your custom
    serializer_class = serializers.CustomTokenObtainPairSerializer

