as yet unclassified
renderContentOn: html
	self renderTabsContentOn: html.
	
	"prolongate session"
	html jQuery ajax callback: []; interval: 30000