static int topbar = 0;
static const char *fonts[] = {"JetbrainsMono NF:size=14"};
static const char *prompt      = NULL;      static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#dedede", "#000000" },
	[SchemeSel] = { "#000000", "#dedede" },
	[SchemeOut] = { "#000000", "#00ffff" },
};

static unsigned int lines      = 0;
static const char worddelimiters[] = " ";
