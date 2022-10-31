defmodule CommandedDipTest do
  use ExUnit.Case
  doctest CommandedDip

  alias CommandedDip.Example

  test "reset a counter" do
    state_0 = %Example.Counter{id: "counter-1", value: 10}

    {:ok, events} =
      Example.Counter.execute(state_0, %Example.Commands.Reset{counter_id: "counter-1"})

    state_1 = Example.Counter.apply(state_0, events)
    assert state_1 == %Example.Counter{id: "counter-1", value: 0}
  end
end
