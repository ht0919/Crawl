defmodule Crawl do
  def get( query \\ "Elixir" ) do
    url( query )
    |> HTTPoison.get!
    |> Parse.body
    |> Poison.decode!
    |> Parse.title_list
  end
  def url( query ), do: "https://qiita.com/api/v2/items?query=#{query}"
end
