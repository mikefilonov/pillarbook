as yet unclassified
renderAutosaveScriptOn: html
	html script: '
	var autosaveTimeout = null;
	var WAIT_TIME = 1000;
	function autosaveTrigger () {
		$("#autosave").click();
		autosaveTimeout = null;
	};	
	$("#valueHolder").bind("input propertychange", function() {
		if(!autosaveTimeout) $("#autosave").text("Compiling...");
		if(autosaveTimeout) clearTimeout(autosaveTimeout);
		autosaveTimeout = setTimeout(autosaveTrigger, WAIT_TIME);
	});
	'.
	
	
	
     	