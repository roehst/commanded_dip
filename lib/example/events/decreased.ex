defmodule CommandedDip.Example.Events.Decreased do
  defstruct [:counter_id]

  def apply(
        %CommandedDip.Example.Counter{id: counter_id, value: value} = counter,
        %__MODULE__{counter_id: counter_id}
      ) do
    %CommandedDip.Example.Counter{counter | value: value - 1}
  end
end
