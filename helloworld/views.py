from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello,2019 world!")
