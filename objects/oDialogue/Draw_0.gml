// Draw the dialogue box / object sprite
if (dialogue_scale > 0)
{
    draw_sprite_ext(
        sprite_index,
        image_index,
        x,
        y,
        image_xscale * dialogue_scale,
        image_yscale * dialogue_scale,
        image_angle,
        image_blend,
        image_alpha
    );
}

// Draw dialogue text
if (is_dialogue_active && dialogue_scale > 0)
{
    scDialogueDraw(
        current_speaker,
        current_dialogue_text,
        x,
        y,
        dialogue_scale
    );
}
