defmodule MakeupJavaTest do
  use ExUnit.Case
  doctest MakeupJava

  test "greets the world" do
    assert MakeupJava.hello() == :world
  end
end
