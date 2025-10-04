/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 169381E5
/// @DnDArgument : "code" "// Horizontal movement$(13_10)var hmove = 0;$(13_10)$(13_10)if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {$(13_10)    hmove = 1;$(13_10)}$(13_10)if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {$(13_10)    hmove = -1;$(13_10)}$(13_10)$(13_10)// Apply horizontal movement$(13_10)x += hmove * move_speed;$(13_10)$(13_10)// Gravity$(13_10)vsp += gravity;$(13_10)$(13_10)// Jumping (only if on ground)$(13_10)if (keyboard_check_pressed(vk_space) && on_ground) {$(13_10)    vsp = jump_speed;$(13_10)    on_ground = false;$(13_10)}$(13_10)$(13_10)// Apply vertical movement$(13_10)y += vsp;$(13_10)$(13_10)// Ground collision (simple version — replace with proper collision check)$(13_10)if (place_meeting(x, y + 1, obj_ground)) {$(13_10)    on_ground = true;$(13_10)    vsp = 0;$(13_10)$(13_10)    // Snap to the ground$(13_10)    while (!place_meeting(x, y, obj_ground)) {$(13_10)        y += 1;$(13_10)    }$(13_10)} else {$(13_10)    on_ground = false;$(13_10)}$(13_10)"
// Horizontal movement
var hmove = 0;

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    hmove = 1;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    hmove = -1;
}

// Apply horizontal movement
x += hmove * move_speed;

// Gravity
vsp += gravity;

// Jumping (only if on ground)
if (keyboard_check_pressed(vk_space) && on_ground) {
    vsp = jump_speed;
    on_ground = false;
}

// Apply vertical movement
y += vsp;

// Ground collision (simple version — replace with proper collision check)
if (place_meeting(x, y + 1, obj_ground)) {
    on_ground = true;
    vsp = 0;

    // Snap to the ground
    while (!place_meeting(x, y, obj_ground)) {
        y += 1;
    }
} else {
    on_ground = false;
}