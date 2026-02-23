#import "@preview/oxifmt:1.0.0": strfmt

#set document(
  title: [Ideas]
)
#title()

#outline(depth: 2)

== Journal System

=== What?
I want to build  local-first journal system that can be compiled to a static site.
Instead of the journal consisting of an page for each day, this journal system is
a collection of events. Each events has the following:
- a unique id
- timestamp (or just the time) of when it was created/updated
- the type of event
- tags (used for filtering)
- other items based on the type of event

=== How?
This involves
- designing a language (probably some kind of markup) to describe the events
- and the generator that outputs the static site from the collection of events 
- and some utilities that helps generating and filling the default values for the each events

The last two could be combined into a unified cli application (and maybe way wayy later into a full fledge native graphical app).

==== Storing Events
I thought about storing each events in a seperate markdown(with compact set of features) file placed into the directory tree made up
of the year, month and day of the event but considering my future plan for this system storing it in database right from the start is
probably a good idea.

Hopefully, this simplifies things like "compilation"(event verification before storing the events in the database), converting to json
and other stuff I need to do.

==== Command Line Interface
#let pname = "journal"

Each journal needs to have #strfmt("{}.toml", pname)
