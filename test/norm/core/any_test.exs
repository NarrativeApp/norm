defmodule Norm.Core.AnyTest do
  use Norm.Case, async: true

  property "any/0" do
    check all value <- gen(any()) do
      assert valid?(value, any())
    end
  end
end
