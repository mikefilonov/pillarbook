as yet unclassified
baseUrl
	|requestContext|
	[
	requestContext := WACurrentRequestContext value.
	^ '/', (requestContext request uri path ifEmpty: [ WAAdmin defaultDispatcher defaultName ] ifNotEmpty: [ requestContext request uri path first ])
	] on: WARequestContextNotFound do: [ ^ '/', self defaultBaseUrl ]