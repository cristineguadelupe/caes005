defmodule HpKata do


  @spec books_list(map) :: [any]
  def books_list(books \\ %{}) do
    books
    |> Map.keys()
  end

end
