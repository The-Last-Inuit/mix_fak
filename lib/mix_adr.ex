defmodule Mix.Tasks.Adr do
  use Mix.Task

  @moduledoc """
    Cargo Faaaaaak! is an ADR tool for your Rust projects.
    You don't need help, you are human, you are fine. What you need
    is better tools, Cargo Faaaaaak! aims to help you out."
  """
  @shortdoc "Creates an ADR card"

  @content """
    #### Context
    This section describes the forces at play, including technological, political, social, and project local.
    These forces are probably in tension, and should be called out as such. The language in this section is value-neutral. It is simply describing facts.
    #### Decision
    This section describes our response to these forces. It is stated in full sentences, with active voice. 'We will...'
    #### Status
    i.e. accepted, proposed, etc
    #### Consequences
    This section describes the resulting context, after applying the decision. All consequences should be listed here,
    not just the 'positive' ones. A particular decision may have positive, negative, and neutral consequences,
    but all of them affect the team and project in the future.
  """

  @directory_path "docs/adr/"
  def directory_path, do: @directory_path

  def run(), do: run(["no-title"])
  @impl Mix.Task
  def run(args) do
    title = Enum.at(args, 0)
    filename_path = @directory_path
                    <> timestamp()
                    <> "-"
                    <> title
                    <> ".md"
    with :ok <- File.mkdir_p(@directory_path) do
      File.write(filename_path, @content)
    end
  end

  defp timestamp do
    :milli_seconds
    |>:os.system_time
    |> Integer.to_string
  end
end
