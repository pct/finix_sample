defmodule Web.Controllers.Page do
  use Finix.Controller
  
  def index(conn, _args) do
    render conn, "page/index.eex", [msg: "hello, world"]
  end

  def hello(conn, args) do
  end
end
