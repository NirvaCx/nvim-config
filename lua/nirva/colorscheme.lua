local function set_colorscheme()
    -- Define your themes
    local true_color_scheme = "catppuccin"
    local tty_friendly_scheme = "default"

    -- First, check if we are in a true, basic TTY.
    -- The `$TERM` variable is the most reliable indicator for this.
    local is_real_tty = vim.env.TERM == "linux"

    if is_real_tty then
        -- If it's a real TTY, force the tty-friendly scheme and ignore all other checks.
        vim.o.termguicolors = false
        vim.cmd.colorscheme(tty_friendly_scheme)
    elseif vim.fn.has("termguicolors") then
        -- If it's not a basic TTY AND Neovim reports true color support, use the modern theme.
        vim.o.termguicolors = true
        vim.cmd.colorscheme(true_color_scheme)
    else
        -- Fallback for other non-true-color terminals (like a basic xterm).
        vim.cmd.colorscheme(tty_friendly_scheme)
    end
end

-- Use VimEnter to run this code after Neovim is fully initialized.
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    once = true,
    callback = set_colorscheme,
})
