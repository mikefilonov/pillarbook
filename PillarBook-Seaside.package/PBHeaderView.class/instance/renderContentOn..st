as yet unclassified
renderContentOn: html
	html navigation class: 'navbar'; class: 'navbar-default'; with:[
		html div class: 'container-fluid'; with: [ 
			html anchor class: 'navbar-brand'; url: '/'; with: PBPillarBookApplication title.
			html form class: 'navbar-form'; class: 'navbar-right'; with: [ html textInput class: 'form-control'; placeholder: 'Search'; on: #query of: self. html hiddenInput callback: [ :v | searchBlock cull: self query] ].
			html unorderedList class: 'nav'; class: 'navbar-nav'; class: 'navbar-right'; with: [
				PBArticle root children select: [ :a | a headerTitle isNotNil ] thenDo: [ :a | html listItem: [ html anchor url: PBPillarBookApplication baseUrl, '/', a reference; with: a headerTitle] ]. ]
				
			]
	]