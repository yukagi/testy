defmodule Testy.Standard do
  @behaviour Testy.Calc

  @impl Testy.Calc
  def add(a, b) do
    a + b
  end

  @impl Testy.Calc
  def multi(a, b) do
    a * b
  end
end
