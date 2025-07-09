local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

return {
  s({ trig = 'mal' }, { t '\\cdot' }),
  s({ trig = 'phi' }, { t '\\varphi' }),
  s({ trig = 'alpha' }, { t '\\alpha' }),
}
