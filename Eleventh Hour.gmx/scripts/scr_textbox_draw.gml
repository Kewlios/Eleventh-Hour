/// Draws the string and the box
draw_set_alpha(.5);
draw_roundrect_colour(x, y, x + width, y + height, c_black, c_black, false);
draw_set_alpha(1); 

/// Sets the color to white
draw_set_color(c_white);

/// Checks if string is past the width. If so, insert a line break.
/// Code MUST be before getting the last_space variable or it won't work correctly.
if (string_width(str) > width - padding - padding) {
    message = string_delete(message, last_space, 1);
    message = string_insert("#", message, last_space);
    ds_list_add(start, last_space + 1);
}

/// Checks if string is at the end of the message. If so, set the last_space variable.
if (count < string_length(message)) {
    if (string_char_at(message, count) == " " ) {
        last_space = count;
    }
    /// Increment the count
    count ++;
}

/// Checks if message went past the bottom. If so, moves it up a line.
if (string_height(str) > height - padding ) {
    line ++;
}

/// Grabs the message
str = string_copy(message, ds_list_find_value(start, line), count - ds_list_find_value(start, line));

/// Draws the text
draw_text(x + padding, y + padding, str);
