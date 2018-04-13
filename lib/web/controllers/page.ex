defmodule Controllers.Page do
  use Finix.Controller
  
  def index(conn, _args) do
    #conn |> render("index", [msg: "hello, world"])
    conn |> render([msg: "hello, world"])
  end

  def hello(conn, args) do
  end
end
