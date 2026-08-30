CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));
FloorMap = layer_tilemap_get_id(layer_get_id("Floor"));
layer_set_visible(layer_get_id("Col"), false);

if (room == rTransition_Start ||
    room == rTransition_Ds ||
    room == rTransition_LD ||
    room == rTransition_DL ||
    room == rTransition_End
    ){ 
    WalkSpeed = 3;
} else {
    WalkSpeed = 1;
}


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

CollisionLeftWidth = 23;
CollisionLeftHeight = 32;

CollisionRightWidth = 23;
CollisionRightHeight = 32;

// Current facing direction
FacingDirection = "down";

// Sprites
if (room == rBasementDad_Ch){
    oDad.sprite_index = sDad_Half;
}

if (room == rTransition_Start ||
    room == rBasementDad_Ch ||
    room == rTransition_Ds ||
    room == rTransition_LD
    ){
    
    WalkSpriteL = sPlayer_walk_left_child;
    WalkSpriteR = sPlayer_walk_right_child;
    WalkSpriteU = sPlayer_walk_up_child; // edit to m,ake it look idle
    WalkSpriteD = sPlayer_walk_right_child; 

    IdleSpriteL = sPlayer_idle_left_child;
    IdleSpriteR = sPlayer_idle_right_child;
    IdleSpriteU = sPlayer_idle_up_child;
    IdleSpriteD = sPlayer_idle_down_child;
    
} else if (room == rDsAtNight_Ch){
    
    WalkSpriteL = sPlayer_idle_ds;
    WalkSpriteR = sPlayer_idle_ds;
    WalkSpriteU = sPlayer_idle_ds;
    WalkSpriteD = sPlayer_idle_ds;

    IdleSpriteL = sPlayer_idle_ds;
    IdleSpriteR = sPlayer_idle_ds;
    IdleSpriteU = sPlayer_idle_ds;
    IdleSpriteD = sPlayer_idle_ds;
    
}else {
    
    WalkSpriteL = sPlayer_walk_left_teen;
    WalkSpriteR = sPlayer_walk_right_teen;
    WalkSpriteU = sPlayer_walk_up_teen;
    WalkSpriteD = sPlayer_walk_down_teen;

    IdleSpriteL = sPlayer_idle_left_teen;
    IdleSpriteR = sPlayer_idle_right_teen;
    IdleSpriteU = sPlayer_idle_up_teen;
    IdleSpriteD = sPlayer_idle_down_teen;
    
}


// Room transition
Transitioning = false;
TransitionAlpha = 0;

PopTimer = 0;
PopHeight = 0;

MoveX = 0;
MoveY = 0;
