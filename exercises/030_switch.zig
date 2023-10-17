//
// The "switch" statement lets you match the possible values of an
// expression and perform a different action for each.
//
// This switch:
//
//     switch (players) {
//         1 => startOnePlayerGame(),
//         2 => startTwoPlayerGame(),
//         else => {
//             alert();
//             return GameError.TooManyPlayers;
//         }
//     }
//
// Is equivalent to this if/else:
//
//     if (players == 1) startOnePlayerGame();
//     else if (players == 2) startTwoPlayerGame();
//     else {
//         alert();
//         return GameError.TooManyPlayers;
//     }
//
const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const lang_chars = [_]u8{ 26, 9, 7, 42 };

    for (lang_chars) |c| {
        switch (c) {
            1 => print("A", .{}),
            2 => print("B", .{}),
            3 => print("C", .{}),
            4 => print("D", .{}),
            5 => print("E", .{}),
            6 => print("F", .{}),
            7 => print("G", .{}),
            8 => print("H", .{}),
            9 => print("I", .{}),
            10 => print("J", .{}),
            // ... we don't need everything in between ...
            25 => print("Y", .{}),
            26 => print("Z", .{}),
            // Switch statements must be "exhaustive" (there must be a
            // match for every possible value).  Please add an "else"
            // to this switch to print a question mark "?" when c is
            // not one of the existing matches.
            else => print("?", .{}),
        }
    }

    std.debug.print("\n", .{});
}
