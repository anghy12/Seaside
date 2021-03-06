description
describeOn: config 
	(config string: #charSet)
		beAdvanced;
		label: 'Character Set';
		comment: 'The character set reported to the browser. This is only used if you set the encoding in the server to ''(none)''.';
		default: 'utf-8'.
	(config classBinding: #documentClass)
		beAdvanced;
		options: [ self documentClasses ];
		default: WAHtmlDocument.
	(config classBinding: #scriptGeneratorClass)
		beAdvanced;
		options: [ self scriptGeneratorClasses ];
		default: WADefaultScriptGenerator.
	(config classBinding: #responseGenerator)
		beAdvanced;
		options: [ self responseGenerators ];
		default: WAResponseGenerator.
	(config list: #serverProtocol)
		beAdvanced;
		group: #server;
		comment: 'The protocol in URLs generated by Seaside.';
		options: [ self serverProtocols ].
	(config string: #serverHostname)
		beAdvanced;
		group: #server;
		comment: 'The hostname in URLs generated by Seaside.'.
	(config integer: #serverPort)
		beAdvanced;
		group: #server;
		comment: 'The port in URLs generated by Seaside.'.
	(config string: #serverPath)
		group: #server;
		comment: 'The path in URLs generated by Seaside.'