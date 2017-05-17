# Take a look at an IPV4 packet. Try writing a parser for it.

defmodule IPV4 do
  def parse(packet) do
    case File.read(packet) do
      {:ok, packet} ->
        << version      :: binary-size(4),
           ihl          :: binary-size(4),
           dscp         :: binary-size(6),
           ecn          :: binary-size(2),
           total_length :: binary-size(16)  >> = packet

        IO.puts "version: #{version}, ihl: #{ihl}, dscp: #{dscp}, enc: #{ecn}, total_length: #{total_length}"

      _ ->
        IO.puts "Couldn't read #{packet}"
    end
  end
end
