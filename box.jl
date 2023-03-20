using Gtk

win = GtkWindow("Box Code")
hbox = GtkBox(:h) # :h makes the layout horizontal

push!(win, hbox)
cancel = GtkButton("Cancel")

ok = GtkButton("Ok")
push!(hbox, cancel)
push!(hbox, ok)

set_gtk_property!(hbox, :expand, true)
set_gtk_property!(hbox, :spacing, 10)

# better layout starts here
destroy(hbox)

ok = GtkButton("Ok")
cancel = GtkButton("Cancel")

hbox = GtkButtonBox(:h)
push!(win, hbox)
push!(hbox, cancel)
push!(hbox, ok)

function on_click(w)
  println("Button was clicked")
end
signal_connect(on_click, ok, "clicked")

function on_cancel(w)
  println("Cancel button was clicked")
end
signal_connect(on_cancel, cancel, "clicked") # Over here clicked is a signal emitted when user clicks a button 

showall(win)
