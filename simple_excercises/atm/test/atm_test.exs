defmodule AtmTest do
  use ExUnit.Case
  doctest Atm

  describe "withdraw/1" do
    test "sucess: returns the withdrawn amount" do
      assert Atm.withdraw(100) == 100
    end
    test "sucess: returns 0 if the amount is invalid" do
      assert Atm.withdraw(125) == 0
    end
  end
end
