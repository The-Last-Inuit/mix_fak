<div>
    <img src="fak.png" alt="Mix FAAAAAAK!"/>
</div>


# Mix Faaaaaak!

[![Build Status](https://travis-ci.com/thelastinuit/mix_fak.svg?branch=main)](https://travis-ci.com/thelastinuit/mix_fak)

- Are you tired of your past persona making decisions that make no sense?
- Are you often asking yourself: why did I make that decision? 

Fear no more, Mix Faaaaaak! is an ADR tool for your Elixir projects. 
You don't need help, you are human, you are fine. 
What you need is better tools, Mix Faaaaaak! aims to help you out.

#### Usage

Add `mix_fak` as a development dependency in your `mix.exs`:

```
defp deps do
  [
    ...,
    {:mix_fak, "~> 1.0", only: [:dev]},
  ]
end
```

You can get information about `mix_fak` by typing:

```bash
$ mix adr --help
```

To create a new record, just type:

```bash
$ mix adr a-title-for-your-record
```

And you will find your new record at `docs/adr/TIMESTAMP_a-title-for-your-record.md`.
