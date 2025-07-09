return {
  'L3MON4D3/LuaSnip',
  opts = {
    enable_autosnippets = true,
    store_selection_keys = '<Tab>',
  },
  config = function(_, opts)
    local ls = require 'luasnip'
    ls.config.set_config(opts)

    -- Optional: load your custom snippets if you have any
    require('luasnip.loaders.from_lua').lazy_load { paths = '~/.config/nvim/lua/snippets' }

    -- Tab to expand or jump
    vim.keymap.set({ 'i', 's' }, '<Tab>', function()
      if ls.expand_or_jumpable() then
        return ls.expand_or_jump()
      else
        return '<Tab>'
      end
    end, { expr = true, silent = true })

    -- Shift-Tab to jump backward
    vim.keymap.set({ 'i', 's' }, '<S-Tab>', function()
      if ls.jumpable(-1) then
        return ls.jump(-1)
      else
        return '<S-Tab>'
      end
    end, { expr = true, silent = true })
  end,
}
