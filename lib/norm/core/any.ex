defmodule Norm.Core.Any do
  defstruct []

  defimpl Norm.Conformer.Conformable do
    def conform(_, input, _) do
      {:ok, input}
    end
  end
end

if Code.ensure_loaded?(StreamData) do
  defimpl Norm.Generatable, for: Norm.Core.Any do
    def gen(_) do
      {:ok, StreamData.term()}
    end
  end
end
