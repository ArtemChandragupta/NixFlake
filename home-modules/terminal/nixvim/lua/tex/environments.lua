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
  -- GENERIC ENVIRONMENT
  s(
    {
      trig="new",
      snippetType="autosnippet"
    },
    fmta(
      [[
      \begin{<>}
        <>
      \end{<>}
      <>
      ]],
      {
        i(1),
        d(2, get_visual),
        rep(1),
        i(0)
      }
    ),
    { condition = line_begin }
  ),
  -- EQUATION
  s(
    {
      trig="eqn",
      snippetType="autosnippet"
    },
    fmta(
      [[
      \begin{equation}
        <>
      \end{equation}
      <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    { condition = line_begin }
  ),
  -- Anonimous EQUATION
  s(
    {
      trig="eq*",
      snippetType="autosnippet"
    },
    fmta(
      [[
      \begin{equation*}
        <>
      \end{equation*}
      <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    { condition = line_begin }
  ),
  -- Multiline EQUATION
  s(
    {
      trig="eqm",
      snippetType="autosnippet"
    },
    fmta(
      [[
      \begin{multline}
        <>
      \end{multline}
      <>
      ]],
      {
        i(1),
        i(0),
      }
    ),
    { condition = line_begin }
  ),
    -- -- INLINE MATH
    -- s(
    --   {
    --     trig = "([^%l])mm",
    --     regTrig = true,
    --     wordTrig = false,
    --     snippetType="autosnippet"
    --   },
    --   fmta(
    --     "<>$<>$",
    --     {
    --       f(function(_, snip)
    --         return snip.captures[1]
    --       end ),
    --       d(1, get_visual),
    --     }
    --   )
    -- ),
    -- ITEMIZE
  s(
    {
      trig="itt",
      snippetType="autosnippet"
    },
    fmta(
      [[
      \begin{itemize}
        \item <>
      \end{itemize}
      <>
      ]],
      {
        i(1),
        i(0)
      }
    ),
    { condition = line_begin }
  ),
  -- ENUMERATE
  s(
    {
      trig="enn",
      snippetType="autosnippet"
    },
    fmta(
      [[
      \begin{enumerate}
        \item <>
      \end{enumerate}
      <>
      ]],
      {
        i(1),
        i(0)
      }
    ),
    { condition = line_begin }
  ),
})
