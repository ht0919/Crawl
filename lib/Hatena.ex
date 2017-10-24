defmodule Hatena do
  def get( query \\ "Elixir" ) do
    url( query )
    |> HTTPoison.get!
    |> Parse.body
    |> String.slice( 1..-3 )
    |> Poison.decode!
    |> Parse.title_list
  end
  def url( query ), do: "http://b.hatena.ne.jp/entrylist/json?sort=count&url=#{query}"
end
