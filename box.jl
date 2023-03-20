using Gtk

win = GtkWindow("Box Code")
hbox = GtkBox(:h) # :h makes the layout horizontal

b = GtkButton("Click Me")
push!(win,b)

function on_button_clicked(w)
  println("The button has been clicked")
end
signal_connect(on_button_clicked, b, "clicked")

showall(win)
