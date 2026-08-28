var _fade_speed = 0.05;

// Fade in much slower after leaving the DS room
if (TransitionFromDs)
{
    _fade_speed = 0.01;
}

TransitionAlpha -= _fade_speed;

if (TransitionAlpha > 0)
{
    alarm[0] = 1;
}
else
{
    TransitionAlpha = 0;
    Transitioning = false;
    TransitionFromDs = false;
}
