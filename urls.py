from django.http import HttpResponse
from django.urls import path

def home(request):
    return HttpResponse("🚀 Django Docker Demo is running!")
    return HttpResponse("And back to home page")

urlpatterns = [
    path("", home),
]
