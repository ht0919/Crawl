defmodule Misc do
  def sort( values ), do: Enum.sort( values )
  def match_sample( %{ k2: value } ), do: value
  def match( %{ Yes: "we can" } ), do: "Barak Obama"
  def match( %{ Yes: need } ), do: need
  def match( _ ), do: "Yes...NOT EXIST"
  def match_inner( input_map ) do
    %{ Yes: need } = input_map
    need
  end
  def nop( [ head | tail ], rows ), do: nop( tail, rows ++ [ head ] )
  def nop( [], rows ), do: rows
end
