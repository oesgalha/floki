defmodule Floki.Parser do
  @moduledoc false
  @floki_root_node "floki"

  def parse(html) do
    case Html5ever.parse(html) do
      {:ok, result} -> result
      {:error, error} -> {:error, error}
    end
  end

  def parse_m(html) do
    html = "<#{@floki_root_node}>#{html}</#{@floki_root_node}>"
    {@floki_root_node, [], parsed} = :mochiweb_html.parse(html)

    if length(parsed) == 1, do: hd(parsed), else: parsed
  end
end
