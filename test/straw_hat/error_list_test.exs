defmodule StrawHat.Test.ErrorListTest do
  use ExUnit.Case

  describe "Enumerable protocol" do
    test "count/1" do
      error_list = %StrawHat.Error.ErrorList{errors: [1, 2, 3]}
      assert Enum.count(error_list) == 3
    end

    test "member?/2" do
      error_list = %StrawHat.Error.ErrorList{errors: [1, 2, 3]}
      assert Enum.member?(error_list, 1) == true
    end
  end
end
