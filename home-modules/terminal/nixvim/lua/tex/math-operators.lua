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
  -- cdot
  s(
    { trig = ";.",  snippetType="autosnippet" },
    { t("\\cdot "),                           },
    { condition = tex.in_mathzone             }
  ),
  -- cdot
  s(
    { trig = "**",  snippetType="autosnippet" },
    { t("\\cdot "),                           },
    { condition = tex.in_mathzone             }
  ),
  -- . . .
  s(
    { trig = "...", snippetType="autosnippet" },
    { t("\\cdots "),                          }
  ),
  -- BASIC INTEGRAL SYMBOL, i.e. \int
  s(
    { trig = "in1", snippetType="autosnippet" },
    { t("\\int"),                             },
    { condition = tex.in_mathzone             }
  ),
  -- DOUBLE INTEGRAL, i.e. \iint
  s(
    { trig = "in2", snippetType="autosnippet" },
    { t("\\iint"),                            },
    { condition = tex.in_mathzone             }
  ),
  -- TRIPLE INTEGRAL, i.e. \iiint
  s(
    { trig = "in3", snippetType="autosnippet" },
    { t("\\iiint"),                           },
    { condition = tex.in_mathzone             }
  ),
  -- CLOSED SINGLE INTEGRAL, i.e. \oint
  s(
    { trig = "oi1", snippetType="autosnippet" },
    { t("\\oint"),                            },
    { condition = tex.in_mathzone             }
  ),
  -- APPROX, i.e. \approx
  s(
    { trig = "~=",  snippetType="autosnippet" },
    { t("\\approx "),                         },
    { condition = tex.in_mathzone             }
  ),
  -- APPROX, i.e. \approx
  s(
    { trig = "=~",  snippetType="autosnippet" },
    { t("\\approx "),                         },
    { condition = tex.in_mathzone             }
  ),
  -- IMPLIES, i.e. \implies
  s(
    { trig = ">>",  snippetType="autosnippet" },
    { t("\\implies "),                        }
  ),
  -- Right arrow
  s(
    { trig = "->",  snippetType="autosnippet" },
    { t("\\rightarrow "),                     }
  ),
  -- Left arrow
  s(
    { trig = "<-",  snippetType="autosnippet" },
    { t("\\leftarrow "),                      }
  ),
  -- ABSOLUTE VALUE
  s({
      trig = "([^%a])abs",
      regTrig = true,
      wordTrig = false,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\abs{<>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end ),
        d(1, get_visual),
      }
    ),
    { condition = tex.in_mathzone }
  ),
  -- SQUARE ROOT
  s({
      trig = "([^%\\])sqrt",
      wordTrig = false,
      regTrig = true,
      snippetType="autosnippet"
    },
    fmta(
      "<>\\sqrt{<>}",
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        d(1, get_visual),
      }
    ),
    { condition = tex.in_mathzone }
  ),
})
