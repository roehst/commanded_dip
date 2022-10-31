defmodule CommandedDip.Example.Events.Reseted do
  defstruct [:counter_id]

  def apply(
        %CommandedDip.Example.Counter{id: counter_id, value: _} = counter,
        %__MODULE__{counter_id: counter_id}
      ) do
    %CommandedDip.Example.Counter{counter | value: 0}
  end
end
