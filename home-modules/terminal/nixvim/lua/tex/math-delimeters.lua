local ls = require("luasnip")
local s  = ls.snippet
local sn = ls.snippet_node
local t  = ls.text_node
local i  = ls.insert_node
local f  = ls.function_node
local d  = ls.dynamic_node
local fmt  = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep  = require("luasnip.extras").rep

-- Math context detection
local tex = {}
tex.in_mathzone = function()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end
tex.in_text = function()
  return not tex.in_mathzone()
end

local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

local line_begin = require("luasnip.extras.expand_conditions").line_begin

ls.add_snippets("tex", {
  s({
      trig = ";)",
      wordTrig = false,
      snippetType="autosnippet"
    },
    fmta(
      "\\left( <> \\right)",
      {       i(1),        }
    ),
    { condition = tex.in_mathzone }
  ),
  s({
      trig = ';]',
      wordTrig = false,
      snippetType="autosnippet"
    },
    fmta(
      "\\left[ <> \\right]",
      {       i(1),        }
    ),
    { condition = tex.in_mathzone }
  ),
})
