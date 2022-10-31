defmodule CommandedDipTest do
  use ExUnit.Case
  doctest CommandedDip

  test "greets the world" do
    assert CommandedDip.hello() == :world
  end
end
