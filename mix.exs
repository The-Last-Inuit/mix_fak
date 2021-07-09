defmodule MixAdr.MixProject do
  use Mix.Project

  def project do
    [
      app: :mix_adr,
      version: "1.0.1",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Cargo Faaaaaak! is an ADR tool for your Rust projects. You don't need help, you are human, you are fine. What you need is better tools, Cargo Faaaaaak! aims to help you out.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["a louise"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/thelastinuit/mix_fak"}
    ]
  end
end
