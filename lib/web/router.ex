defmodule Web.Router do
  use HttpRouter

  alias Web.Controllers, as: C

  get "/", C.Page, :index
  get "/hello/:message", C.Page, :hello
  
end
