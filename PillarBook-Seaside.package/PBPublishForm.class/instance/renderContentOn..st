as yet unclassified
renderContentOn: html
	html heading level: 1; with: 'Publish to Epehmeric Cloud'.
	html form: [
		html div class: 'form-group'; with: [ 
			html label: 'User ID: '.
			html textInput class: 'form-control'; on: #userID of: self.
			].
		
		html div class: 'form-group'; with: [ 
			html label: 'Auth token: '.
			html passwordInput class: 'form-control'; on: #authToken of: self.
			].
		
		html div class: 'form-group'; with: [ 
			html label: 'Image Name:'.
			html textInput class: 'form-control'; on: #imageName of: self.
			].
				
		
		html div class: 'form-group'; with: [ 
			html label: 'Alias '.
			html textInput class: 'form-control'; on: #alias of: self.
			].
		
		html submitButton callback: [ self startPublish ]; class: 'btn'; class: 'btn-success'; with: 'Start'.		
		]