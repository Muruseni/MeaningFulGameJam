function scDialogueDraw(
    _speaker,
    _text,
    _x,
    _y,
    _scale
)
{
    var _padding_x = 15;
    var _padding_y = 15;

    // Since the sprite origin is CENTER,
    // calculate the top-left of the scaled box.
    var _left = _x - (sprite_width * _scale * 0.5);
    var _top = _y - (sprite_height * _scale * 0.5);

    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    draw_text_transformed(
        _left + (_padding_x * _scale),
        _top + (_padding_y * _scale),
        _speaker,
        _scale,
        _scale,
        0
    );

    draw_text_ext_transformed(
        _left + (_padding_x * _scale),
        _top + ((_padding_y + 25) * _scale),
        _text,
        20,
        (sprite_width - (_padding_x * 2)) * _scale,
        _scale,
        _scale,
        0
    );

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}
