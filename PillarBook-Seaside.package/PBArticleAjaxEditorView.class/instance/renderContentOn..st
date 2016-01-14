as yet unclassified
renderContentOn: html
	self renderTabsContentOn: html.
	
	"prolongate session"
	html paragraph script: (html jQuery ajax callback: []; interval: 30000)