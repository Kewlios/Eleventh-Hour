/// scr_actionbox_item

txt_item = instance_create(argument1, argument2, obj_actbox);

with (txt_item)
{
    draw_self();
    draw_set_colour(c_white);
    draw_set_font(fnt_act);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y, string(text));
}

ds_list_destroy(myList);
myList = ds_list_create();
ds_list_add(myList, "Action 1", "Action 2", "Action 3");

//globalmouseleftpressed event

if (position_meeting(mouse_x, mouse_y, self))
{
    if (instance_exists(obj_menuItem))
    {
        with (obj_menuItem)
        {
            instance_destroy();
        }
    }
    
    else
    {
        var yIncrement = sprite_get_height(spr_menu);
        var yy = y + yIncrement - 2;
        for (var i = 0; i < ds_list_size(myList); i++)
        {
            var item = instance_create(x, yy, obj_menuItem);
            item.text = ds_list_find_value(myList, i)
            yy += yIncrement - 2;
        }
    }
}

else
{
    if (!position_meeting(mouse_x, mouse_y, obj_menuItem))
    {
        if (instance_exists(obj_menuItem))
        
        with (obj_menuItem)
        {
            instance_destroy();
        }
    }
}

