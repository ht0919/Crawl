defmodule Wikipedia do
  def get( query \\ "Elixir" ) do
    url( query )
    |> HTTPoison.get!
    |> Parse.body
    |> Poison.decode!
    |> dig
    |> Parse.title_list
  end
  def url( query ), do: "https://ja.wikipedia.org/w/api.php?format=json&action=query&list=search&srsearch=#{query}"
  def dig( %{ "query" => %{ "search" => search} } ), do: search
end
