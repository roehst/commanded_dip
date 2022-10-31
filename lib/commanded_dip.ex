defmodule CommandedDip do
  defmacro __using__(:aggregate) do
    quote do
      require CommandedDip
      import CommandedDip
    end
  end

  defmacro events(modules) do
    for module <- modules do
      quote do
        def apply(%{} = aggregate, %unquote(module){} = event) do
          apply(unquote(module), :apply, [aggregate, event])
        end
      end
    end
  end

  defmacro commands(modules) do
    for module <- modules do
      quote do
        def execute(%{} = aggregate, %unquote(module){} = command) do
          apply(unquote(module), :execute, [aggregate, command])
        end
      end
    end
  end
end
