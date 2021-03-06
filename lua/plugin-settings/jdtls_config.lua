local M = {}
function M.setup()
	require('jdtls').start_or_attach({cmd = {'launch_jdtls'}})
end
return M
