return{

s({trig="forr", dscr=""},
  fmta(
	[[for <> in range(<>):
	<>
    
			]],
    { i(1),
	i(2),
	i(3)}
  )
),
s({trig="forl", dscr=""},
  fmta(
	[[for <> in (<>):
	<>
    
			]],
    { i(1),
	i(2),
	i(3)}
  )
),
s({trig="pp", dscr=""},
  fmta(
	[[print(<>)
	]],
    { i(1)

	}
  )
)
}

