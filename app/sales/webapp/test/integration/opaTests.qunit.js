sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'logaligroup/sales/test/integration/FirstJourney',
		'logaligroup/sales/test/integration/pages/HeaderList',
		'logaligroup/sales/test/integration/pages/HeaderObjectPage'
    ],
    function(JourneyRunner, opaJourney, HeaderList, HeaderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('logaligroup/sales') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheHeaderList: HeaderList,
					onTheHeaderObjectPage: HeaderObjectPage
                }
            },
            opaJourney.run
        );
    }
);