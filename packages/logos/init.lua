local base = require("packages.base")

local package = pl.class(base)
package._name = "logos"

local function script_path ()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

function package:_init ()
	base._init(self)
end

function package:registerCommands ()
	base.registerCommands(self)
	-- The first iteration of this package was a collection of commands
	-- registered using \define{} macros in the SIL input format. They should
	-- probably be refactored using Lua, but to get the party started with SILE
	-- v0.13 package support we'll just process them here.
	SILE.processFile(script_path() .. "macros.sil")
end

return package
