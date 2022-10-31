defmodule CommandedDip.Example.Counter do
  use CommandedDip, :aggregate

  defstruct id: nil, value: 0

  commands([
    CommandedDip.Example.Commands.Decrease,
    CommandedDip.Example.Commands.Increase,
    CommandedDip.Example.Commands.Reset
  ])

  events([
    CommandedDip.Example.Events.Decreased,
    CommandedDip.Example.Events.Increased,
    CommandedDip.Example.Events.Reseted
  ])
end
