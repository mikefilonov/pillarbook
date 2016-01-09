as yet unclassified
baseUrl
	|requestContext|
	requestContext := WACurrentRequestContext value.
	^ requestContext 
		ifNotNil: [ '/', (requestContext request uri path ifEmpty: [ WAAdmin defaultDispatcher defaultName ] ifNotEmpty: [ requestContext request uri path first ]) ]
		ifNil: [ self defaultBaseUrl ]