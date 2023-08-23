// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    {"| 📦 ", "~/.local/bin/scripts/xbps-updates", 360, 2},

    {" 💻 ", "~/.local/bin/scripts/brightness", 5, 0},

    {" 🔊 ", "~/.local/bin/scripts/volume", 5, 0},

    {" 🕑 ", "~/.local/bin/scripts/clock", 60, 2},
};

// sets delimeter between status commands. NULL character ('\0') means no
// delimeter.
static char delim = '|';
