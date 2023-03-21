using Gtk

win = GtkWindow("Grid")
g = GtkGrid()
a = GtkEntry() #Text entry widget

set_gtk_property!(a, :text, "This is Gtk!")
b = GtkCheckButton("Check me!")
btn1 = GtkButton("button 1")
c = GtkScale(false, 0:10)

# This defines how layout is in the grid
g[1,1] = a
g[2,1] = b
g[1:2,2] = c
g[1,3] = btn1

function btn_clicked(w)
  println(get_gtk_property(w, :label, String), " was clicked") #get_gtk_property is used to get useful info about widget
end

id = signal_connect(btn1, "clicked") do w # This is an alternate way to write signal handlers but this is for a particular widget hmmmm
  println(btn1, "was clicked")
  println(id)
end

#signal_connect(fun, btn1, "clicked")
#signal_handler_disconnect(btn1, id)
signal_connect(btn_clicked, btn1, "clicked")
signal_connect(btn_clicked, b, "clicked")

set_gtk_property!(btn1, :spacing, 10)

set_gtk_property!(g, :column_homogeneous, true)
set_gtk_property!(g, :column_spacing, 15)

push!(win, g)

showall(win)
