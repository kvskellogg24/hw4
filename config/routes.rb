Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  # get("/sessions", :controller => "sessions", :action => "index")
  # get("/sessions/:id", :controller => "sessions", :action => "show")
  # get("/sessions/new", :controller => "sessions", :action => "new")
  # post("/sessions", :controller => "sessions", :action => "create")
  # get("/sessions/:id/edit", :controller => "sessions", :action => "edit")
  # patch("/sessions/:id", :controller => "sessions", :action => "update")
  # delete("/sessions/:id", :controller => "sessions", :action => "destroy")
  get("/login", :controller => "sessions", :action => "new")
  get("/logout", :controller => "sessions", :action => "destroy")

  # Landing page (aka root route)
  # get("/", :controller => "", :action => "")

  resources "users"
end
