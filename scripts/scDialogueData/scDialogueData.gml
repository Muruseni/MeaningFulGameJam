function scDialogueData(_room, _object)
{
    if (_room == rTransition_Start && _object == noone)
    {
        return {
            entries: [
                ["", "This is for us"],
                ["", ""],
                ["", "The ones who grew up..."]
            ],
            once: false
        };
    }
    else if (_room == rBasementDad_Ch && _object == noone)
    {
        return {
            entries: [
                ["You:", "Dadddddd"],
                ["", ""],
                ["You:", "Can I play with you"],
                ["", ""],
                ["Dad:", "Hey Kiddo, ", function()
                {
                    oDad.sprite_index = sDad;
                }],
                ["", ""],
                ["Dad:", "Yeah, come join me"]
            ],
            once: true
        };
    }
    else if (_room == rBasementDad_Ch && _object.object_index == oCouch)
    {
        return {
            entries: [
                ["", "*Button Smashing*"],
                ["", ""],
                ["Tv:", "Winner: Player 2!"],
                ["", ""],
                ["You:", "WOOO!"],
                ["", ""],
                ["Dad:", "Wow, ya got me."],
                ["", ""],
                ["Dad:", "First time you actuaily beat me at this"],
                ["", ""],
                ["Dad:", "Good job kid"],
                ["", ""],
                ["You:", ":D"]
            ],
            once: true
        };
    }
    else if (_room == rDsAtNight_Ch && _object == noone)
    {
        return {
            entries: [
                ["", "No matter *when* we were..."]
            ],
            once: true
        };
    }
    else if (_room == rTransition_LD && _object == noone)
    {
        return {
            entries: [
                ["", "Or what we were going through..."]
            ],
            once: true
        };
    }
    else if (_room == rTransition_DL && _object == noone)
    {
        return {
            entries: [
                ["", "Games were always there for us"]
            ],
            once: true
        };
    }
    else if (_room == rTransition_End && _object == noone)
    {
        return {
            entries: [
                ["", "And Always Will be"]
            ],
            once: true
        };
    }
    else if (_room == rCredits && _object == noone)
    {
        return {
            entries: [
                ["", "Thank you to the games who have shaped us.."],
                ["", ""],
                ["", "Protected us.."],
                ["", ""],
                ["", "The ones set deep in our memories"],
                ["", ""],
                ["", "... And to thoes who created them."],
                ["", ""],
                ["", " "],
                ["", "A game by Muru and Moggo"],
                ["", ""],
                ["", "Thank you for playing <3"]
            ],
            once: true
        };
    }

    return undefined;
}
