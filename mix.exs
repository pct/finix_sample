defmodule FinixSample.MixProject do
  use Mix.Project

  def project do
    [
      app: :finix_sample,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {FinixSample, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:finix, github: "pct/finix"},
      {:exsync, "~> 0.2", only: :dev} # reload
    ]
  end
end
