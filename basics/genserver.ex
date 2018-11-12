defmodule MathServer do
  def start do
    spawn &listen/0
  end

  defp listen do
    receive do
      {:sqrt, caller, arg} -> IO.puts arg
      _ -> IO.puts :stderr, "Not implemented."
    end
    listen()
  end

  def sqrt(server, arg) do
        send(server, {:sqrt, self(), arg})
  end
end
