local base = require("packages.base")

local package = pl.class(base)
package._name = "sile-logos"

function package:_init ()
	base._init(self)
end

function package:registerCommands ()
	-- The first iteration of this package was a collection of commands
	-- registered using \define{} macros in the SIL input format. They should
	-- probably be refactored using Lua, but to get the party started with SILE
	-- v0.13 package support we'll just process them here.
	SILE.processFile(self.basedir .. "macros.sil")
end

return package
