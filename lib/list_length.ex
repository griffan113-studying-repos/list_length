defmodule ListLength do
  def call([_head | _tail] = list) do
    list
    |> Enum.at(list)
    |> sum_items()
  end

  def call(_list), do: {:error, "Invalid list"}

  defp sum_items(result) do
    case is_number(result) do
      true -> sum_items(result)
      false -> result
    end
  end
end
