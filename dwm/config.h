static const unsigned int borderpx = 2; /* border pixel of windows */

static const unsigned int barpadv	= 0;		/* bar vertical padding (from top)*/
static const unsigned int barpadh	= 800;		/* bar vertical padding (from top)*/
static const unsigned int barheight	= 0;		/* bar vertical padding (from top)*/
static const unsigned int barborder	= 0;		/* bar vertical padding (from top)*/

static const unsigned int floatbar	= 0;		/* 0 means bar won't float; float or dock the bar */
static const unsigned int gappx = 35;   /* gaps between windows */
static const unsigned int snap = 20;    /* snap pixel */
static const int showbar = 0;           /* 0 means no bar */
static const int topbar = 0;            /* 0 means bottom bar */
static const char *fonts[] = {"JetbrainsMono NF:size=14"};
static const char dmenufont[] = "JetbrainsMono NF:size=14";
static const char col_gray1[] = "#1e1e2e";
static const char col_gray2[] = "#aaaaaa";
static const char col_gray3[] = "#aaaaaa";
static const char col_gray4[] = "#aaaaaa";
static const char col_cyan[] = "#dedede";
static const char *colors[][3] = {
    /*               fg         bg         border   */
    [SchemeNorm] = {col_gray4, col_gray1, col_gray4},
    [SchemeSel] = {col_gray1, col_cyan, col_cyan},
    [SchemeBar] = { NULL, NULL, col_cyan},
};

/* tagging */
static const char *tags[] = {"1", "2", "3", "4", "5", "6", "7", "8", "9"};

static const Rule rules[] = {
    /* class      instance    title       tags mask     isfloating   monitor */
    {"Gimp", NULL, NULL, 0, 1, -1},
};

/* layout(s) */
static const float mfact = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster = 1;    /* number of clients in master area */
static const int resizehints =
    1; /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen =
    1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
    /* symbol     arrange function */
    {"[]=", tile}, /* first entry is default */
    {"><>", NULL}, /* no layout function means floating behavior */
    {"[M]", monocle},
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY, TAG)                                                      \
  {MODKEY, KEY, view, {.ui = 1 << TAG}},                                       \
      {MODKEY | ControlMask, KEY, toggleview, {.ui = 1 << TAG}},               \
      {MODKEY | ShiftMask, KEY, tag, {.ui = 1 << TAG}},                        \
      {MODKEY | ControlMask | ShiftMask, KEY, toggletag, {.ui = 1 << TAG}},

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd)                                                             \
  {                                                                            \
    .v = (const char *[]) { "/bin/sh", "-c", cmd, NULL }                       \
  }

/* commands */
static char dmenumon[2] =
    "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = {
    "dmenu_run", "-m",      dmenumon, "-fn",    dmenufont, "-nb",     col_gray1,
    "-nf",       col_gray3, "-sb",    col_cyan, "-sf",     col_gray1, NULL};
static const char *termcmd[] = {"st", NULL};
static const char *wallpaper_toggle[] = {
    "feh", "--bg-fill", "/home/mgalli/Pictures/wallpapers/void.png", NULL};
static const char *battify[] = {"/home/mgalli/Scripts/battify.sh", NULL};
static const char *dattify[] = {"/home/mgalli/Scripts/dattify.sh", NULL};
static const char *screenshot[] = {"flameshot", "gui", NULL};
static const char *lock_screen[] = {
    "feh", "--bg-fill", "/home/mgalli/Pictures/wallpapers/lock.png", NULL};
static const char *go_to_sleep[] = {"zzz", NULL};

/* patching */
#include "patches/shiftview.c"

static const Key keys[] = {
    /* modifier                     key        function        argument */
    {MODKEY, XK_space, spawn, {.v = dmenucmd}},
    {MODKEY, XK_Return, spawn, {.v = termcmd}},
    {MODKEY, XK_w, spawn, {.v = wallpaper_toggle}},

    {MODKEY, XK_q, killclient, {0}},
    {MODKEY | ShiftMask, XK_space, togglefloating, {0}},

    {MODKEY, XK_minus, setgaps, {.i = -1}},
    {MODKEY, XK_equal, setgaps, {.i = +1}},
    {MODKEY | ShiftMask, XK_equal, setgaps, {.i = 0}},

    {MODKEY | ShiftMask, XK_b, spawn, {.v = battify}},
    {MODKEY | ShiftMask, XK_d, spawn, {.v = dattify}},
    {MODKEY | ShiftMask, XK_s, spawn, {.v = screenshot}},

    {MODKEY | ShiftMask, XK_z, spawn, {.v = go_to_sleep}},

    {MODKEY, XK_h, focusstack, {.i = +1}},
    {MODKEY, XK_l, focusstack, {.i = -1}},
    {MODKEY, XK_j, focusstack, {.i = +2}},
    {MODKEY, XK_k, focusstack, {.i = -2}},

    {MODKEY, XK_n, shiftview, {.i = +1}},
    {MODKEY, XK_b, shiftview, {.i = -1}},

    TAGKEYS(XK_1, 0) TAGKEYS(XK_2, 1) TAGKEYS(XK_3, 2) TAGKEYS(XK_4, 3)
        TAGKEYS(XK_5, 4) TAGKEYS(XK_6, 5) TAGKEYS(XK_7, 6) TAGKEYS(XK_8, 7)
            TAGKEYS(XK_9, 8){MODKEY | ShiftMask, XK_q, quit, {0}},
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle,
 * ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
    /* click                event mask      button          function argument */
    {ClkLtSymbol, 0, Button1, setlayout, {0}},
    {ClkLtSymbol, 0, Button3, setlayout, {.v = &layouts[2]}},
    {ClkWinTitle, 0, Button2, zoom, {0}},
    {ClkStatusText, 0, Button2, spawn, {.v = termcmd}},
    {ClkClientWin, MODKEY, Button1, movemouse, {0}},
    {ClkClientWin, MODKEY, Button2, togglefloating, {0}},
    {ClkClientWin, MODKEY, Button3, resizemouse, {0}},
    {ClkTagBar, 0, Button1, view, {0}},
    {ClkTagBar, 0, Button3, toggleview, {0}},
    {ClkTagBar, MODKEY, Button1, tag, {0}},
    {ClkTagBar, MODKEY, Button3, toggletag, {0}},
};
