defmodule CommandedDip.Example.Commands.Increase do
  defstruct [:counter_id]

  def execute(
        %CommandedDip.Example.Counter{id: counter_id},
        %__MODULE__{counter_id: counter_id}
      ) do
    {:ok, %CommandedDip.Example.Events.Increased{counter_id: counter_id}}
  end
end
