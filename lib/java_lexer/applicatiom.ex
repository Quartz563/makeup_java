defmodule Makeup.Lexers.JavaLexer.Application do
    @moduledoc false
    use Application

    alias Makeup.Registry
    alias Makeup.Lexers.JavaLexer

    def start(_type, _args) do
        Registry.register_lexer(JavaLexer,
            options: [],
            names: ["java"],
            extensions: ["java"]
        )

        Supervisor.start_link([], strategy: :one_for_one)
    end
end