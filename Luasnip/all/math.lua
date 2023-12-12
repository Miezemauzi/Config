return {
-- Examples of Greek letter snippets, autotriggered for efficiency
s({trig=";a", snippetType="autosnippet"},
  {
    t("\\alpha"),
  }
),
s({trig=";b", snippetType="autosnippet"},
  {
    t("\\beta"),
  }
),
s({trig=";g", snippetType="autosnippet"},
  {
    t("\\gamma"),
  }
),
s({trig=";r"},
  {
    t("\\rho"),
  }
),
s({trig="pt"},
  {
    t("\\partial"),
  }
),
s({trig="inf"},
  {
    t("\\infty"),
  }
),

s({trig=".d", regTrig = true, wordtrig = false},
  fmta(
    [[
      <>_{<>}
]],
    {f( function(_, snip) return snip.captures[1] end ),
                i(1)
    }
  )
),

s({trig="u"},
  {
    t("_{}"),
  }
),
}

