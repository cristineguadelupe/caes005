defmodule HpKataTest do
  use ExUnit.Case
  doctest HpKata

  describe "books_list/1" do
    test "success: get the bought books list" do
      assert HpKata.books_list(%{1 => 2, 2 => 2}) == [1, 2]
      assert HpKata.books_list(%{3 => 1, 4 => 1, 5 => 3}) == [3, 4, 5]
    end
  end

  describe "full_price/2" do
    test "success: get the full price" do
      assert HpKata.full_price(%{1 => 2, 2 => 1}, 8) == 24
      assert HpKata.full_price(%{3 => 1, 4 => 1, 5 => 3}, 8) == 40
    end
  end

end
