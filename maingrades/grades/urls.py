from django.urls import path
from .views import GradesView
from django.views import views

urlpatterns = [
    path("", GradesView.as_view(), name="grades"),
]
