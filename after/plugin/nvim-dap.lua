
local dap = require('dap')
dap.adapters.python = {
    type = 'executable';
    command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
    args = { '-m', 'debugpy.adapter' };
}

require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require('nvim-dap-virtual-text').setup()
require('dapui').setup()
require("neodev").setup({
    library = { plugins = {"nvim-dap-ui"}, types = true}
})

