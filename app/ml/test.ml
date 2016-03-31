let on_device_ready _ =
  let status = Statusbar.t () in
  (*status#style_default;*)
  (*status#style_light_content;*)
  (*status#style_black_translucent;*)
  (*status#style_black_opaque;*)
  (*status#hide;*)
  (*status#show;*)
  status#background_color_by_name "red";
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
(Dom_html.handler on_device_ready) Js._false
