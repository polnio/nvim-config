local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  s(
    { trig = "lb", dscr = "Expands 'lb' into '\\left(<>\\right)'", snippetType = "autosnippet" },
    fmta("\\left(<>\\right)", { i(1) })
  ),
  s(
    { trig = "lB", dscr = "Expands 'lB' into '\\left{<>\\right}'", snippetType = "autosnippet" },
    fmta("\\left{<>\\right}", { i(1) })
  ),
  s(
    { trig = "ln", dscr = "Expands 'ln' into '\\left[<>\\right]'", snippetType = "autosnippet" },
    fmta("\\left[<>\\right]", { i(1) })
  ),
}
