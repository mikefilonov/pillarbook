as yet unclassified
doAutoUpdate
	self addDecoration: 
	    (WAAjaxUpdaterDecoration new 
			stopCondition: [process isTerminated]; 
			onStop: [self answer])