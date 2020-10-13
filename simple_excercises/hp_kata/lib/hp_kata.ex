defmodule HpKata do


  @spec books_list(map) :: [any]
  def books_list(books \\ %{}) do
    books
    |> Map.keys()
  end

  @spec full_price(map, number) :: number
  def full_price(books, price) do
    books
    |> Map.values()
    |> Enum.map(&(&1 * price))
    |> Enum.sum()
  end

end
