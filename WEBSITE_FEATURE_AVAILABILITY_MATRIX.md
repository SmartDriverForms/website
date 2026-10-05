# Smart Driver Forms Website — Feature Availability Matrix

Updated: 2026-10-05

## Purpose

This matrix is the website source of truth for public availability claims.

It separates:

1. what drivers can use in the current verified Google Play production release;
2. what exists in current development but is not publicly released;
3. what is paused, internal-only, or still future/planned.

The website must not label a module or feature **Available**, **Current**, **Live**, or equivalent unless this matrix places it in the current public release.

## Authority / Source Order

For availability decisions, use this order:

1. verified Google Play production release source/checkpoint;
2. current Smart Driver Forms host source and Git history;
3. current standalone module repository source/status;
4. approved future-module planning documents;
5. historical website content.

Future-planning documents are superseded when a module enters active development, but active development does **not** make a module publicly available.

## Verified Current Public Release

Current verified Google Play production version:

`1.0.0+5`

Release build checkpoint:

`853ac80 — Prepare Google Play build 1.0.0+5`

Production verification checkpoint:

`2378370 — Verify Google Play production release`

The release source at `853ac80` shows these active/future module cards:

- Smart Driver Trip Sheet — active;
- Smart Mileage Recap — active;
- Smart Parking — explicitly `Future` / disabled in release mode;
- Smart Fuel Log — disabled/future.

All modules integrated after that production build are **not** part of the current verified public release unless a later production release is separately verified.

---

## A. Driver App Module Matrix

| Module / Feature | Current Google Play 1.0.0+5 | Current Development State | Website Bucket | Public Website Rule |
| --- | --- | --- | --- | --- |
| **Smart Driver Trip Sheet** | **Available Now** | Still integrated; stable legacy module retained during Smart Trip Data burn-in | **PUBLIC — AVAILABLE NOW** | Safe to present as a current app feature. Use accurate current-release capabilities only. Do not imply it has already been replaced publicly by Smart Trip Data. |
| **Smart Mileage Recap** | **Available Now** | Integrated and live-verified; development host now reads Finalized Smart Trip Data instead of legacy Trip Sheet metadata | **PUBLIC — AVAILABLE NOW** | Safe to present Weekly and Yearly mileage recap as current. Do not advertise the new Smart Trip Data-backed source as public until a new production release is published. |
| **Smart Trip Data** | Not in 1.0.0+5 | Integrated into host; full Planned → In Progress → Completed → Finalized lifecycle live-verified; Finalized Admin Edit/cross-driver admin work continuing | **DEVELOPMENT — NOT PUBLIC** | Do not call Available Now. May be described as “in development” only if roadmap/pre-release messaging is intentionally approved. |
| **Smart Parking** | Visible only as **Smart Parking — Future** and disabled in release mode | Active development; host-integrated for debug/development; nationwide data build still being completed, with Hawaii work active on 2026-10-05 | **ACTIVE DEVELOPMENT — NOT PUBLIC** | Do not call Available Now or Coming Soon as a promise. If mentioned, use “In Development” or “Planned for a future release” only with approval. |
| **Smart FMCSA Guide** | Not in 1.0.0+5 | Host-integrated; search/browse/detail flow and first-open Handbook receipt acknowledgment verified; Android phone/tablet compatibility polish remains deferred | **INTEGRATED DEVELOPMENT — NOT PUBLIC** | Do not call Available Now. Public description can be prepared for a future release, but release status must remain explicit. |
| **Smart GeoTab** | Not in 1.0.0+5 | Host-integrated; v0.5.0 source/review baseline complete and normal-use review-ready | **INTEGRATED DEVELOPMENT — NOT PUBLIC** | Do not call Available Now. If eventually marketed, describe it as a Geotab Drive how-to/reference guide, never as an ELD. |
| **Smart Truck Restrictions & Low Bridges** | Not in 1.0.0+5 | Host-integrated; 50/50 states bundled with 68,506 records; official live links added for permission-affected states; manual link handoff review remains | **INTEGRATED DEVELOPMENT — NOT PUBLIC** | Do not call Available Now. Future wording must emphasize reference-only status and never claim a route is safe/legal. |
| **Smart Haz-Mat** | Not in 1.0.0+5 | Standalone V1 functionally complete; real-device phone/tablet UI polish pending; Google Play packaging intentionally deferred; not currently integrated into the main host | **STANDALONE DEVELOPMENT COMPLETE — NOT PUBLIC** | Do not call Available Now. Do not list as a current Smart Driver Forms module until host/release integration is approved and verified. |
| **Smart Logs & HOS** | Not in 1.0.0+5 | Integrated replacement was built and validated, but Randall rejected the product direction; project is explicitly paused pending reconsideration | **PAUSED — DO NOT MARKET** | Do not feature on the public site, do not call Coming Soon, and do not make roadmap promises until Randall approves a new direction. |
| **Smart Fuel Log** | Disabled/future card in 1.0.0+5 | No current active product implementation; roadmap concept has been renamed/superseded by **Smart Fuel & DEF Log** | **FUTURE / HISTORICAL NAME** | Do not market “Smart Fuel Log” as a product. Use the approved future name Smart Fuel & DEF Log when/if roadmap content is shown. |

