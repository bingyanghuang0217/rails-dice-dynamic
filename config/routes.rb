Rails.application.routes.draw do
  get("/", {:controller => "rolldice", :action => "home"})
  get("/dice/:times/:sides", {:controller => "rolldice", :action => "dynamic"})
end
