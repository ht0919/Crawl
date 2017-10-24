defmodule Github do
  def get( query \\ "Elixir-lang/Elixir" ) do
    url( query )
    |> HTTPoison.get!
    |> Parse.body
    |> Poison.decode!
    |> Parse.title_list
  end
  def url( query ), do: "https://api.github.com/repos/#{query}/issues"
end
