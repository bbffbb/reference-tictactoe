var _ = require('lodash');

module.exports = function (injected) {

    return function (history) {

        var gamefull = false; 
        var occupiedsquare = false;

        function processEvent(event) {
            if(event.type==="GameJoined") {
                gamefull=true;
            } 

            if(event.type==="MovePlaced") {
                occupiedsquare=true;
            }

            





            


            console.log("event", event);
        }

        function processEvents(history) {
            _.each(history, processEvent);
        }

        function gameFull() {
            return gamefull;
        }

        function occupied() {
            return occupiedsquare;
        }


        processEvents(history);

        return {
            occupied: occupied,
            gameFull:gameFull,
            processEvents: processEvents
        }
    };
};
