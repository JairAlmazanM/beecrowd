@doc """
Read two integer values, in this case, the variables A and B. After this, calculate the sum between them and assign it to the variable SOMA. Write the value of this variable.
Input

The input file contains 2 integer numbers.
Output
SOMA = X
"""

a = IO.gets("") |> String.trim() |> String.to_integer()
b = IO.gets("") |> String.trim() |> String.to_integer()

x = a + b
IO.puts("SOMA = #{x}")
