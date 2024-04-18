defmodule MakeupJava.MixProject do
  use Mix.Project

  @version 0.1.0
  @url "https://github.com/Quartz563/makeup_java"

  def project do
    [
      app: :makeup_java,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      aliases: aliases(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [],
      mod: {Makeup.Lexers.JavaLexer.Application, []}
    ]
  end

  defp package do
    [
      name: :makeup_java,
      licenses: ["BSD"],
      maintainers: ["Joseph Wijnstok <quartz135@gmail.com>"],
      links: %{"Github" => @url}
    ]
  end

  defp deps do
    [
      {:makeup, "~> 1.1.1"}
    ]
  end

  defp description do
    """
    Java lexer for the Markup syntax highlighter.
    """
  end

  def docs do
    [
      extras: ["README.md"],
      source_ref: "v#{@version}",
      main: "Makeup.Lexers.JavaLexer"
    ]
  end

end
