if not vim.g.vscode then
    return
end

function call(action)
    return function()
        vim.api.nvim_command('call VSCodeNotify("' .. action .. '")')
    end
end

function bind(key, action)
    vim.keymap.set('n', key, call(action))
end

bind('gr', 'editor.action.rename')
bind('gf', 'editor.action.quickFix')
bind('gu', 'references-view.findReferences')

bind('[d', 'editor.action.marker.next')
bind(']d', 'editor.action.marker.prev')
