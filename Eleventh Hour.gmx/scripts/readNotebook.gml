#define readNotebook
randomize();
global.rnGESUS = irandom_range(0,100)
global.projectCompletion = argument0
global.currentMinute = argument1
global.boredomMeter = argument2

//script0_execute(global.projectCompletion,global.currentMinute,global.boredomMeter)
if (mouse_check_button_pressed)//Read Notebook)) {
    if (global.rnGESUS >= 50) {
        argument0 += 5
        argument1 += 3
        argument2 += 3 
    }
    else
    {
        argument1 += 3
        argument2 += 3
    }

#define askFriend
if (mouse_check_button_pressed)//(Ask Friend))
    {
        argument2 = argument2 - 5
        argument1 = argument1 + 5
    }

#define playGames
if (mouse_check_button_pressed)//(Play games))
    {
        argument1 = argument1 + 5
        argument2 = argument2 - 5
    }

#define watchVideo
if (mouse_check_button_pressed)//(watch video))
    {
        argument1 = argument1 + 3
        argument2 = argument2 - 3
    }