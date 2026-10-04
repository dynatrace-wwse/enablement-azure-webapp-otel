---
description: Run a sample .NET web application that is instrumented with the OpenTelemetry SDK and sends its traces, metrics and logs to Dynatrace over OTLP. The same app can be deployed to Azure App Service, with or without the Dynatrace OneAgent extension.
tags:
  - classic
  - opentelemetry
  - azure
---

!!! warning "Not yet migrated to the Dynatrace Enablement App"
    This training has not been migrated to a fully immersive, interactive and self-service training.
    Questions or feedback? Reach out to the Center of Excellence Enablement Team via
    [GitHub Issues](https://github.com/dynatrace-wwse/codespaces-framework/issues)
    or the [feedback form](https://forms.office.com/r/QaCx6VAJe8).

--8<-- "snippets/disclaimer.md"

# Azure Web App & OpenTelemetry

This repository is a **sample web application** that shows how an app can be instrumented to
send **OpenTelemetry signals to Dynatrace**.

The app is a small ASP.NET Core (.NET 8) web application. It uses the OpenTelemetry .NET SDK and
exports **traces, metrics and logs** over OTLP/HTTP straight to your Dynatrace environment
(`<your-environment>/api/v2/otlp`), authenticated with an ingest token. No collector sits in
between.

The same application can also run on **Azure App Service**, in three flavours:

- the Dynatrace **OneAgent extension** for Azure App Service,
- **OpenTelemetry** via OTLP (what this Codespace runs),
- OneAgent extension **plus** OpenTelemetry.

<div class="grid cards" markdown>
- [Let's begin :octicons-arrow-right-24:](2-getting-started.md)
</div>
