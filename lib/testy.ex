defmodule Testy do
  @moduledoc """
  Documentation for Testy.
  """

  @calc Application.get_env(:testy, :calculator)
  def add_plus_one(a, b) do
    @calc.add(a, b) + 1
  end

  def multi_plus_one(a, b) do
    @calc.multi(a, b) + 1
  end
end
