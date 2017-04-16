/// Variables
width = 240;
height = 120;
padding = 8;

/// Tracks starting line
start = ds_list_create( );
ds_list_add( start, 0);

/// Tracks the last space and current position
count = 0;
last_space = 0;
line = 0;

/// The Message
message = "";
str = "";
