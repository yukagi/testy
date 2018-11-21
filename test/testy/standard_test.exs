defmodule Testy.StandardTest do
  use ExUnit.Case, async: true

  #import Mox

  #setup :verify_on_exit!

  #test "invokes add and mult" do
    #Testy.StandardMock
    #|> expect(:add, fn x, y -> x - y end)
    #|> expect(:multi, fn x, y -> x / y end)

    #assert Testy.StandardMock.add(10, 8) == 2
    #assert Testy.StandardMock.multi(15, 3) == 5
  #end
end
