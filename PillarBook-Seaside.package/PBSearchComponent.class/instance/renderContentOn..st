as yet unclassified
renderContentOn: html
	|appAt|
	appAt := self requestContext  request uri path ifEmpty: [ WAAdmin defaultDispatcher defaultName ] ifNotEmpty: [ self requestContext  request uri path first ].


	html heading level: 2; with: ('Results for query "{1}"' format: {self query}).
	html unorderedList: [ 
		self articles do: [ :a | html listItem:  [ html anchor url: '/', appAt, '/', a reference; with: a title  ]
			]
		]