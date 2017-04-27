/// scr_actionbox("text", x, y, ActionOne, ActionTwo, ActionThree);

//Creates an instance of obj_actbox

txt = instance_create(argument1, argument2, obj_actbox);

with (txt)
{
    padding = 8;
    maxlength = view_wview[0];
    text = argument0;
    font = fnt;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size + (font_size / 2), maxlength);
    text_height = string_height_ext(text, font_size + (font_size / 2), maxlength);
    
    boxwidth = text_width + (padding * 2);
    boxheight = text_height + (padding * 2);
    
    global.ActionOne = argument3
    global.ActionTwo = argument4
    global.ActionThree = argument5
}
