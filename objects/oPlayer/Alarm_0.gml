TransitionAlpha -= 0.05;

if (TransitionAlpha > 0)
{
    alarm[0] = 1;
}
else
{
    TransitionAlpha = 0;
    Transitioning = false;
}
