var _ = require('lodash');

module.exports = function (injected) {

    return function (history) {

        var gamefull = false; 
        var firstmove = false;
        var illegal = false; 

        function processEvent(event) {
            if(event.type==="GameJoined") {
                gamefull=true;
            }

            if(event.type==="MovePlaced") {
                illegal=false;
            } 




            


         



            console.debug("event", event);
        }

        function processEvents(history) {
            _.each(history, processEvent);
        }

        function gameFull() {
            return gamefull;
        }

        function emptyBoard() {
            return firstmove;
        }

        function isOccupied() {
            return illegal;
        }

   


        processEvents(history);

        return {
            isOccupied: isOccupied,
            emptyBoard: emptyBoard,
            gameFull:gameFull,
            processEvents: processEvents
        }
    };
};
