return {
	-- Combining text and insert nodes to create basic LaTeX commands
	s({ trig = "tt", dscr = "Expands 'tt' into '\texttt{}'" }, {
		t("\\texttt{"), -- remember: backslashes need to be escaped
		i(1),
		t("}"),
	}),
	-- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
	-- there is a much better, human-readable solution: ls.fmt, described shortly.
	s({ trig = "ff", dscr = "Expands 'ff' into '\frac{}{}'" }, {
		t("\\frac{"),
		i(1), -- insert node 1
		t("}{"),
		i(2), -- insert node 2
		t("}"),
	}),
	--eq
	--vec
	s(
		{ trig = "vv", dscr = "" },
		fmta(
			[[
	\vec{<>}<>   
    ]],
			{ i(0), i(1) }
		)
	),
	--cross
	s(
		{ trig = "cc", dscr = "" },
		fmta(
			[[
	\times<>   
    ]],
			{ i(0) }
		)
	),
	--dotproduct
	s(
		{ trig = "dt", dscr = "" },
		fmta(
			[[
	\cdot<>   
    ]],
			{ i(0) }
		)
	),
	--text
	s({ trig = "bb", dscr = "Expands 'tt' into '\texttt{}'" }, {
		t("\\textbf{"), -- remember: backslashes need to be escaped
		i(1),
		t("}"),
	}),
	--partial derivative
	s(
		{ trig = "kk", regTrig = true, wordTrig = false },
		fmta("<>^{<>}", {
			f(function(_, snip)
				return snip.captures[1]
			end),
			i(1),
		})
	),
	s(
		{ trig = "jj", regTrig = true, wordTrig = false },
		fmta("<>_{<>}", {
			f(function(_, snip)
				return snip.captures[1]
			end),
			i(1),
		})
	),
}
