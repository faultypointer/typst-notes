#title("Learning Typst")

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
to be continued...
