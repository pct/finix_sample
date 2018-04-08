defmodule Web.Router do
  use HttpRouter

  alias Web.Controllers.Page

  get "/", Page, :index
  get "/hello/:message", Page, :hello
  
end
