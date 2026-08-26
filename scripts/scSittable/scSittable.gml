function scSittable(_object)
{
    with (oPlayer)
    {
        if (!Sitting)
        {
            Sitting = true;
            SitTargetX = _object.x;
            SitTargetY = _object.y;
            SitDirection = _object.SitDirection;
        }

        var _distance = point_distance(x, y, SitTargetX, SitTargetY);

        if (_distance > 1)
        {
            move_towards_point(SitTargetX, SitTargetY, WalkSpeed);
        }
        else
        {
            x = SitTargetX;
            y = SitTargetY;

            FacingDirection = SitDirection;
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
