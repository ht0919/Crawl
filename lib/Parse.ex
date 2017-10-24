defmodule Parse do
  def body( %{ status_code: 200, body: json_body } ), do: json_body
  def title_list( body ), do: _title_list( body, [] )
    defp _title_list( [ %{ "title" => json_title } | tail ], titles ) do
      _title_list( tail, [ json_title | titles ] )
    end
    defp _title_list( [], titles ), do: Enum.reverse( titles )
end
