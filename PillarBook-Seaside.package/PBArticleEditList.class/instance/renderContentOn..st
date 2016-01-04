as yet unclassified
renderContentOn: html
	|appAt| 
	appAt := self requestContext  request uri path ifEmpty: [ WAAdmin defaultDispatcher defaultName ] ifNotEmpty: [ self requestContext  request uri path first ].
	
	html orderedList: [ 
		PBArticle root sortedChildren do: [ :a |
			html listItem: [
				html anchor url: '/', appAt, '/', a reference; with: a title.
			] ] ].

	self renderButtonsOn: html