var _ = require('lodash');

module.exports = function (injected) {

    return function (history) {

        var gamefull = false; 
        var firstmove = true;

        function processEvent(event) {
            if(event.type==="GameJoined") {
                gamefull=true;
            }

            if(event.type==="MovePlaced") {
                firstmove=false;
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

   


        processEvents(history);

        return {
            emptyBoard: emptyBoard,
            gameFull:gameFull,
            processEvents: processEvents
        }
    };
};