defmodule Norm.Case do
  use ExUnit.CaseTemplate

  using do
    quote do
      import Norm
      import ExUnitProperties, except: [gen: 1]
    end
  end
end