---

## B. Core App / Account Capability Matrix

| Capability | Current Google Play 1.0.0+5 | Current Development State | Website Bucket | Public Website Rule |
| --- | --- | --- | --- | --- |
| Smart Driver Forms Android app | **Available Now** | Production history established; active development continues | **PUBLIC — AVAILABLE NOW** | Website should have a clear Get the App / Google Play path once the production listing URL is verified and intentionally added. |
| Email account sign-in/authentication | **Available Now** | Current host remains account-authenticated | **PUBLIC — AVAILABLE NOW** | Safe to describe account sign-in, password reset, and account confirmation at a high level. |
| Settings / User profile | **Available Now** | Expanded in development, including Assigned DM | **PUBLIC — AVAILABLE NOW, WITH VERSION CAUTION** | Describe only fields/behavior known to exist in 1.0.0+5 unless a newer public release is verified. |
| Account deletion in app | **Available Now** | Current host path remains Settings / User → Account → Delete Account | **PUBLIC — AVAILABLE NOW** | Current Delete Account webpage may continue to point to this path. |
| Local storage / server synchronization | **Available Now** | Continued development and Smart Trip Data server workflows | **PUBLIC — AVAILABLE NOW, GENERAL WORDING** | Safe to explain that app data can be stored/synchronized; avoid promising new Smart Trip Data behavior until released. |
| Finalized trip-sheet PDF generation/view/share | **Available Now** | V2 Smart Trip Data PDF workflow is development-verified | **PUBLIC — AVAILABLE NOW, CURRENT-RELEASE SCOPE** | Safe to market trip-sheet creation/finalization/PDF sharing based on public Smart Driver Trip Sheet behavior. Do not imply the unreleased V2 Smart Trip Data workflow is already public. |
| Smart Trip Data Finalized Admin Edit | Not in 1.0.0+5 | Active development/validation on 2026-10-05 | **INTERNAL/DEVELOPMENT — NOT PUBLIC** | Do not market as a driver feature. |
| Linux development host | Not a public product | Primary local development/debug target | **DEVELOPMENT TOOLING** | Never market as an available desktop app. |
| Windows/macOS/Linux desktop apps | Not public | Future roadmap idea only | **FUTURE** | Do not advertise as Coming Soon unless separately approved. |

---

## C. Website / Portal / Fleet Matrix

| Surface | Current Public State | Development State | Website Bucket | Public Website Rule |
| --- | --- | --- | --- | --- |
| Public smartdriverforms.com website | **Live** | Current Website repository under active redesign/review | **PUBLIC — LIVE** | Safe to describe as the official public website. |
| Website Support / Privacy / Delete Account | **Live** | Needs modernization/consistency/privacy re-audit | **PUBLIC — LIVE** | Keep available during redesign. |
| Driver web account | Not available | Future planning only | **FUTURE — NOT PUBLIC PRODUCT** | Do not present as an active sign-in destination. “Future driver web access” is accurate if intentionally retained. |
| Fleet Portal | Not available | Placeholder/public preview plus separate future-project repo | **FUTURE — NOT PUBLIC PRODUCT** | Must be clearly labeled future/planned. Do not imply fleets can currently sign in or purchase a fleet service. |
| Fleet management / fleet reporting | Not available | Future planning | **FUTURE** | Do not call available or coming soon as a commitment. |
| Pricing / Plans | No verified public pricing defined in current website/project state | Placeholder only | **UNDEFINED — DO NOT CLAIM** | Do not invent prices or plan tiers. Consider removing Pricing from primary navigation until real pricing is approved. |
| Smart Driver Forms Admin Portal | Live internal portal | Internal administration/support surface | **INTERNAL ONLY** | Do not market as a customer product. Consider separating internal Admin login from normal public Sign In navigation. |
| Website Help / Documentation Center | Not yet built | Historical direction approved; current website review recommends it | **PLANNED WEBSITE FEATURE** | Safe to plan/build. Do not claim documentation sections exist until published. |

---

## D. Approved Future Driver Modules

These are approved product concepts from the living future-module master, **not release commitments**. They should normally stay off the main Products page until development begins or Randall deliberately chooses to publish a roadmap.

