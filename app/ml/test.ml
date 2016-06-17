let color = [|"red" ; "blue" ; "orange"|]
let i = ref 0

let on_device_ready () =
  let on_vol_up () =
    if Cordova_statusbar.is_visible () then
      Cordova_statusbar.hide ()
    else
      Cordova_statusbar.show ()
  in
  let on_vol_down () =
    Cordova_statusbar.Background.color_by_name color.(!i);
    ignore (i := (!i + 1) mod (Array.length color))
  in
  Cordova.Event.add_event_listener
    Cordova.Event.Vol_up_button on_vol_up false;
  Cordova.Event.add_event_listener
    Cordova.Event.Vol_down_button on_vol_down false

let _ =
  Cordova.Event.device_ready on_device_ready
