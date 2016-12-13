var _ = require('lodash');

module.exports = function (injected) {

    return function (history) {

        var gamefull = false; 

        function processEvent(event) {
            if(event.type==="GameJoined") {
                gamefull=true;
            } 

         



            console.debug("event", event);
        }

        function processEvents(history) {
            _.each(history, processEvent);
        }

        function gameFull() {
            return gamefull;
        }

        function firstMove() {
            return false;
        }

        function isOccupied() {
            return true;
        }

        function rightPlayer() {
            return true;
        }

   


        processEvents(history);

        return {
            rightPlayer:rightPlayer,
            isOccupied: isOccupied,
            firstMove: firstMove,
            gameFull:gameFull,
            processEvents: processEvents
        }
    };
};