| Future Module | Current Status | Website Rule |
| --- | --- | --- |
| Smart Detention | Approved / Later | Future only; do not call Coming Soon without explicit release commitment. |
| Smart Load Document Vault | Approved / Later | Future only. |
| Smart Breakdown | Approved / Later | Future only. |
| Smart Claim & Incident Packet | Approved / Later | Future only. |
| Smart Driver Expense Log | Approved / Later | Future only. |
| Smart Fuel & DEF Log | Approved / Later | Future only; this is the current planned name replacing historical “Smart Fuel Log.” |
| Smart Load Closeout | Approved / Later | Future only. |
| Smart Settlement Audit | Approved / Later | Future only. |
| Smart Finance | Approved / Later; separate future-project material exists | Future only. |
| Smart IFTA Organizer | Approved / Later | Future only. |
| Smart Maintenance Planner | Approved / Later | Future only. |
| Smart Driver Tax Organizer | Approved / Later | Future only. |
| Smart Permit & Credential Wallet | Approved / Later | Future only. |
| Smart Chain Laws | Approved / Later | Future only. |
| Smart Hotels | Approved / Later | Future only. |

### Concepts that moved beyond the old future master

The September 7 future master still listed some concepts as future. Current repository state supersedes that older classification:

- Smart Truck Restrictions & Low Bridges → active/integrated development;
- Smart Haz-Mat → standalone V1 functionally complete, not public;
- Smart Logs FAQ → superseded by Smart Logs & HOS, currently paused/rejected direction;
- Smart FMCSA → evolved into Smart FMCSA Guide, active/integrated development.

---

## E. Historical / Superseded Names

Do not use these as current public product names without deliberate historical context.

| Historical Name | Current Meaning |
| --- | --- |
| Smart Fuel Log | Superseded future concept; current planned name is Smart Fuel & DEF Log. |
| Smart Logs FAQ | Superseded by Smart Logs & HOS; current project direction is paused pending reconsideration. |
| Smart FMCSA | Current active development product name is Smart FMCSA Guide. |
| Smart PeopleNet | Repository/product direction was converted to Smart GeoTab. |
| Smart Detention Clock | Historical concept evolved into Smart Detention. |
| Smart Breakdown Packet | Historical concept standardized as Smart Breakdown. |
| Smart Receipt Inbox | Historical concept absorbed into Smart Driver Expense Log. |
| Smart Trailer History | Removed from active future plan. |
| Smart Handoff | Removed from active future plan. |

---

## F. Website Publishing Rules

### Allowed to show as **Available Now**

At the current verified production checkpoint:

- Smart Driver Forms Android app;
- Smart Driver Trip Sheet;
- Smart Mileage Recap;
- account sign-in/account management at the level verified in the public release;
- trip-sheet creation/finalization/PDF workflows at the level verified in the public release.

### Allowed to show only as **In Development / Future** with deliberate approval

- Smart Trip Data;
- Smart Parking;
- Smart FMCSA Guide;
- Smart GeoTab;
- Smart Truck Restrictions & Low Bridges;
- Smart Haz-Mat.

No release date should be implied unless Randall explicitly approves one.

### **Do Not Market** right now

- Smart Logs & HOS, because the product direction is explicitly paused/rejected pending reconsideration;
- development-only Finalized Admin Edit;
- internal Admin Portal as a customer feature;
- any unapproved or removed historical concept.

### Future modules

Future modules may be documented in an optional roadmap later, but they should not crowd the main Products page or be described as commitments.

---

## G. Recommended Public Products Page — Current Truth

Until a new Google Play release is published, the safest public Products/Features structure is:

### Available Now

**Smart Driver Trip Sheet**
- create trip sheets;
- save/manage trip records;
- finalize records;
- generate/open/share trip-sheet documents.

**Smart Mileage Recap**
- Weekly mileage recap;
- Yearly mileage recap;
- paid-mile/actual-mile review based on current public behavior.

### In Development

Only show this section if Randall wants public roadmap visibility.

Candidate modules that can truthfully be labeled **In Development**, but not Available:

- Smart Trip Data;
- Smart Parking;
- Smart FMCSA Guide;
- Smart GeoTab;
- Smart Truck Restrictions & Low Bridges.

Smart Haz-Mat should remain out of the main integrated product list until host/release integration is approved.

Smart Logs & HOS should not appear while the product direction is paused.

### Future

Do not list the full future-module catalog on the main Products page. If a roadmap is later desired, use a separate Roadmap page with explicit non-commitment language.

---

## H. Release Promotion Rule

When a new production build is ready:

1. identify the exact Google Play build/version;
2. inspect the exact release source checkpoint;
3. list active versus disabled module cards/features in that release;
4. verify the production rollout;
5. update this matrix first;
6. only then update website “Available Now” claims.

Development integration alone is never sufficient to move a row into **PUBLIC — AVAILABLE NOW**.

---

## Exact Next Website Action

Use this matrix to rewrite the public website without overstating product availability.

First website content/design pass should:

1. update Home and Products to show the two verified current public modules accurately;
2. add a verified Get the App / Google Play call to action once the production listing link is established;
3. remove or reframe stale claims that imply Smart Parking is simply “Coming Soon”;
4. avoid mentioning Smart Logs & HOS while it is paused;
5. decide whether Randall wants an **In Development** section at all;
6. keep future-module roadmap content separate from current products.
