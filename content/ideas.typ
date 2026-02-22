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

