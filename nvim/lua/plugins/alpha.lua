return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[.------------------------------------------------------------------------------.]],
			[[|                             .mmMMMMMMMMMMMMMmm.                              |]],
			[[|                         .mMMMMMMMMMMMMMMMMMMMMMMMm.                          |]],
			[[|                      .mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm.                       |]],
			[[|                    .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.                     |]],
			[[|                  .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.                   |]],
			[[|                 MMMMMMMM'  `"MMMMM"""""""MMMM""`  'MMMMMMMM                  |]],
			[[|                MMMMMMMMM                           MMMMMMMMM                 |]],
			[[|               MMMMMMMMMM:                         :MMMMMMMMMM                |]],
			[[|              .MMMMMMMMMM                           MMMMMMMMMM.               |]],
			[[|              MMMMMMMMM"                             "MMMMMMMMM               |]],
			[[|              MMMMMMMMM                               MMMMMMMMM               |]],
			[[|              MMMMMMMMM                               MMMMMMMMM               |]],
			[[|              MMMMMMMMMM                             MMMMMMMMMM               |]],
			[[|              `MMMMMMMMMM                           MMMMMMMMMM`               |]],
			[[|               MMMMMMMMMMMM.                     .MMMMMMMMMMMM                |]],
			[[|                MMMMMM  MMMMMMMMMM         MMMMMMMMMMMMMMMMMM                 |]],
			[[|                 MMMMMM  'MMMMMMM           MMMMMMMMMMMMMMMM                  |]],
			[[|                  `MMMMMM  "MMMMM           MMMMMMMMMMMMMM`                   |]],
			[[|                    `MMMMMm                 MMMMMMMMMMMM`                     |]],
			[[|                      `"MMMMMMMMM           MMMMMMMMM"`                       |]],
			[[|                         `"MMMMMM           MMMMMM"`                          |]],
			[[|                             `""M           M""`                              |]],
			[['------------------------------------------------------------------------------']],
		}
		dashboard.section.buttons.val = {}
		alpha.setup(dashboard.opts)
	end,
}
