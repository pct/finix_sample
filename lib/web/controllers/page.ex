defmodule Web.Controllers.Page do
  use Finix.Controller
  
  def index(conn, _args) do
    ret = render "page/index.eex", [msg: "hello, world"]

    conn
    |> Plug.Conn.put_resp_content_type("text/html") 
    |> Plug.Conn.send_resp(200, ret)
  end

  def hello(conn, args) do
  end
end
