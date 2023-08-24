from django.db import models

# Create your models here.
class Student(models.Model):
    name = models.CharField(max_length=50)
    npm = models.CharField(max_length=10, primary_key=True)
    email = models.EmailField(max_length=50)
    
    def __str__(self):
        return self.name