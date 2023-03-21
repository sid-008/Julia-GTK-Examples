using Gtk

b = GtkBuilder(filename="myapp.glade")
win = b["window1"]
showall(win)
