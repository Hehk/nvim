require("hehk")
require("plugins")

vim.o.number = true
vim.o.relativenumber = true

vim.keymap.set('i', '<C-t>', function()
    local current_line = vim.lua.nvim_get_current_line()
    local todo = '- [ ]'
    local done = '- [x]'

    local new_line = current_line
    if string.sub(current_line, 1, todo) then
        new_line = string.gsub(new_line, todo, done)
    elseif string.sub(current_line, 1, done) then
        new_line = string.gsub(new_line, todo, "")
    else
        new_line = todo .. " " .. current_line
    end

    vim.api.nvim_set_current_line(new_line)
end)
