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

ls.add_snippets("typ", {
  s({ trig = "@a", snippetType = "autosnippet" }, {
    t("alpha"),
  }),
  s({ trig = "@b", snippetType = "autosnippet" }, {
    t("beta"),
  }),
  s({ trig = "@g", snippetType = "autosnippet" }, {
    t("gamma"),
  }),
  s({ trig = "@G", snippetType = "autosnippet" }, {
    t("Gamma"),
  }),
  s({ trig = "@d", snippetType = "autosnippet" }, {
    t("delta"),
  }),
  s({ trig = "@D", snippetType = "autosnippet" }, {
    t("Delta"),
  }),
  s({ trig = "@e", snippetType = "autosnippet" }, {
    t("epsilon"),
  }),
  s({ trig = "@z", snippetType = "autosnippet" }, {
    t("zeta"),
  }),
  s({ trig = "@h", snippetType = "autosnippet" }, {
    t("eta"),
  }),
  s({ trig = "@o", snippetType = "autosnippet" }, {
    t("theta"),
  }),
  s({ trig = "@O", snippetType = "autosnippet" }, {
    t("Theta"),
  }),
  s({ trig = "@k", snippetType = "autosnippet" }, {
    t("kappa"),
  }),
  s({ trig = "@l", snippetType = "autosnippet" }, {
    t("lambda"),
  }),
  s({ trig = "@L", snippetType = "autosnippet" }, {
    t("Lambda"),
  }),
  s({ trig = "@m", snippetType = "autosnippet" }, {
    t("mu"),
  }),
  s({ trig = "@n", snippetType = "autosnippet" }, {
    t("nu"),
  }),
  s({ trig = "@x", snippetType = "autosnippet" }, {
    t("xi"),
  }),
  s({ trig = "@X", snippetType = "autosnippet" }, {
    t("Xi"),
  }),
  s({ trig = "@pi", snippetType = "autosnippet" }, {
    t("pi"),
  }),
  s({ trig = "@Pi", snippetType = "autosnippet" }, {
    t("Pi"),
  }),
  s({ trig = "@r", snippetType = "autosnippet" }, {
    t("rho"),
  }),
  s({ trig = "@s", snippetType = "autosnippet" }, {
    t("sigma"),
  }),
  s({ trig = "@S", snippetType = "autosnippet" }, {
    t("Sigma"),
  }),
  s({ trig = "@t", snippetType = "autosnippet" }, {
    t("tau"),
  }),
  s({ trig = "@f", snippetType = "autosnippet" }, {
    t("phi"),
  }),
  s({ trig = "@F", snippetType = "autosnippet" }, {
    t("Phi"),
  }),
  s({ trig = "@c", snippetType = "autosnippet" }, {
    t("chi"),
  }),
  s({ trig = "@psi", snippetType = "autosnippet" }, {
    t("psi"),
  }),
  s({ trig = "@Psi", snippetType = "autosnippet" }, {
    t("Psi"),
  }),
  s({ trig = "@w", snippetType = "autosnippet" }, {
    t("omega"),
  }),
  s({ trig = "@W", snippetType = "autosnippet" }, {
    t("Omega"),
  }),
})

