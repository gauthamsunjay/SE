from django import forms

class uploadFile(forms.Form):
	file = forms.FileField(widget=forms.FileInput(attrs={'required':"True",'style':"color:white"}))

