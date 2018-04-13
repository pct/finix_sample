defmodule Router do
  use HttpRouter

  alias Controllers, as: C

  get "/", C.Page, :index
  get "/hello/:message", C.Page, :hello
  
end
