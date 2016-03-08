let on_device_ready _ =
  let status = Statusbar.statusbar () in
  (*status##styleDefault;*)
  (*status##styleLightContent;*)
  (*status##styleBlackTranslucent;*)
  (*status##styleBlackOpaque;*)
  status##hide;
  (*status##show;*)
  (*status##backgroundColorByName (Js.string "red");*)
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
(Dom_html.handler on_device_ready) Js._false
