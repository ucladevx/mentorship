
function changeNumber() {
  document.getElementbyId("Rep").innerHTML = typeof(document.getElementById("Rep").innerHTML) ;
}

// Voting system -- Same as the one on the homepage
var currentVoteStates = new Object(); //unintialized 0, 1 upvoted, -1 novote
function incrementRep(initalState, noteID) {
	if (!currentVoteStates.hasOwnProperty(noteID)) //only care about initialState when unintialized
		currentVoteStates[noteID] = initalState;

	RepID = "Rep"+String(noteID);
	if (currentVoteStates[noteID] === 1) { //if upvoted, then unupvote
		document.getElementById(RepID).innerHTML = String(Number(document.getElementById(RepID).innerHTML)-1);
		currentVoteStates[noteID] = -1;
		document.getElementById('upvoteButton').innerHTML = "^";
	}
	else { //upvote
		document.getElementById(RepID).innerHTML = String(Number(document.getElementById(RepID).innerHTML)+1);
		currentVoteStates[noteID] = 1;
		document.getElementById('upvoteButton').innerHTML = "v";
	}
}

