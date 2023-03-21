using Gtk

open_dialog("Pick a file")
open_dialog("Pick some files", select_multiple=true)
open_dialog("Pick a file", Null(), ("*.jl",))
open_dialog("Pick some text files", GtkNullContainer(), ("*.txt, *.csv",), select_multiple=true)
open_dialog("Pick a file", Null(), (GtkFileFilter(mimetype="text/csv"),))
open_dialog("Pick an image file", GtkNullContainer(), ("*.png", "*.jpg", GtkFileFilter("*.png, *.jpg", name="All supported formats")))
open_dialog("Pick an image file", GtkNullContainer(), (GtkFileFilter(name="Supported image formats"),))

save_dialog("Save as...", Null(), (GtkFileFilter("*.png, *.jpg", name="All supported formats"), "*.png", "*.jpg"))
