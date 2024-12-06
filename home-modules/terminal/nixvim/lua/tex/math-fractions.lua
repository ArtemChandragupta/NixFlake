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
  -- FRACTION
  s(
    {
      trig = "([^%a])-f",
      wordTrig = false,
      regTrig = true,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\frac{<>}{<>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        d(1, get_visual),
        i(2),
      }
    ),
    { condition = tex.in_mathzone }
  ),
  -- d FRACTION
  s(
    {
      trig = "([^%a])-d",
      wordTrig = false,
      regTrig = true,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\dfrac{<>}{<>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        d(1, get_visual),
        i(2),
      }
    ),
    { condition = tex.in_mathzone }
  ),
  -- Text FRACTION
  s(
    {
      trig = "([^%a])-t",
      wordTrig = false,
      regTrig = true,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\tfrac{<>}{<>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        d(1, get_visual),
        i(2),
      }
    ),
    { condition = tex.in_mathzone }
  ),
  -- PARTIAL DIFFERENTIAL i.e. \partial_{}
  s(
    {
      trig = "([^%a])par",
      wordTrig = false,
      regTrig = true,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\partial {<>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        i(1),
      }
    ),
    { condition = tex.in_mathzone }
  ),
  -- partial FRACTION
  s(
    {
      trig = "([^%a])-p",
      wordTrig = false,
      regTrig = true,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\dfrac{\\partial <>}{\\partial <>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        d(1, get_visual),
        i(2),
      }
    ),
    { condition = tex.in_mathzone }
  ),
})
