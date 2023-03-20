using Gtk

win = GtkWindow("Grid")
g = GtkGrid()
a = GtkEntry() #Text entry widget

set_gtk_property!(a, :text, "This is Gtk!")
b = GtkCheckButton("Check me!")
c = GtkScale(false, 0:10)

g[1,1] = a
g[2,1] = b
g[1:2,2] = c

set_gtk_property!(g, :column_homogeneous, true)
set_gtk_property!(g, :column_spacing, 15)

push!(win, g)

showall(win)
