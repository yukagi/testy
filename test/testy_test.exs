defmodule TestyTest do
  use ExUnit.Case
  doctest Testy

  import Mox

  setup :verify_on_exit!

  test "invokes add and multi" do
    # As far as I can tell, this should mimic the mocked module as best it can.
    Testy.StandardMock
    |> expect(:add, fn x, y -> x + y end)
    |> expect(:multi, fn x, y -> x * y end)

    # Testy.add_plus_one/2 uses the Testy.Standard.add/2 and multi/2, then adds 1 to the result
    # in test, it should use Testy.StandardMock, which uses behavior defined here. 
    assert Testy.add_plus_one(2, 5) == 8
    assert Testy.multi_plus_one(3, 5) == 16
  end

  # This is just a test to verify that the mocked behavior is getting executed as I expect.
  test "invokes modified add and multi" do
    Testy.StandardMock
    |> expect(:add, fn x, y -> x - y end)
    |> expect(:multi, fn x, y -> x / y end)

    assert Testy.add_plus_one(10, 5) == 6
    assert Testy.multi_plus_one(15, 5) == 4
  end
end
