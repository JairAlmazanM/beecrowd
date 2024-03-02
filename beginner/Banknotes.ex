defmodule Banknotes do
@moduledoc """
run it with Banknotes.run
"""
@doc """
In this problem you have to read an integer value and calculate the smallest possible number of banknotes in which the value may be decomposed. 
The possible banknotes are 100, 50, 20, 10, 5, 2 and 1. 
"""
  def print_notes(a, notes) do
    print_note(a, notes, Enum.sort(notes, &(&1 >= &2)))
  end

  defp print_note(_, [], _), do: :ok

  defp print_note(a, [note | rest_notes], notes) do
    if a >= note do
      div = Float.floor(a / note) |> trunc
      IO.puts("#{div} nota(s) de R$ #{note},00")
      print_note(a - div * note, rest_notes, notes)
    else
      IO.puts("0 nota(s) de R$ #{note},00")
      print_note(a, rest_notes, notes)
    end
  end

  def run do
    notes = [100, 50, 20, 10, 5, 2, 1]
    a = IO.gets("") |> String.trim() |> String.to_integer
    print_notes(a, notes)
  end
end