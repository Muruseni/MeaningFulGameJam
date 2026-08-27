function scSittable(_object)
{
    with (oPlayer)
    {
        if (!Sitting)
        {
            Sitting = true;
            SitTargetX = _object.x - (sprite_width * 0.5);
            SitTargetY = _object.y - (sprite_height * 0.5);
            SitDirection = _object.SitDirection;
        }

        var _distance = point_distance(x, y, SitTargetX, SitTargetY);

        if (_distance > 1 && _distance > WalkSpeed)
        {
            move_towards_point(SitTargetX, SitTargetY, WalkSpeed);
        }
        else
        {
            // Snap to the exact sitting position
            x = SitTargetX;
            y = SitTargetY;

            FacingDirection = SitDirection;

            switch (SitDirection)
            {
                case "down":
                    direction = 270;
                    break;

                case "up":
                    direction = 90;
                    break;

                case "left":
                    direction = 180;
                    break;

                case "right":
                    direction = 0;
                    break;
            }

            speed = 0;
            Sitting = false;

            switch (SitDirection)
            {
                case "down":
                    sprite_index = IdleSpriteD;
                    break;

                case "up":
                    sprite_index = IdleSpriteU;
                    break;

                case "left":
                    sprite_index = IdleSpriteL;
                    break;

                case "right":
                    sprite_index = IdleSpriteR;
                    break;
            }

            image_index = 0;
        }
    }
}
