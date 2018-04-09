defmodule Web.Controllers.Page do
  def init(opts), do: opts

  def call(conn, opts) do
    apply __MODULE__, opts[:action], [conn, conn.params]
  end

  def render(file_name, params) do
    __ENV__.file
    |> Path.dirname
    |> Path.join(["../views/", file_name])
    |> EEx.eval_file(params)
  end

  def index(conn, _args) do
    ret = render "page/index.eex", [world: "hello, world"]
    conn |> Plug.Conn.put_resp_content_type("text/html") |> Plug.Conn.send_resp(200, ret)
  end

  def hello(conn, args) do
  end
end
