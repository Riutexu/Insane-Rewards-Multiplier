<p align="center">
  <img src="https://skillicons.dev/icons?i=lua,payday2" alt="Skills" />
</p>

<h1 align="center">Insane Rewards Multiplier</h1>

<p align="center">
  <strong>Payday 2 mod that multiplies XP and cash rewards</strong><br/>
  <em>Creado por Riutexu</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-7.1-blue?style=flat-square" alt="Version" />
  <img src="https://img.shields.io/badge/Lua-5.1-000080?style=flat-square&logo=lua" alt="Lua" />
  <img src="https://img.shields.io/badge/SuperBLT-Compatible-green?style=flat-square" alt="SuperBLT" />
  <img src="https://img.shields.io/badge/License-MIT-yellow?style=flat-square" alt="License" />
</p>

---

## What it does

Multiplies your XP and cash gains. Customize the multipliers by editing two numbers in `main.lua`.

| Resource | Default Multiplier |
|----------|-------------------|
| XP (including infamy) | x200 |
| Cash (total) | x20 |
| Offshore | x1 (unchanged) |

## Install

1. Download the latest release
2. Extract into `PAYDAY 2/mods/`
3. Restart the game

## Configuration

Open `main.lua` and change these lines:

```lua
local XP_MULT = 200    -- XP multiplier
local CASH_MULT = 20   -- Cash multiplier
```

## How it works

Hooks into `ExperienceManager` and `MoneyManager` via SuperBLT. Replaces the original functions with multiplied versions. All hooks use safe function replacement — originals are preserved and called with multiplied values.

**Hooks:**
- `ExperienceManager:give_experience`
- `ExperienceManager:add_points`
- `ExperienceManager:_set_total`
- `MoneyManager:_add_to_total`
- `MoneyManager:add_to_total`
- `MoneyManager:_set_total`
- `MoneyManager:_set_offshore` (x1)
- `MoneyManager:on_loot_drop_offshore` (x1)
- `MoneyManager:_set_job_payout`
- `MoneyManager:_set_bag_payout`
- `MoneyManager:_set_small_loot_payout`
- `MoneyManager:_set_stage_payout`
- `MoneyManager:_set_event_payout`
- `MoneyManager:_set_vehicle_payout`
- `MoneyManager:_set_crew_payout`

## Changelog

### v7.1
- Updated author to Riutexu
- Version bump

### v7.0
- Initial mod version
- XP multiplier (default x200)
- Cash multiplier (default x20)
- Offshore unaffected

## License

MIT License. See [LICENSE](LICENSE) for details.

---

<p align="center">
  <sub>Made with <img src="https://skillicons.dev/icons?i=lua" width="14" alt="Lua" /> for PAYDAY 2</sub>
</p>
