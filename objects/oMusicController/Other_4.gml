if (MusicStart == false){
    my_musicCh = audio_play_sound(soChildhood_Bg, 1, true);
    audio_sound_gain(my_musicCh, 0, 0);

    my_musicCv = audio_play_sound(soCOVID_Bg, 1, true);
    audio_sound_gain(my_musicCv, 0, 0);
    
    MusicStart = true;
}

if (room == rBasementDad_Ch) {
    
    audio_sound_gain(my_musicCh, 0.05, 7000);
    
} else if (room == rDsAtNight_Ch) {
    
    audio_sound_gain(my_musicCh, 0.01, 3000);
    
} else if (room == rTransition_LD) {
    
    audio_sound_gain(my_musicCh, 0, 3000);
    
} else if (room == rBasement_CV){
    
    audio_sound_gain(my_musicCv, 0.01, 7000);
    
} else if (room == rTransition_DL) {

    audio_sound_gain(my_musicCv, 0, 3000);
    
} else if (room == rApartment_CY) {

    audio_sound_gain(my_musicCh, 0.05, 7000);
    
} else if (room == rCredits) {

    audio_sound_gain(my_musicCh, 0.06, 3000);
    
}