from rest_framework import routers

from books import views

router = routers.DefaultRouter()
router.register('', views.BookViewSet, basename='books')
urlpatterns = router.urls
