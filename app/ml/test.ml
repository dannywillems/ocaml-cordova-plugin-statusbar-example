let on_device_ready _ =
  let t = Cordova_statusbar.t () in
  t#background_color_by_name "red";
  (*status#style_default;*)
  (*status#style_light_content;*)
  (*status#style_black_translucent;*)
  (*status#style_black_opaque;*)
  (*status#hide;*)
  (*status#show;*)
  (*status#background_color_by_name "red";*)
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
(Dom_html.handler on_device_ready) Js._false
