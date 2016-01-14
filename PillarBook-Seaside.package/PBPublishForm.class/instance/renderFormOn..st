as yet unclassified
renderFormOn: html
	
	html form: [
		html div class: 'form-group'; with: [ 
			html label: 'User ID*: '.
			html textInput class: 'form-control'; on: #userID of: self.
			].
		
		html div class: 'form-group'; with: [ 
			html label: 'Auth token*: '.
			html passwordInput class: 'form-control'; on: #authToken of: self.
			].
		
		html div class: 'form-group'; with: [ 
			html label: 'Image Name*:'.
			html textInput class: 'form-control'; on: #imageName of: self.
			html small: 'Image description (imageName property of ephemeric)'.
			].
		
		html div class: 'form-group'; with: [ 
			html label: 'Alias '.
			html textInput class: 'form-control'; placeholder: '.swarm.pharocloud.com'; on: #alias of: self.
			html small: 'Any free or owned by your ephemeric hostname. Ignored if empty. Ignored if error on setting. You may use domains in *.swarm.pharocloud.com'. html break.
			html small: [ html text: 'See more on alias in ephemeric docs: '. html anchor url: 'http://docs.swarm.pharocloud.com/article/ephemeric_instance'; with: 'here']
			].
		
		html submitButton callback: [ self startPublish ]; class: 'btn'; class: 'btn-success'; with: 'Start'.		
		]