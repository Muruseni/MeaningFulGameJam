// Fade in when entering a room
if (TransitionAlpha > 0 && !Transitioning)
{
    TransitionAlpha -= 0.05;

    if (TransitionAlpha <= 0)
    {
        TransitionAlpha = 0;
    }
}


// -- Input --

LeftKey = keyboard_check(ord("A"));
RightKey = keyboard_check(ord("D"));
UpKey = keyboard_check(ord("W"));
DownKey = keyboard_check(ord("S"));
InteractKey = keyboard_check_pressed(ord("E"));


// -- Sitting --

if (Sitting)
{
    scSittable();
    return;
}


// -- Movement --

InputMagnitudeH = RightKey - LeftKey;
InputMagnitudeV = DownKey - UpKey;


if (room != rDsAtNight_Ch){
MoveX = InputMagnitudeH * WalkSpeed;
MoveY = InputMagnitudeV * WalkSpeed;
}

// Don't allow movement while dialogue is active
if (instance_exists(oDialogue))
{
    if (oDialogue.is_dialogue_active)
    {
        MoveX = 0;
        MoveY = 0;
    }
}


// Prevent diagonal movement from being faster

if (MoveX != 0 || MoveY != 0)
{
    var MoveLength = point_distance(0, 0, MoveX, MoveY);

    MoveX = (MoveX / MoveLength) * WalkSpeed;
    MoveY = (MoveY / MoveLength) * WalkSpeed;
}

if (MoveX > 0)
{
    FacingDirection = "right";
}
else if (MoveX < 0)
{
    FacingDirection = "left";
}
else if (MoveY > 0)
{
    FacingDirection = "down";
}
else if (MoveY < 0)
{
    FacingDirection = "up";
}


// Collision

scSpriteCollision();


// Interaction

if (InteractKey && !oDialogue.is_dialogue_active && !oDialogue.interaction_locked)
{
    var _interact_x = x;
    var _interact_y = y;

    switch (FacingDirection)
    {
        case "right":
            _interact_x += InteractDistance;
            break;

        case "left":
            _interact_x -= InteractDistance;
            break;

        case "down":
            _interact_y += InteractDistance;
            break;

        case "up":
            _interact_y -= InteractDistance;
            break;
    }

    var _interact_object = instance_place(
        _interact_x,
        _interact_y,
        oInteractable
    );

    if (_interact_object != noone)
    {
        _interact_object.Interact();
    }
}


// Room transition tile

var _transition = false;

var _centerX;
var _centerY;

// Get the center of the current collision box
switch (FacingDirection)
{
    case "right":
        _centerX = x + CollisionRightWidth * 0.5;
        _centerY = y + CollisionRightHeight * 0.5;
        break;

    case "left":
        _centerX = x + CollisionLeftWidth * 0.5;
        _centerY = y + CollisionLeftHeight * 0.5;
        break;

    case "up":
        _centerX = x + CollisionUpWidth * 0.5;
        _centerY = y + CollisionUpHeight * 0.5;
        break;

    case "down":
        _centerX = x + CollisionDownWidth * 0.5;
        _centerY = y + CollisionDownHeight * 0.5;
        break;
}


// Check the center of the collision box

if (tilemap_get_at_pixel(CollisionMap, _centerX, _centerY) == 2)
{
    _transition = true;
}

if (_transition && !Transitioning)
{
    Transitioning = true;
}


// Room transition fade

if (Transitioning)
{
    TransitionAlpha += 0.05;

    if (TransitionAlpha >= 0.95)
    {
        TransitionAlpha = 1;
        room_goto_next();
    }
}


// Animation

scSpriteAnimate();


// Footsteps

scFootstepSound();


// Player pop

if (PopTimer > 0)
{
    PopTimer--;
    
    PopHeight = -sin((PopTimer / 10) * pi) * 4;
}
else
{
    PopHeight = 0;
}
