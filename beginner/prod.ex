@doc """
Read two integer values. After this, calculate the product between them and store the result in a variable named PROD. Print the result like the example below. 
PROD = x
"""
a = IO.gets("") |> String.trim() |> String.to_integer()
b = IO.gets("") |> String.trim() |> String.to_integer()

x = a * b
IO.puts("PROD = #{x}")
