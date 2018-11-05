defmodule Enums do
    def uniq do
        fruits = ["Apple", "Banana", "Pinapple", "Coconut", "Apple", "Apple", "Banana"]
        Enum.uniq_by(fruits, fn x -> x end)
    end
end