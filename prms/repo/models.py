from django.db import models
import professor.models as profModels

# Create your models here.

class Files(models.Model):
	pId = models.ForeignKey(profModels.Projects)
	filePath = models.CharField(max_length=512)

	class meta:
		unique_together = (("pId","filePath"),)
