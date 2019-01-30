defmodule OnfidoTest do
  use ExUnit.Case
  doctest Onfido

  test "greets the world" do
    assert Onfido.hello() == :world
  end
end
