CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));
FloorMap = layer_tilemap_get_id(layer_get_id("Floor"));
layer_set_visible(layer_get_id("Col"), false);

WalkSpeed = 3;

InteractDistance = 24;

// Sitting
Sitting = false;
SitTargetX = x;
SitTargetY = y;
SitDirection = "down";

// Footstep settings
FootstepTimer = 0;
FootstepDelay = 28;

// Collision sizes
CollisionUpWidth = 23;
CollisionUpHeight = 43;

CollisionDownWidth = 23;
CollisionDownHeight = 43;

CollisionLeftWidth = 42;
CollisionLeftHeight = 32;

CollisionRightWidth = 42;
CollisionRightHeight = 32;

// Current facing direction
FacingDirection = "down";

// Sprites
WalkSpriteL = sPlayer_walk_left;
WalkSpriteR = sPlayer_walk_right;
WalkSpriteU = sPlayer_walk_up;
WalkSpriteD = sPlayer_walk_down;

IdleSpriteL = sPlayer_idle_left;
IdleSpriteR = sPlayer_idle_right;
IdleSpriteU = sPlayer_idle_up;
IdleSpriteD = sPlayer_idle_down;

// Room transition
Transitioning = false;
TransitionAlpha = 0;

PopTimer = 0;
PopHeight = 0;
