defmodule Slack.Mixfile do
  use Mix.Project

  def project do
    [app: :slack,
     version: "0.7.0",
     elixir: "~> 1.2",
     name: "Slack",
     deps: deps,
     docs: docs,
     source_url: "https://github.com/BlakeWilliams/Elixir-Slack",
     description: "A Slack Real Time Messaging API client.",
     package: package]
  end

  def application do
    [applications: [:logger, :httpoison, :hackney, :exjsx]]
  end

  defp deps do
    [{:httpoison, "~> 0.8"},
     {:exjsx, "~> 3.2.0"},
     {:websocket_client, github: "jeremyong/websocket_client"},
     {:earmark, "~> 0.2.0", only: :dev},
     {:ex_doc, "~> 0.12", only: :dev}]
  end

  def docs do
    [{:main, Slack}]
  end

  defp package do
    %{maintainers: ["Blake Williams"],
      licenses: ["MIT"],
      links: %{
        "Github": "https://github.com/BlakeWilliams/Elixir-Slack",
        "Documentation": "http://hexdocs.pm/slack/"}}
  end
end
