function scSpriteAnimate()
{
    var _OldSprite = sprite_index;

    // -- Moving --
    if (MoveX != 0 || MoveY != 0)
    {
        // Horizontal movement
        if (abs(MoveX) > abs(MoveY))
        {
            if (MoveX > 0)
            {
                sprite_index = WalkSpriteR;
                direction = 0;
            }
            else
            {
                sprite_index = WalkSpriteL;
                direction = 180;
            }
        }

        // Vertical movement
        else
        {
            if (MoveY > 0)
            {
                sprite_index = WalkSpriteD;
                direction = 270;
            }
            else
            {
                sprite_index = WalkSpriteU;
                direction = 90;
            }
        }
    }

    // -- Idle --
    else
    {
        // Keep the last facing direction
        if (direction == 0)
        {
            sprite_index = IdleSpriteR;
        }
        else if (direction == 180)
        {
            sprite_index = IdleSpriteL;
        }
        else if (direction == 90)
        {
            sprite_index = IdleSpriteU;
        }
        else if (direction == 270)
        {
            sprite_index = IdleSpriteD;
        }
    }

    // Reset animation frame when sprite changes
    if (_OldSprite != sprite_index)
    {
        image_index = 0;
    }
}