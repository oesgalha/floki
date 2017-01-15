defmodule Floki.Parser do
  @moduledoc false
  @floki_root_node "floki"

  def parse(html) do
    case ExHtml5ever.parse(html) do
      {:ok, result} -> result
      {:error, error} -> {:error, error}
    end
  end
end
