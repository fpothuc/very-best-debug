Rails.application.routes.draw do

  #user controller
    #home
  get("/", { :controller => "users", :action => "home" })
    #user reads
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show" })
  post("/insert_user_record", { :controller => "users", :action => "create" })
  post("/update_user/:user_id", { :controller => "users", :action => "update" })

  #venue controller
    #venue reads
  get("/venues", { :controller => "venues", :action => "index" })
  get("/venues/:venue_id", { :controller => "venues", :action => "show" })
    #venue posts
  post("/insert_venue_record", { :controller => "venues", :action => "create" })
  post("/update_venue/:the_id", { :controller => "venues", :action => "update" })
    #venue delete
  get("/delete_venue/:id_to_delete", { :controller => "venues", :action => "destroy" })

  #comments
  post("/insert_comment_record", { :controller => "comments", :action => "create" })
end
