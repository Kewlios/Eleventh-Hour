/// scr_top_instance_position(x, y, object)

///Parameters
var xx = argument0;
var yy = argument1;
var object = argument2;

///Create the instance list
var instance_list = ds_list_create();

///Find the first instance
var instance = instance_position(xx, yy, object);

///Create the top instance variable
var top_instance = instance;

///Loop through each instance, check the depth
while instance_exists(instance) {
    ds_list_add(instance_list, instance);
    instance_deactivate_object(instance);
    if instance.depth < top_instance.depth {
        top_instance = instance;
    }
    instance = instance_position(xx, yy, object);
}

///Reactive all the instances
while ds_list_size(instance_list) > 0 {
    instance_activate_object(instance_list[| 0]);
    ds_list_delete(instance_list, 0);
}

///Destroy the list
ds_list_destroy(instance_list);

///Return the top instance
return top_instance;

