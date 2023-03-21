using Gtk

ls = GtkListStore(String, Int, Bool)


push!(ls,("Peter", 20, false))
push!(ls,("Mary", 22, false))
push!(ls,("joe", 40, true))

tv = GtkTreeView(GtkTreeModel(ls))

rTxt = GtkCellRendererText()
rTog = GtkCellRendererToggle()

c1 = GtkTreeViewColumn("Name", rTxt, Dict([("text",0)]))
c2 = GtkTreeViewColumn("Age", rTxt, Dict([("text",1)]))
c3 = GtkTreeViewColumn("Female", rTog, Dict([("active",2)]))
push!(tv, c1, c2, c3)

selection = GAccessor.selection(tv)

win = GtkWindow(tv, "List view")
showall(win)
