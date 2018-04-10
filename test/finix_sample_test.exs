defmodule FinixSampleTest do
  use ExUnit.Case
  doctest FinixSample

  test "greets the world" do
    assert FinixSample.hello() == :world
  end
end
