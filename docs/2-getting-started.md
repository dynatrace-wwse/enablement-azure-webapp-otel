--8<-- "snippets/grail-requirements.md"

## 1. Launch the Codespace

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/dynatrace-wwse/enablement-azure-webapp-otel){target="_blank"}

!!! tip "Secrets"
    - `DT_ENVIRONMENT` — the URL of your Dynatrace environment, e.g. `https://abc123.apps.dynatrace.com`
    - `DT_INGEST_TOKEN` — an API token with **Ingest OpenTelemetry traces**, **Ingest metrics** and **Ingest logs**

While the Codespace is created, `.devcontainer/post-create.sh` installs the .NET 8 SDK, derives the
OTLP endpoint (`DT_OTEL_ENDPOINT`) from `DT_ENVIRONMENT`, and starts the web app in the background
on port **5000**.

## 2. Generate traces

1. Open the app on port **5000** (VS Code **Ports** panel).
2. Open the **Tracing** tab and click **Start Trace** a few times.
3. In Dynatrace, open **Distributed Tracing** and look for the service `dotnet-quickstart`.
   Its metrics and logs arrive over the same OTLP endpoint.

The instrumentation lives in `webapp/Program.cs`: one `AddOtlpExporter` each for traces, metrics
and logs.

## 3. Useful functions

| Function | What it does |
|---|---|
| `runWebapp` | start the app again (port 5000) |
| `logsWebapp` | follow the app log |
| `stopWebapp` | stop the app |

## 4. Deploy to Azure App Service (optional)

- [Deploy a .NET app to Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/quickstart-dotnetcore?tabs=net80&pivots=development-environment-vscode){target="_blank"}
- [Dynatrace OneAgent extension for Azure App Service](https://docs.dynatrace.com/docs/shortlink/azure-appservice-oneagent#portal){target="_blank"}
- [Instrument .NET with OpenTelemetry](https://docs.dynatrace.com/docs/shortlink/otel-wt-dotnet#manually-instrument-your-application){target="_blank"}

<div class="grid cards" markdown>
- [Cleanup :octicons-arrow-right-24:](cleanup.md)
</div>
