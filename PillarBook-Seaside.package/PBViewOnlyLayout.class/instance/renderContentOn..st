accessing
renderContentOn: html
	html render: headerComponent.
	html tbsContainer: [ 
		html tbsColumn mediumSize: 12; with: [ html render: mainComponent ] ]