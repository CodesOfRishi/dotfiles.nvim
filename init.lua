--[[
██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗ 
██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝ Rishi K.
--]]

-- load nvim configurations modules
local nvim_configuration_modules = { 
	"config.lazy",
	"config.options",
	"config.autocmds"
}

for i = 1, #nvim_configuration_modules, 1 do
	require(nvim_configuration_modules[i])
end
