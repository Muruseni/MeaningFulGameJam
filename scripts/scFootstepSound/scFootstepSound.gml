function scFootstepSound()
{
    // Count down the footstep timer
    if (FootstepTimer > 0)
    {
        FootstepTimer--;
    }

    // Don't play footsteps when standing still
    if (MoveX == 0 && MoveY == 0)
    {
        return;
    }

    // Wait for the next footstep
    if (FootstepTimer > 0)
    {
        return;
    }

    // ---------------------------------------------------------
    // Get the bottom-center of the player's collision box
    // ---------------------------------------------------------

    var _footX;
    var _footY;

    switch (FacingDirection)
    {
        case "right":
            _footX = x + CollisionRightWidth * 0.5;
            _footY = y + CollisionRightHeight - 2;
            break;

        case "left":
            _footX = x + CollisionLeftWidth * 0.5;
            _footY = y + CollisionLeftHeight - 2;
            break;

        case "up":
            _footX = x + CollisionUpWidth * 0.5;
            _footY = y + CollisionUpHeight - 2;
            break;

        case "down":
            _footX = x + CollisionDownWidth * 0.5;
            _footY = y + CollisionDownHeight - 2;
            break;
    }

    // Get the floor tile underneath the feet
    var _tile_index = tilemap_get_at_pixel(
        FloorMap,
        _footX,
        _footY
    );

    // Wood: tiles 1-3
if (_tile_index >= 1 && _tile_index <= 3)
{
    audio_play_sound(
        choose(
            soStepWood_1,
            soStepWood_2,
            soStepWood_3,
            soStepWood_4,
            soStepWood_5,
            soStepWood_6,
            soStepWood_7
        ),
        1,
        false
    );
}

// Carpet: tiles 4-6
else if (_tile_index >= 4 && _tile_index <= 6)
{
    audio_play_sound(
        choose(
            soStepCarpet_1,
            soStepCarpet_2,
            soStepCarpet_3,
            soStepCarpet_4,
            soStepCarpet_5,
            soStepCarpet_6,
            soStepCarpet_7,
            soStepCarpet_8
        ),
        1,
        false
    );
}

// Tile: tile 7
else if (_tile_index == 7)
{
    audio_play_sound(
        choose(
            soStepTile_1,
            soStepTile_2,
            soStepTile_3,
            soStepTile_4,
            soStepTile_5,
            soStepTile_6,
            soStepTile_7,
            soStepTile_8,
        ),
        1,
        false
    );
}

    // Reset timer
    FootstepTimer = FootstepDelay;
}