from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .models import Grades
from .serializers import GradesSerializer

# Create your views here.
class GradesView(APIView):
    def get(self, request):
        try:
            grades = Grades.objects.all()
            serializer = GradesSerializer(grades, many=True)
            return Response({
                'message': 'Success',
                'status': status.HTTP_200_OK,
                'data': serializer.data},
                status=status.HTTP_200_OK)
        except Exception:
            return Response(
                {'message': 'Internal Server Error'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
                )