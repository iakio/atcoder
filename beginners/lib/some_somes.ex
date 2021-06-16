defmodule SomeSomes do
  def main() do
    [n, a, b] = IO.read(:line) |> String.split() |> Enum.map(&String.to_integer/1)
    IO.puts(solve(n, a, b))
  end

  def sum_of_digits(0, acc), do: acc
  def sum_of_digits(n, acc), do: sum_of_digits(div(n, 10), acc + rem(n, 10))

  @spec solve(integer, any, any) :: number
  @doc """
    ### Example
    iex> SomeSomes.solve(20, 2, 5)
    84

    iex> SomeSomes.solve(10, 1, 2)
    13

    iex> SomeSomes.solve(100, 4, 16)
    4554

  """
  def solve(n, a, b) do
    Enum.filter(1..n, fn i ->
      with s = sum_of_digits(i, 0) do
        s >= a && s <= b
      end
    end) |> Enum.sum()
  end
end
