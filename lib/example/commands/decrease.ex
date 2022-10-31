defmodule CommandedDip.Example.Commands.Decrease do
  defstruct [:counter_id]

  def execute(
        %CommandedDip.Example.Counter{id: counter_id},
        %__MODULE__{counter_id: counter_id}
      ) do
    {:ok, %CommandedDip.Example.Events.Decreased{counter_id: counter_id}}
  end
end
