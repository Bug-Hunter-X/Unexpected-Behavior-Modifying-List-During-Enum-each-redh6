```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using List.filter
filtered_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(filtered_list) # Output: [1, 2, 4, 5]

# Solution 2: Recursive function
defmodule MyList do
  def delete_element(list, element) do
    delete_element(list, element, [])
  end

  defp delete_element([], _element, acc), do: Enum.reverse(acc)
  defp delete_element([head | tail], element, acc) do 
    if head == element do
      delete_element(tail, element, acc)
    else
      delete_element(tail, element, [head | acc])
    end
  end
end

filtered_list = MyList.delete_element(list,3)
IO.inspect(filtered_list) # Output: [1, 2, 4, 5]

```