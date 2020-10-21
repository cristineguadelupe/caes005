defmodule Atm do

  def withdraw(amout) do
    amout
    |> valid?()
  end

  def valid?(amout) when rem(amout, 10) == 0, do: amout
  def valid?(_amount), do: 0

end
