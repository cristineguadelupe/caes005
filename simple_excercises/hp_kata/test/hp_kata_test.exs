defmodule HpKataTest do
  use ExUnit.Case
  doctest HpKata

  test "greets the world" do
    assert HpKata.hello() == :world
  end
end
