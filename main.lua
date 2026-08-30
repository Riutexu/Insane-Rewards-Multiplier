-- Insane Rewards Multiplier v7.1
-- Creado por Riutexu
-- XP de infamia x200, dinero x20. Sin offshore.

local XP_MULT = 200
local CASH_MULT = 20

local function install_hooks()
    if not ExperienceManager or not MoneyManager then
        log("[Insane Rewards] Managers not ready yet")
        return false
    end

    -- ============ XP HOOKS ============
    if ExperienceManager.give_experience and not ExperienceManager._insane_orig_give_xp then
        ExperienceManager._insane_orig_give_xp = ExperienceManager.give_experience
        function ExperienceManager:give_experience(xp, ...)
            return ExperienceManager._insane_orig_give_xp(self, (xp or 0) * XP_MULT, ...)
        end
        log("[Insane Rewards] XP: give_experience")
    end

    if ExperienceManager.add_points and not ExperienceManager._insane_orig_add_points then
        ExperienceManager._insane_orig_add_points = ExperienceManager.add_points
        function ExperienceManager:add_points(points, ...)
            return ExperienceManager._insane_orig_add_points(self, (points or 0) * XP_MULT, ...)
        end
        log("[Insane Rewards] XP: add_points")
    end

    if ExperienceManager._set_total and not ExperienceManager._insane_orig_set_total then
        ExperienceManager._insane_orig_set_total = ExperienceManager._set_total
        function ExperienceManager:_set_total(total, ...)
            return ExperienceManager._insane_orig_set_total(self, (total or 0) * XP_MULT, ...)
        end
        log("[Insane Rewards] XP: _set_total")
    end

    -- ============ CASH HOOKS ============
    if MoneyManager._add_to_total and not MoneyManager._insane_orig_add_to_total then
        MoneyManager._insane_orig_add_to_total = MoneyManager._add_to_total
        function MoneyManager:_add_to_total(amount)
            local multiplied = (amount or 0) * CASH_MULT
            return MoneyManager._insane_orig_add_to_total(self, multiplied)
        end
        log("[Insane Rewards] Cash: _add_to_total")
    end

    if MoneyManager.add_to_total and not MoneyManager._insane_orig_add_to_total_pub then
        MoneyManager._insane_orig_add_to_total_pub = MoneyManager.add_to_total
        function MoneyManager:add_to_total(amount)
            local multiplied = (amount or 0) * CASH_MULT
            return MoneyManager._insane_orig_add_to_total_pub(self, multiplied)
        end
        log("[Insane Rewards] Cash: add_to_total")
    end

    if MoneyManager._set_total and not MoneyManager._insane_orig_set_cash then
        MoneyManager._insane_orig_set_cash = MoneyManager._set_total
        function MoneyManager:_set_total(amount)
            local multiplied = (amount or 0) * CASH_MULT
            return MoneyManager._insane_orig_set_cash(self, multiplied)
        end
        log("[Insane Rewards] Cash: _set_total")
    end

    if MoneyManager._set_offshore and not MoneyManager._insane_orig_set_offshore then
        MoneyManager._insane_orig_set_offshore = MoneyManager._set_offshore
        function MoneyManager:_set_offshore(amount)
            local multiplied = (amount or 0) * 1
            return MoneyManager._insane_orig_set_offshore(self, multiplied)
        end
        log("[Insane Rewards] Cash: _set_offshore")
    end

    if MoneyManager.on_loot_drop_offshore and not MoneyManager._insane_orig_loot_offshore then
        MoneyManager._insane_orig_loot_offshore = MoneyManager.on_loot_drop_offshore
        function MoneyManager:on_loot_drop_offshore(amount)
            local multiplied = (amount or 0) * 1
            return MoneyManager._insane_orig_loot_offshore(self, multiplied)
        end
        log("[Insane Rewards] Cash: on_loot_drop_offshore")
    end

    -- ============ HEIST PAYOUT HOOKS ============
    if MoneyManager._set_job_payout and not MoneyManager._insane_orig_job_payout then
        MoneyManager._insane_orig_job_payout = MoneyManager._set_job_payout
        function MoneyManager:_set_job_payout(amount)
            return MoneyManager._insane_orig_job_payout(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_job_payout")
    end

    if MoneyManager._set_bag_payout and not MoneyManager._insane_orig_bag_payout then
        MoneyManager._insane_orig_bag_payout = MoneyManager._set_bag_payout
        function MoneyManager:_set_bag_payout(amount)
            return MoneyManager._insane_orig_bag_payout(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_bag_payout")
    end

    if MoneyManager._set_small_loot_payout and not MoneyManager._insane_orig_small_loot then
        MoneyManager._insane_orig_small_loot = MoneyManager._set_small_loot_payout
        function MoneyManager:_set_small_loot_payout(amount)
            return MoneyManager._insane_orig_small_loot(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_small_loot_payout")
    end

    if MoneyManager._set_stage_payout and not MoneyManager._insane_orig_stage_payout then
        MoneyManager._insane_orig_stage_payout = MoneyManager._set_stage_payout
        function MoneyManager:_set_stage_payout(amount)
            return MoneyManager._insane_orig_stage_payout(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_stage_payout")
    end

    if MoneyManager._set_event_payout and not MoneyManager._insane_orig_event_payout then
        MoneyManager._insane_orig_event_payout = MoneyManager._set_event_payout
        function MoneyManager:_set_event_payout(amount)
            return MoneyManager._insane_orig_event_payout(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_event_payout")
    end

    if MoneyManager._set_vehicle_payout and not MoneyManager._insane_orig_vehicle_payout then
        MoneyManager._insane_orig_vehicle_payout = MoneyManager._set_vehicle_payout
        function MoneyManager:_set_vehicle_payout(amount)
            return MoneyManager._insane_orig_vehicle_payout(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_vehicle_payout")
    end

    if MoneyManager._set_crew_payout and not MoneyManager._insane_orig_crew_payout then
        MoneyManager._insane_orig_crew_payout = MoneyManager._set_crew_payout
        function MoneyManager:_set_crew_payout(amount)
            return MoneyManager._insane_orig_crew_payout(self, (amount or 0) * CASH_MULT)
        end
        log("[Insane Rewards] Payout: _set_crew_payout")
    end

    log("[Insane Rewards] v7.1 all hooks installed! XP x" .. XP_MULT .. " Cash x" .. CASH_MULT)
    return true
end

install_hooks()
