from django.db import models
from users.models import Student

# Create your models here.
class Grades(models.Model):
    nama_siswa = models.ForeignKey(
        Student, on_delete=models.CASCADE
        )
    nama_matkul = models.CharField(max_length=50)
    sks = models.IntegerField()
    nilai_UAS = models.IntegerField()
    nilai_UTS = models.IntegerField()
    nilai_tugas = models.IntegerField()
    nilai_quiz = models.IntegerField()
    poin_kehadiran = models.IntegerField()
    nilai_lainnya = models.IntegerField()

    def __str__(self):
        return self.nama_matkul