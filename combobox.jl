using Gtk

cb = GtkComboBoxText()

choices = ["one", "two", "three", "four"]
for choice in choices
  push!(cb, choice)
end

set_gtk_property!(cb, :active, 1)

signal_connect(cb, "changed") do widget, others...
  idx = get_gtk_property(cb, "active", Int)

  str = Gtk.bytestring(GAccessor.active_text(cb))
  println("Active element is $str at index $idx")
end

win = GtkWindow("GtkComboBoxText Example", 400, 200)
push!(win, cb)
showall(win)

