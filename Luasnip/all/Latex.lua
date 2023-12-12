return{
s({trig = "newlatexfile",  dscr = "New latex document"},
fmt(
	[[
	\documentclass{article}
	\usepackage[pdftex]{graphicx}
	\usepackage{amsmath}
	\usepackage[english]{babel}
	\usepackage{amsthm}
	\newtheorem{definition}{Definition}
	\begin{document}






	<>






	\end{document}
	]],
 -- The insert node is placed in the <> angle brackets
    { i(1) },
    -- This is where I specify that angle brackets are used as node positions.
    { delimiters = "<>" }
  )
),
s({trig = "sec",  dscr = "This creates a section "},
fmt(
	[[
	\section*{<>}	
	<>
	]],
 -- The insert node is placed in the <> angle brackets
    { i(1), i(2)},
    -- This is where I specify that angle brackets are used as node positions.
    { delimiters = "<>" }
  )
),
s({trig = "aa",  dscr = "This creates a section "},
fmt(
	[[
	begin{align*}
	<>	
	end{align*}
	<>
	]],
 -- The insert node is placed in the <> angle brackets
    { i(1), i(2)},
    -- This is where I specify that angle brackets are used as node positions.
    { delimiters = "<>" }
  )
),
s({trig = "and",  dscr = "This creates a section "},
fmt(
	[[
	=& <> \\	
	<>
	]],
 -- The insert node is placed in the <> angle brackets
    { i(1),i(2)},
    -- This is where I specify that angle brackets are used as node positions.
    { delimiters = "<>" }
  )
),
}	
