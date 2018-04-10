defmodule FinixSample do
  # https://hexdocs.pm/elixir/Application.html
  use Application

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(scheme: :http, plug: Web.Router, options: [port: 4000])
    ]

    opts = [strategy: :one_for_one, name: FinixSample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
