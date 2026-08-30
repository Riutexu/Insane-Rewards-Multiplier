<p align="center">
  <img src="https://skillicons.dev/icons?i=lua,payday2" alt="Skills" />
</p>

<h1 align="center">Insane Rewards Multiplier</h1>

<p align="center">
  <strong>Mod de Payday 2 que multiplica las recompensas de XP y dinero</strong><br/>
  <em>Creado por Riutexu</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-7.1-blue?style=flat-square" alt="Version" />
  <img src="https://img.shields.io/badge/Lua-5.1-000080?style=flat-square&logo=lua" alt="Lua" />
  <img src="https://img.shields.io/badge/SuperBLT-Compatible-green?style=flat-square" alt="SuperBLT" />
  <img src="https://img.shields.io/badge/Licencia-MIT-yellow?style=flat-square" alt="License" />
</p>

---

## Qué hace

Multiplica tus ganancias de XP y dinero. Personaliza los multiplicadores editando dos números en `main.lua`.

| Recurso | Multiplicador por defecto |
|---------|--------------------------|
| XP (incluyendo infamia) | x200 |
| Dinero (efectivo total) | x20 |
| Offshore | x1 (sin cambio) |

## Instalación

1. Descarga la última release
2. Extrae en `PAYDAY 2/mods/`
3. Reinicia el juego

## Configuración

Abre `main.lua` y cambia estas líneas:

```lua
local XP_MULT = 200    -- Multiplicador de XP
local CASH_MULT = 20   -- Multiplicador de dinero
```

## Cómo funciona

Se engancha a `ExperienceManager` y `MoneyManager` a través de SuperBLT. Reemplaza las funciones originales con versiones multiplicadas. Todos los hooks usan reemplazo seguro de funciones — las originales se preservan y se llaman con valores multiplicados.

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
- Autor actualizado a Riutexu
- Incremento de versión

### v7.0
- Versión inicial del mod
- Multiplicador de XP (por defecto x200)
- Multiplicador de dinero (por defecto x20)
- Offshore sin cambios

## Licencia

Licencia MIT. Consulta [LICENSE](LICENSE) para más detalles.

---

<p align="center">
  <sub>Creado con <img src="https://skillicons.dev/icons?i=lua" width="14" alt="Lua" /> para PAYDAY 2</sub>
</p>
