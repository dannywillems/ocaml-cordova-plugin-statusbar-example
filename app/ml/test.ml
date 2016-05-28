let color = [|"red" ; "blue"|]
let i = ref 0

let on_device_ready () =
  let t = Cordova_statusbar.t () in
  let on_vol_up () =
    if t#is_visible then t#hide else t#show
  in
  let on_vol_down () =
    t#background_color_by_name color.(!i);
    ignore (i := (!i + 1) mod 2)
  in
  Cordova.Event.add_event_listener
    Cordova.Event.Vol_up_button on_vol_up false;
  Cordova.Event.add_event_listener
    Cordova.Event.Vol_down_button on_vol_down false

let _ =
  Cordova.Event.device_ready on_device_ready;
