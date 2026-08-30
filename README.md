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

<p align="center">
  <a href="https://github.com/Riutexu/Insane-Rewards-Multiplier/stargazers">
    <img src="https://img.shields.io/github/stars/Riutexu/Insane-Rewards-Multiplier?style=social" alt="Star" />
  </a>
</p>

---

## Por qué creé este mod

Payday 2 tiene un grind extremadamente largo. Llegar al nivel 100 toma **aproximadamente 40 horas** de juego. Cada infamia resetea tu nivel y debes repetir todo el proceso. Con 500 niveles de infamia, son **miles de horas** para completarlos todos.

Este mod fue creado para jugadores que quieren:
- Disfrutar del contenido sin dedicar cientos de horas al grind
- Probar builds y estrategias sin esperar semanas para desbloquear habilidades
- Relajarse y jugar sin la presión de una progresión lenta

**No es para arruinar la experiencia.** Es para que tú decidas cuánto tiempo quieres invertir en el grind.

---

## Comparativa: con y sin el mod

###XP (sin mod vs con mod x200)

| Actividad | Sin mod | Con mod (x200) |
|-----------|---------|----------------|
| Robo normal (Overkill) | ~480,000 XP | ~96,000,000 XP |
| Robo dificil (Death Sentence) | ~1,200,000 XP | ~240,000,000 XP |
| Tiempo para nivel 100 | ~40 horas | ~12 minutos |
| Tiempo para infamia 1 | ~40 horas | ~30 minutos |
| Tiempo para infamia 100 | ~4,000 horas | ~50 horas |

### Dinero (sin mod vs con mod x20)

| Actividad | Sin mod | Con mod (x20) |
|-----------|---------|----------------|
| Robo normal (Overkill) | ~$2,000,000 | ~$40,000,000 |
| Bolsa de dinero | ~$4,000 | ~$80,000 |
| Pago por etapa | ~$500,000 | ~$10,000,000 |
| Dinero para comprar todo | ~$500,000,000 | ~$25,000,000 |

---

## Riesgo de baneo

### Modo offline (sin conexión)

**Riesgo: NINGUNO**

- Los mods solo modifican el código del lado del cliente
- En modo offline, no hay servidor que verifique tus datos
- Tus estadísticas se guardan localmente en tu PC
- Puedes jugar tranquilo sin preocuparte

### Modo online (con conexión)

**Riesgo: BAJO a MEDIO**

- El juego envía tus estadísticas a los servidores de Starbreeze
- Si tus números son absurdamente altos (ej: 96 millones de XP en un robo), Starbreeze **podría** detectarlo
- Sin embargo, Starbreeze **no tiene un sistema anti-cheat activo** para Payday 2
- El juego tiene más de 10 años y los desarrolladores ya no lo monitorean activamente

### Recomendaciones

| Situación | Recomendación |
|-----------|---------------|
| jugando solo | Usa el mod sin problemas |
| jugando con amigos | Asegúrate de que todos usen el mod o estén de acuerdo |
| jugando con desconocidos | Usa el mod con precaución, o quítalo antes de unirte |
| queriendo ser seguro | Usa el mod solo en modo offline |

### ¿Pueden banearme?

Técnicamente sí, pero es **muy improbable**. Starbreeze no ha baneado a jugadores por usar mods en años. Su enfoque está en Payday 3, no en moderar Payday 2. El peor escenario sería que te quiten las estadísticas infladas, no que te eliminen la cuenta.

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
  <sub>Si te sirvió, por favor déjanos una ⭐ estrella en el repositorio</sub>
</p>

<p align="center">
  <sub>Creado con <img src="https://skillicons.dev/icons?i=lua" width="14" alt="Lua" /> para PAYDAY 2</sub>
</p>
