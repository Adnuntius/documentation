---
description: The tools available through each Adnuntius MCP connector.
---

# Adnuntius MCP tools

Your agent sees the tools available to your connection. Access depends on the permissions you grant, your roles and the network's enabled features.

## Customer connector

The customer connector supports 25 tools for reporting, diagnosis, forecasting and creative uploads.

| Tool | What it does |
| --- | --- |
| `whoami` | Shows the server version, your user, the selected network and its capabilities. |
| `list_line_items` | Finds line items using filters such as name, advertiser and campaign state. |
| `diagnose_order` | Explains an order's state and why its line items are or are not delivering. |
| `diagnose_line_item` | Checks one line item's progress against its delivery objective and suggests what to change. |
| `diagnose_line_item_pacing` | Shows a line item's pacing settings, computed admission rate, limits and recent adjustments. |
| `diagnose_line_item_serving` | Runs a diagnostic ad request to explain why a line item can or cannot serve on selected ad units. |
| `diagnose_line_item_bidding` | Shows dynamic bidding decisions, bid changes and observed delivery outcomes. |
| `query_stats` | Queries advertising and publishing metrics for selected objects, with grouping, filtering and asynchronous result retrieval. |
| `query_location_stats` | Compares delivery across a line item's targeted locations, where overlapping targets can count the same impression more than once. |
| `list_sites` | Lists sites with their inventory, recent traffic and political-advertising settings. |
| `list_ad_units` | Lists ad units with their tag IDs, sizes, configured floor prices and recent traffic. |
| `list_layouts` | Lists creative layouts available in the network or allowed for a particular line item. |
| `match_files_to_layouts` | Matches file metadata to a line item's layouts and reports suitable layouts, ambiguities and reasons a file does not fit. |
| `prepare_creative_upload` | Opens a file-picker view and provides a temporary address for uploading images and videos for a selected line item. |
| `create_creatives_from_assets` | Creates creatives from uploaded asset IDs and reports each creation, required layout choice or refusal. |
| `explain_floor_price` | Explains configured floor prices and the precedence of inventory and advertiser overrides. |
| `forecast_traffic` | Forecasts ad-request traffic for selected inventory and breaks it down by features such as device, geography and creative size. |
| `estimate_campaign_reach` | Estimates the reach of a proposed marketplace campaign with its dates, product and targeting. |
| `forecast_inventory_availability` | Estimates inventory remaining after existing bookings and their priorities consume their expected allocations. |
| `list_marketplace_products` | Lists visible marketplace products with their buyer teams, prices, targeting rules and creative requirements. |
| `list_political_advertisers` | Lists visible political advertisers with their eligibility, elections, declared budgets and campaign topics. |
| `describe_targeting_options` | Explains supported targeting dimensions and lists available values where the network defines them. |
| `show_object_json` | Returns a supported object's REST JSON when the focused tools do not expose the fields you need. |
| `list_data_exports` | Lists scheduled data exports and imports with their configuration, health and reasons they cannot run. |
| `usage` | Reports admin-UI logged-in time over the last 30 days, excluding API-key and SFTP activity. |

The two upload tools require **Allow creative uploads** when you authorise the connection; the other customer tools read data. Follow [Upload creatives with an AI agent](upload-creatives-with-an-ai-agent.md) to upload files and create creatives.

## Agent booking connector

The [agent booking connector](book-a-campaign-with-an-ai-agent.md) supports these seven tools with separate booking permission. Campaign creation and changes also depend on the server enabling agent booking.

| Tool | What it does |
| --- | --- |
| `list_marketplace_products` | Lists visible marketplace products with their buyer teams, prices, targeting rules and creative requirements. |
| `estimate_campaign_reach` | Estimates the reach of a proposed marketplace campaign with its dates, product and targeting. |
| `list_advertisers` | Lists active advertisers that a buyer team owns or may use, including warnings that prevent delivery. |
| `list_political_advertisers` | Lists visible political advertisers with their eligibility, elections, declared budgets and campaign topics. |
| `create_campaign` | Creates an order and a proposed line item on an allowed marketplace product for a consenting buyer team. |
| `update_campaign` | Changes supported fields on a proposed agent-booked campaign using its latest revision. |
| `submit_campaign_for_review` | Submits a proposed agent-booked campaign for human review when its validation checks pass. |

An agent can draft a campaign, add creatives through the customer connector and submit the campaign for review in one conversation. A person must approve the campaign before it serves.

## AdCP connectors

The public AdCP connector offers the first two tools; an authenticated AdCP booking connection adds the remaining four.

| Tool | What it does |
| --- | --- |
| `get_adcp_capabilities` | Describes the AdCP versions, operations and features that the connector supports. |
| `list_products` | Discovers publicly offered advertising products and their supported buying and creative options. |
| `list_accounts` | Lists the advertiser account owned by the signed-in user. |
| `create_media_buy` | Creates an AdCP campaign for one product and optionally accepts hosted image creatives before publisher review. |
| `get_media_buys` | Reads campaign, creative-review and payment status for the user's advertiser account. |
| `update_media_buy` | Replaces image creatives on an eligible campaign or retries submission after a browser upload or payment using the current revision. |

## Staff support connector

The support connector offers the customer connector's 23 tools that read data, without either upload tool. Authorised staff can select a permitted network and user to investigate with that user's access, and the server audits the selection.

## Staff source connector

This separate connection reads only configured repositories; staff access and repository allowlists determine what it can return.

| Tool | What it does |
| --- | --- |
| `search_code` | Searches allowed GitLab repositories for a code substring and returns matching files with surrounding lines. |
| `read_file` | Reads a selected range of a source file from an allowed repository's default branch. |
| `artifact_list` | Lists the files and sizes inside a CI job's artifact archive without downloading the whole archive. |
| `trace` | Reads a CI job log and returns selected matches or its final lines. |
| `gitlab_get` | Reads allowed GitLab API paths for repository metadata, pipelines, jobs, artifacts and wiki searches. |

There are 40 distinct tool names across these connector types; three tools appear in both the customer and agent booking connectors.
