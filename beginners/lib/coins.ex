defmodule Coins do
  def main() do
    a = IO.read(:line) |> String.trim() |> String.to_integer
    b = IO.read(:line) |> String.trim() |> String.to_integer
    c = IO.read(:line) |> String.trim() |> String.to_integer
    x = IO.read(:line) |> String.trim() |> String.to_integer

    solve(a, b, c, x, 0, 0, 0, 0) |> IO.puts
  end

  @doc """
    ### Example
    iex> Coins.solve(2, 2, 2, 100, 0, 0, 0, 0)
    2

    iex> Coins.solve(5, 1, 0, 150, 0, 0, 0, 0)
    0

    iex> Coins.solve(30, 40, 50, 6000, 0, 0, 0, 0)
    213
  """
  def solve(a, b, c, x, ax, bx, cx, n) do
    s =  ax * 500 + bx * 100 + cx * 50
    cond do
      ax > a || bx > b || cx > c ->
        n
      s > x ->
        n
      s === x ->
        n + 1
      true ->
        solve(a, b, c, x, ax + 1, bx, cx, n) +
        solve(ax, b, c, x, ax, bx + 1, cx, n) +
        solve(ax, bx, c, x, ax, bx, cx + 1, n)
    end
  end
end
