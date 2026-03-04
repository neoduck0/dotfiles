vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.o.scrolloff = 10

vim.o.clipboard = "unnamedplus"

vim.o.mouse = ""

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.wrap = false

vim.o.spell = true
vim.o.spelllang = "en_us"

vim.o.smoothscroll = true

vim.cmd.colorscheme("tokyonight-night")

-- format file on write
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.lsp.buf.format({ async = false })
        vim.fn.setpos(".", save_cursor)
    end,
})
