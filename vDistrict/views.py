from django.shortcuts import render
from django.apps import apps
from datetime import datetime

def welcome_view(request):
    installed_apps = [config.label for config in apps.get_app_configs() if config.label in ["citydb", "sri"]]
    context = {
        "apps": installed_apps,
        "year": datetime.now().year,
    }
    return render(request, "welcome.html", context)
    

