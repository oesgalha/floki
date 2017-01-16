defmodule Floki.Mixfile do
  use Mix.Project

  @description "Floki is a simple HTML parser that enables search for nodes using CSS selectors."
  @version "0.12.0"

  def project do
    [app: :floki,
     name: "Floki",
     version: @version,
     description: @description,
     elixir: ">= 1.2.0",
     package: package(),
     deps: deps(),
     source_url: "https://github.com/philss/floki",
     docs: [extras: ["README.md"], main: "Floki"]]
  end

  def application do
    [applications: [:logger, :rustler, :ex_html5ever, :mochiweb]]
  end

  defp deps do
    [
      {:ex_html5ever, github: "hansihe/ex_html5ever"},
      {:mochiweb, "~> 2.15"},
      {:benchee, "~> 0.6", only: :dev},
      {:earmark, "~> 1.0", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev},
      {:credo,">= 0.0.0", only: [:dev, :test]},
      {:inch_ex,">= 0.0.0", only: :docs}
    ]
  end

  defp package do
    %{
      maintainers: ["Philip Sampaio Silva"],
      licenses: ["MIT"],
      files: ["lib", "src/*.xrl", "mix.exs", "README.md", "LICENSE"],
      links: %{
        "GitHub" => "https://github.com/philss/floki",
        "Docs"   => "http://hexdocs.pm/floki"
      }
    }
  end
end
