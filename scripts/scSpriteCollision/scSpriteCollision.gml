function scSpriteCollision()
{   
    
    var _width;
    var _height;

   switch (FacingDirection)
   {
       case "right":
           _width = CollisionRightWidth;
           _height = CollisionRightHeight;
           break;
   
       case "left":
           _width = CollisionLeftWidth;
           _height = CollisionLeftHeight;
           break;
   
       case "up":
           _width = CollisionUpWidth;
           _height = CollisionUpHeight;
           break;
   
       case "down":
           _width = CollisionDownWidth;
           _height = CollisionDownHeight;
           break;
   }

    // Horizontal sprite
    if (MoveX != 0 && MoveY == 0)
    {
        _width = 42;
        _height = 32;
    }

    // Diagonal movement
    else if (MoveX != 0 && MoveY != 0)
    {
        if (abs(MoveX) > abs(MoveY))
        {
            _width = 42;
            _height = 32;
        }
        else
        {
            _width = 23;
            _height = 43;
        }
    }


    // =========================================================
    // HORIZONTAL MOVEMENT
    // =========================================================

    if (MoveX != 0)
    {
        var _newX = x + MoveX;

        // -----------------------------------------------------
        // RIGHT
        // -----------------------------------------------------

        if (MoveX > 0)
        {
            // The first pixel outside the collision box
            var _right = _newX + _width;

            var _topTile = floor(y / TILE_SIZE);
            var _bottomTile = floor((y + _height - 1) / TILE_SIZE);

            // Tile the right edge is entering
            var _rightTile = floor(_right / TILE_SIZE);

            var _collision = false;

            for (var _ty = _topTile; _ty <= _bottomTile; _ty++)
            {
                var _checkX = _rightTile * TILE_SIZE + TILE_SIZE * 0.5;
                var _checkY = _ty * TILE_SIZE + TILE_SIZE * 0.5;

                if (tilemap_get_at_pixel(
                    CollisionMap,
                    _checkX,
                    _checkY
                ) == 1)
                {
                    _collision = true;
                    break;
                }
            }

            if (_collision)
            {
                // Put the right edge exactly against the tile
                _newX = _rightTile * TILE_SIZE - _width;

                MoveX = 0;
            }
        }

        // -----------------------------------------------------
        // LEFT
        // -----------------------------------------------------

        else
        {
            var _left = _newX;

            var _topTile = floor(y / TILE_SIZE);
            var _bottomTile = floor((y + _height - 1) / TILE_SIZE);

            // Tile containing the left edge
            var _leftTile = floor(_left / TILE_SIZE);

            var _collision = false;

            for (var _ty = _topTile; _ty <= _bottomTile; _ty++)
            {
                var _checkX = _leftTile * TILE_SIZE + TILE_SIZE * 0.5;
                var _checkY = _ty * TILE_SIZE + TILE_SIZE * 0.5;

                if (tilemap_get_at_pixel(
                    CollisionMap,
                    _checkX,
                    _checkY
                ) == 1)
                {
                    _collision = true;
                    break;
                }
            }

            if (_collision)
            {
                _newX = (_leftTile + 1) * TILE_SIZE;

                MoveX = 0;
            }
        }

        x = _newX;
    }


    // =========================================================
    // VERTICAL MOVEMENT
    // =========================================================

    if (MoveY != 0)
    {
        var _newY = y + MoveY;

        // -----------------------------------------------------
        // DOWN
        // -----------------------------------------------------

        if (MoveY > 0)
        {
            // First pixel outside the collision box
            var _bottom = _newY + _height;

            var _leftTile = floor(x / TILE_SIZE);
            var _rightTile = floor((x + _width - 1) / TILE_SIZE);

            // Tile row the bottom edge is entering
            var _bottomTile = floor(_bottom / TILE_SIZE);

            var _collision = false;

            for (var _tx = _leftTile; _tx <= _rightTile; _tx++)
            {
                var _checkX = _tx * TILE_SIZE + TILE_SIZE * 0.5;
                var _checkY = _bottomTile * TILE_SIZE + TILE_SIZE * 0.5;

                if (tilemap_get_at_pixel(
                    CollisionMap,
                    _checkX,
                    _checkY
                ) == 1)
                {
                    _collision = true;
                    break;
                }
            }

            if (_collision)
            {
                // Put bottom exactly against top of tile
                _newY = _bottomTile * TILE_SIZE - _height;

                MoveY = 0;
            }
        }

        // -----------------------------------------------------
        // UP
        // -----------------------------------------------------

        else
        {
            var _top = _newY;

            var _leftTile = floor(x / TILE_SIZE);
            var _rightTile = floor((x + _width - 1) / TILE_SIZE);

            var _topTile = floor(_top / TILE_SIZE);

            var _collision = false;

            for (var _tx = _leftTile; _tx <= _rightTile; _tx++)
            {
                var _checkX = _tx * TILE_SIZE + TILE_SIZE * 0.5;
                var _checkY = _topTile * TILE_SIZE + TILE_SIZE * 0.5;

                if (tilemap_get_at_pixel(
                    CollisionMap,
                    _checkX,
                    _checkY
                ) == 1)
                {
                    _collision = true;
                    break;
                }
            }

            if (_collision)
            {
                _newY = (_topTile + 1) * TILE_SIZE;

                MoveY = 0;
            }
        }

        y = _newY;
    }
}