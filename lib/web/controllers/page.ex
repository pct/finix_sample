defmodule Web.Controllers.Page do
  use Finix.Controller
  
  def index(conn, _args) do
    conn
    |> render("page/index.eex", [msg: "hello, world"])
  end

  def hello(conn, args) do
  end
end
