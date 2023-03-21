using Gtk

win = GtkWindow("Key press example")

signal_connect(win, "key-press-event") do widget, event
  k= event.keyval
  println("You pressed key ", k, " which is ", Char(k), ".")

end
