defmodule ShiftOnly do
  def main() do
    _n = IO.read(:line)
    a = IO.read(:line)
    |> String.split()
    |> Enum.map(&String.to_integer/1)

    solve(a, 0)
    |> IO.puts
  end

  @doc """
    ### Example
    iex> ShiftOnly.solve([8, 12, 40], 0)
    2
  """
  def solve(a, n) do
    if Enum.all?(a, &(rem(&1, 2) === 0)) do
      solve(Enum.map(a, &(Kernel.div(&1, 2))), n + 1)
    else
      n
    end
  end
end
