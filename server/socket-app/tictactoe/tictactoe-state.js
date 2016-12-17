var _ = require('lodash');

module.exports = function (injected) {

    return function (history) {

        var counter = 0;
        var board = [ 
                        [ 0, 0, 0 ],
                        [ 0, 0, 0 ],
                        [ 0, 0, 0 ] 
                    ];

        var gamefull = false; 

        function processEvent(event) {
            if(event.type==="GameJoined") {
                gamefull=true;
            } 

            if(event.type==="MovePlaced") {
                board[event.cords.x][event.cords.y] = 'X';
                counter++;

            }

            





            


            console.log("event", event);
        }

        function processEvents(history) {
            _.each(history, processEvent);
        }

        function gameFull() {
            return gamefull;
        }

        function occupied(event) {
            if(board[event.x][event.y] !== 0) {
                return true;
            }
            return false;
        }


        processEvents(history);

        return {
            occupied: occupied,
            gameFull:gameFull,
            processEvents: processEvents
        }
    };
};
