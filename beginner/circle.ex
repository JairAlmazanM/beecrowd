{a,_} = IO.gets("") |> String.trim() |> Float.parse()
pi = 3.14159
area = pi * a * a |> :erlang.float_to_binary([decimals: 4])
IO.puts("A=#{area}")