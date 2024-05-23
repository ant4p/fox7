from django.shortcuts import render
from django.views.generic import TemplateView


# Create your views here.
class ShowTest(TemplateView):
    template_name = 'go/index.html'


