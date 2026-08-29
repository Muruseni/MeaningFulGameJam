// Draw the dialogue box / object sprite
// Draw the dialogue box / object sprite
if (dialogue_scale > 0)
{
    var _box_alpha = image_alpha;

    if (room == rTransition_Start ||
        room == rTransition_LD ||
        room == rTransition_DL ||
        room == rTransition_Ds ||
        room == rTransition_End||
        room == rCredits)
    {
        _box_alpha = 0;
    }

    draw_sprite_ext(
        sprite_index,
        image_index,
        x,
        y,
        image_xscale * dialogue_scale,
        image_yscale * dialogue_scale,
        image_angle,
        image_blend,
        _box_alpha
    );
}

// Draw dialogue text
if (is_dialogue_active && dialogue_scale > 0)
{
    draw_set_alpha(dialogue_text_alpha);

    scDialogueDraw(
        current_speaker,
        current_dialogue_text,
        x,
        y,
        1
    );

    draw_set_alpha(1);
}
