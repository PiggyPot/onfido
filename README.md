# Onfido

Elixir wrapper for the [Onfido](https://onfido.com) API

## Installation

```elixir
def deps do
  [
    {:onfido, "~> 0.1.0"}
  ]
end
```

2. Add configuration to your app:

```elixir
config :onfido,
  api_base: "https://api.onfido.com/v2",
  api_token: "<your-api-token>"
```

## Documentation

#### Core Resources

[Applicants](https://hexdocs.pm/onfido/Onfido.Resources.Applicant.html)\
[Documents](https://hexdocs.pm/onfido/Onfido.Resources.Documents.html)\
[Checks](https://hexdocs.pm/onfido/Onfido.Resources.Check.html)\
[Reports](https://hexdocs.pm/onfido/Onfido.Resources.Report.html)\
[Webhooks](https://hexdocs.pm/onfido/Onfido.Resources.Webhook.html)

#### Other Resources

[Address Picker](https://hexdocs.pm/onfido/Onfido.Resources.AddressPicker.html)\
[SDK Token Generation](https://hexdocs.pm/onfido/Onfido.Resources.SdkToken.html)\
[Street Level Code](https://hexdocs.pm/onfido/Onfido.Resources.StreetLevelCode.html)

You can read the docs [at hex.pm](https://hexdocs.pm/onfido)

## Development Setup

If you are making changes to this codebase and want to test your code, you will need to copy the sample secret file.

```elixir
cp config/secret.sample.exs config/secret.exs
```

Then add your relevant Onfido access details here.
