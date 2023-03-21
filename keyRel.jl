using Gtk

const start_times = Dict{UInt32, UInt32}()

w = GtkWindow("Key Press/Release Example")

id1 = signal_connect(w, "key-press-event") do widget, event
    k = event.keyval
    if k ∉ keys(start_times)
        start_times[k] = event.time # save the initial key press time
        println("You pressed key ", k, " which is '", Char(k), "'.")
    else
        println("repeating key ", k)
    end
end

id2 = signal_connect(w, "key-release-event") do widget, event
    k = event.keyval
    start_time = pop!(start_times, k) # remove the key from the dictionary
    duration = event.time - start_time # key press duration in milliseconds
    println("You released key ", k, " after time ", duration, " msec.")
end
