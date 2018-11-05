defmodule PatternMatching do
    def equals do
        x = {:un, 2, 3}
        { first, second, third } = x
        "First element: #{first}, The second: #{second}, third: #{third}" 
    end
end