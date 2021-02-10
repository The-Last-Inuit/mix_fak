defmodule MixAdrTest do
  use ExUnit.Case
  doctest MixAdr

  test "creates an ADR card" do
    MixAdr.run()
    assert File.exists?(MixAdr.directory_path)
  end
end
