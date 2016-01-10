as yet unclassified
renderContentOn: html
	html div: 'Publishing...'.
	html tbsProgress: [ 
		html tbsProgressbar class: 'progress-bar-striped'; class: 'active'; valueNow: 100.
	].