defmodule AtmTest do
  use ExUnit.Case
  doctest Atm

  describe "withdraw/1" do
    test "sucess: returns the withdrawn amount" do
      assert Atm.withdraw(100) == 100
    end
  end
end
