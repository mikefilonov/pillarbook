rendering
renderContentOn: html
	html render: headerComponent.
	html tbsContainer: [
		html tbsColumn mediumSize: 3; with: [ html render: navComponent ].
		html tbsColumn mediumSize: 9; with: [ html render: mainComponent ].
		
		]