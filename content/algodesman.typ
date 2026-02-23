#set document(
  title: [The Algorithm Design Manual]
)

#let problem(title, body) = block(
  fill: luma(95%),
  inset: 12pt,
  radius: 6pt,
  stroke: 1pt + luma(80%),
)[
  #text(blue)[*Problem:*] #text(red)[#title]

  #body
]

#title()

#outline()

= Introduction to Algorithm Design
An algorithm is a procedure used to accomplish a specific task. An interesting algorithm
describes a set of steps when followed solves a general, well-specified problem.

An example of such problem is _sorting_.
#problem("Sorting")[
  *Input:* A sequence of $n$ keys $a_1,...,a_n$.

  *Output:* The permutation of the input sequence such that $a_1^' lt.eq a_2^' lt.eq ... lt.eq a_(n-1)^' lt.eq a_n^'$
]

#context if target() == "html" {
  strong[Currently rheo and typst don't support math export in html so just imagine the right content above.]
}

The desirable properties of an algorithm:
- correct
- efficient
- easy to implement

