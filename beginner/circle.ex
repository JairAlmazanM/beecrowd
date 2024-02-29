@doc """
The formula to calculate the area of a circumference is defined as A = π . R2. Considering to this problem that π = 3.14159:
Calculate the area using the formula given in the problem description.
A=
"""

{a,_} = IO.gets("") |> String.trim() |> Float.parse()
pi = 3.14159
area = pi * a * a |> :erlang.float_to_binary([decimals: 4])
IO.puts("A=#{area}")