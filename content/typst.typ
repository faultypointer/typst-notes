#set document(
  title: [Learning Typst]
)
#title()

#outline()

== Overview
=== Heading
Headings can be added using the `=` character.
Number of `=` character determines the nesting level of the heading.

=== Paragraph
Add a new paragraph by adding a blank line after the body of text.

=== Lists
Numbered list with `+` character
+ like
+ so

and bulleted list with `-` character
- see
- this

Nesting is also supported.
+ 1st item
  - sub item 1
  - sub item 2
+ 2nd item

=== Figure
we can use `image` function to include an image and enclose it inside the `figure` function. 

#figure(
  image("img/favicon.png"),
  caption: [
    A sample image.
  ]
)<sample-figure>

The above figure is added with the following code:
```typst
#figure(
  image("img/favicon.png"),
  caption: [
    A sample image.
  ]
)<sample-figure>
```

=== Label
The thing after the figure in the angle bracket is called a label. A label uniquely
identifies an element (like figures, headings, equations) in the document.
We can reference the element in our text by writing an `@` symbol followed by the
label name.
For example: @sample-figure (`@sample-figure`)

=== Bibliography
Add bibliography using the `bibliography` function. Typst's native format for bibliography
is Hayagriva but it also supports BibLatex.

Once the document contains a bibliography, we can cite from it using the same syntax used
for referencing label. For example: 
Here is an article@parsedontvalidate.

=== Math
#context if target() == "html" {
  strong[Currently rheo and typst don't support math export in html so just imagine the right content below.]
}

Typst supports mathematical typesetting and has its own notation.
We can wrap the equation in `$` signs to let typst know it should expect a mathematical expression.

It equation will be typeset inline. We can add space at the start and end of equation
to typeset on a new line.

Single letters are displayed as is while multiple letters are interpreted as variables,
symbols or functions.

For example: `$Q rho A v + "time offset"$` will be displayed as $Q rho A v + "time offset"$


== Searched
Things I searched for.

=== String Formatting
I couldn't find the answer. I did find:
- #link("https://github.com/typst/typst/issues/2267")[A github issue]
- #link("https://typst.app/universe/package/oxifmt")[Oxifmt: a typst package]

using oxifmt's strfmt function, we can rust rust's `format!` like capabilities
```typst #strfmt("{}.toml", pname)```


#bibliography("references.bib")

