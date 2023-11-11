# Creating multiple processes
for _num <- 1..10_000_000 do
  spawn(fn -> 1+1 end)
end
IO.puts("Done")
# look for beam process in activity monitor
