# iOS Fastlane CI/CD Setup

Automated iOS build and deployment pipeline using **Fastlane**.  
Build, archive, and ship your app to TestFlight or App Store — all with a single command.

---

## Quick Start

> **Want to upload to TestFlight?** Run this:
> ```bash
> fastlane upload
> ```

> **Want to submit for App Store distribution?** Run this:
> ```bash
> fastlane release
> ```

---

## Workflows

### `fastlane upload` — TestFlight

Use this when you want to share the app with testers or run QA.

**What it does automatically:**
1. Cleans the project
2. Builds and archives the app
3. Exports the IPA
4. Uploads to TestFlight

---

### `fastlane release` — App Store Distribution

Use this when you are ready to ship the app to the App Store.

**What it does automatically:**
1. Cleans the project
2. Builds and archives the app
3. Exports the IPA
4. Uploads to App Store Connect
5. Submits for Apple review
6. Release is set to **manual** — you decide when to go live

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| **Fastlane** | iOS automation framework |
| **gym** | Build and archive |
| **pilot** | TestFlight upload |
| **deliver** | App Store submission |
| **App Store Connect API (p8)** | Secure, password-free auth |

---

## Setup

1. Install Fastlane:
```bash
brew install fastlane
```

2. Update `fastlane/Appfile` with your details:
```ruby
app_identifier("your.bundle.id")
apple_id("your@email.com")
team_id("YOUR_TEAM_ID")
```

3. Update `fastlane/Fastfile` with your API key:
```ruby
key_id: "YOUR_KEY_ID"
issuer_id: "YOUR_ISSUER_ID"
key_filepath: "/path/to/AuthKey.p8"
```

4. Run your desired command:
```bash
fastlane upload    # TestFlight
fastlane release   # App Store
```

---

## Project Structure

```
fastlane/
├── Appfile      # App identifier, Apple ID, Team ID
└── Fastfile     # upload (TestFlight) + release (App Store) lanes
```

---

## Author

**Bilal Zafar** — iOS Developer
