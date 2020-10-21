defmodule AtmTest do
  use ExUnit.Case
  doctest Atm

  describe "withdraw/1" do
    test "success: returns the withdrawn amount" do
      atm = Atm.withdraw(250)
      assert atm.amount == 250
      atm = Atm.withdraw(100)
      assert atm.amount == 100
    end
    test "success: returns 0 if the amount is invalid" do
      atm = Atm.withdraw(125)
      assert atm.amount == 0
      atm = Atm.withdraw(345)
      assert atm.amount == 0
    end
    test "success: returns the correct bills" do
      atm = Atm.withdraw(250)
      assert atm.bills == [50, 100, 100]
      atm = Atm.withdraw(100)
      assert atm.bills == [100]
      atm = Atm.withdraw(80)
      assert atm.bills == [10, 20, 50]
      atm = Atm.withdraw(30)
      assert atm.bills == [10, 20]
    end
    test "success: retuns an empty list of bills when the amount is invalid" do
      atm = Atm.withdraw(125)
      assert atm.bills == []
      atm = Atm.withdraw(345)
      assert atm.bills == []
    end
  end
end
