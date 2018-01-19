
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
  ["Developer"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Welcome back developer ;)"}) end},
    "player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem",
    "admin.tickets",
    "admin.announce",
    "admin.menu",
    "admin.easy_unjail",
    "admin.spikes",
    "admin.godmode",
    "admin.spawnveh",
    "admin.deleteveh",
    "player.blips",
    "player.tptowaypoint",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "pdcmd.vehicle",
    "player.custom_emote",
    "player.custom_sound",
    "player.display_custom",
    "player.coords",
    "player.tptome",
    "emergency.revive",
    "emergency.shop",
    "player.tpto"
  },
  ["superadmin"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"You are superadmin."}) end},
    "player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem"
  },
  ["admin"] = {
    "admin.tickets",
    "admin.announce",
	"admin.menu",
	"admin.easy_unjail",
	"admin.spikes",
	"admin.godmode",
	"admin.spawnveh",
	"admin.deleteveh",
	"player.blips",
	"player.tptowaypoint",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
    "player.custom_sound",
    "player.display_custom",
    "player.coords",
    "player.tptome",
	"emergency.revive",
	"emergency.shop",
    "player.tpto"
  },
     ["god"] = {
    "admin.god" -- reset survivals/health periodically
  },
  ["recruiter"] = {
    "player.list",
	"player.group.add",
    "player.group.remove",
    },
  ["mod"] = {
	"admin.tickets",
    "admin.announce",
    "player.list",
    "player.kick",
    "player.coords",
    "player.tptome",
	"emergency.revive",
	"emergency.shop",
    "player.tpto"
  },
  -- the group user is auto added to all logged players
  ["user"] = {
    "player.phone",
    "player.calladmin",
	"player.fix_haircut",
	"player.check",
	--"mugger.mug",
    "police.askid",
    "police.store_weapons",
	"player.store_money",
	"player.check",
	"player.loot",
	"player.player_menu",
	"player.userlist",
    "police.seizable",	-- can be seized
	"user.paycheck"
  },
  ["Fisher"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Fisherman."}) end
	},
	"mission.delivery.fish",
    "fisher.service",
	"fisher.vehicle"
    },
  ["Cargo Pilot"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Cargo Pilot."}) end
	},
	"mission.pilot.cargo",
	"pilot.vehicle",
	"pilot.paycheck"
    },
  ["Airline Pilot"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Pilot, salary : $6000."}) end
	},
    "airlines.service",
	"air.vehicle",
	"air.paycheck"
  },
  ["Medical Transport"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You now transport Medical weed."}) end
	},
	"mission.delivery.medical",
    "medical.service",
	"medical.vehicle"
    },
  ["Weapons Smuggler"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Weapons Smuggler."}) end
	},
	"mission.weapons.smuggler",
    "smuggler.service"
    },
    -- START NYPD ---------------------------------------------------------------------------------------------------------------------------------------------------
  ["Police Officer"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{true}) end
    },
    "Officer.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"nypd.whitelisted",
	"emergency.market",
	"emergency.revive",
	"emergency.shop",
	"player.list",
	"police.menu_interaction",
	"police.paycheck"
  },
  ["Probationary Police Officer"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{true}) end
    },
    "Officer.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "nypd.whitelisted",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "player.list",
  "police.menu_interaction",
  "police.paycheck"
  },
    ["Recruit Officer"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "police.cloakroom",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.seize.weapons",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "Cadet.vehicle",
  "police.loadshop",
  "nypd.whitelisted",
  "police.menu_interaction",
  "Cadet.paycheck"
  },
      ["Recruit"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "police.cloakroom",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.seize.weapons",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "Cadet.vehicle",
  "police.loadshop",
  "nypd.whitelisted",
  "police.menu_interaction",
  "Cadet.paycheck"
  },
  ["SWAT"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "SWAT.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "police.menu_interaction",
  "SWAT.paycheck"
  },
  ["Police Commissioner"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "Chief.cloakroom",
    "player.group.add",
    "player.group.remove",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
    --"-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "pdcmd.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "police.menu_interaction",
  "Chief.paycheck"
  },
        ["Captain"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "Captain.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "pdcmd.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "cpt.whitelisted",
  "police.menu_interaction",
  "Captain.paycheck"
  },
    ["Lieutenant"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "Lieutenant.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "pdcmd.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "lt.whitelisted",
  "police.menu_interaction",
  "Lieutenant.paycheck"
  },
      ["Detective 2nd Class"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "Detective.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "det.vehicle",
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "det.whitelisted",
  "police.menu_interaction",
  "Detective.paycheck"
  },  
      ["Detective 1st Class"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "Detective.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "det.vehicle",
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "det.whitelisted",
  "police.menu_interaction",
  "Detective.paycheck"
  },
    ["Sergeant"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "Sergeant.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "pdsgt.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nypd.whitelisted",
  "sgt.whitelisted",
  "police.menu_interaction",
  "Sergeant.paycheck"
  },
      ["Dispatcher"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
    "police.pc",
    "police.check",
    "police.service",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.wanted",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "cop.whitelisted",
  "police.menu_interaction",
  "Dispatch.paycheck"
  },
  -- END NYPD --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  -- START NYSP ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ["First Sergeant"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "nysp.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nysp.whitelisted",
  "police.menu_interaction",
  "sergeant.paycheck"
  },
  ["Senior Investigator"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "invest.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nysp.whitelisted",
  "police.menu_interaction",
  "snrinvest.paycheck"
  },
      ["Investigator"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "invest.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nysp.whitelisted",
  "police.menu_interaction",
  "invest.paycheck"
  },
      ["Sergeant (State)"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "nysp.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nysp.whitelisted",
  "police.menu_interaction",
  "ssergeant.paycheck"
  },
      ["Trooper"] = {
    _config = { gtype = "job",
    onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
  },
  "nysp.cloakroom",
    "police.pc",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.service",
    "police.wanted",
  "police.drag",
  "police.easy_cuff",
  "police.easy_fine",
  "police.easy_jail",
  "police.easy_unjail",
  "police.spikes",
  "police.menu",
    "police.check",
  "toggle.service",
  "police.freeze",
    "police.seize.weapons",
    "police.seize.items",
    --"police.jail",
    --"police.fine",
    "police.announce",
   -- "-police.store_weapons",
    "-police.seizable", -- negative permission, police can't seize itself, even if another group add the permission
  "police.vehicle",
  "police.loadshop",
  "emergency.market",
  "emergency.revive",
  "emergency.shop",
  "nysp.whitelisted",
  "police.menu_interaction",
  "Trooper.paycheck"
  },
  -- END NYSP -----------------------------------------------------------------------------------------------------------------------------------------------------------
  -- START FDNY / NY EMS -----------------------------------------------------------------------------------------------------------------------------------------------------------
  ["Fire Chief"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are the Fure Chief, salary : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "emergency.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Assistant Chief"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are the Assistant Chief, salary : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "emergency.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Batallion Chief"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are a Batallion Chief, salary : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "Batallion.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Fire Captain"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are a, Fire Captain : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "fire.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Fire Lieutenant"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are a, Fire Lieutenant : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "fire.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Driver Engineer"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are a Driver Engineer, salary : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "fire.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Firefighter"] = {
    _config = { gtype = "job",
  onspawn = function(player) vRPclient.notify(player,{"You are a Firefighter, salary : $1500."}) end
  },
    "emergency.revive",
  "police.pc",
  --"police.wanted",
    "emergency.shop",
    "emergency.service",
  "emergency.cloakroom",
  "fire.vehicle",
  "emergency.market",
  "ems.whitelisted",
  "ems.loadshop",
  "player.list",
  "police.menu_interaction",
  "emergency.paycheck"
  },
  ["Probationary Firefighter"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Probationary Firefighter, salary : $1500."}) end
	},
    "emergency.revive",
	"police.pc",
	--"police.wanted",
    "emergency.shop",
    "emergency.service",
	"emergency.cloakroom",
	"fire.vehicle",
	"emergency.market",
	"ems.whitelisted",
	"ems.loadshop",
	"player.list",
	"police.menu_interaction",
	"emergency.paycheck"
  },
  -- END FDNY / NY EMS -----------------------------------------------------------------------------------------------------------------------------------------------------------
  ["Mechanic"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Mechanic, salary : $900."}) end
	},
    "vehicle.repair",
    "vehicle.replace",
    "repair.service",
	"mission.repair.satellite_dishes",
	"mission.repair.wind_turbines",
	"repair.vehicle",
	"repair.market",
	"repair.paycheck"
  },
  ["UBER"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are UBER, salary : $600."}) end
	},
    "uber.service",
	"uber.vehicle",
	"uber.paycheck"
  },
 -- ["Gunrunning"] = {
   -- _config = { gtype = "job",
	--onspawn = function(player) vRPclient.notify(player,{"Coming soon, Please wait!"}) end
  --}
--},
  ["Unemployed"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Unemployed, go to Department of Jobs."}) end
	},
	"citizen.paycheck"
  },
  ["Delivery"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Delivery Driver, Salary : $500."}) end
	},
	"mission.delivery.food",
	"delivery.vehicle",
	"delivery.paycheck"
  },
  ["Lawyer"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Lawyer, Salary : $2000."}) end
	},
	"Lawyer.vehicle",
	"Lawyer.whitelisted",
	"Lawyer.cloakroom",
	"Lawyer.paycheck"
  },
  ["Drug Dealer"] = {
    _config = { gtype = "job",
	    onspawn = function(player) vRPclient.notify(player,{"You are a Drug Dealer."}) end
	  },
    "mission.drugseller.weed",
    "drugseller.market",
    "harvest.weed"
  },
  ["Santa"] = {
    _config = { gtype = "job",
	    onspawn = function(player) vRPclient.notify(player,{"You are Santa, ho ho ho."}) end
	  },
    "mission.santa", -- What mission Santa has
    "santa.vehicle", -- Access to his garage
	"santa.paycheck", -- How much santa gets paid per 15 mins
	"santa.cloakroom", -- Santa's cloakroom
    "harvest.presents" -- What he gathers (item transformers.lua)
  },
  ["Hacker"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Hacker."}) end
	},
	"mission.hacker.information",
	"hacker.hack",
	"hacker.credit_cards"
  },
  ["Bankdriver"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Bank Driver."}) end
	},
	"mission.bankdriver.moneybank",
	"mission.bankdriver.moneybank2",
	"bankdriver.vehicle",
	"bankdriver.paycheck",
	"bankdriver.money"
  },

  ["Bounty Hunter"] = {
    _config = { gtype = "job",
	  onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
	},
	"Bounty.cloakroom",
    --"police.handcuff",
    "police.putinveh",
    "police.getoutveh",
	"police.drag",
	"police.easy_cuff",
	"police.easy_fine",
	"police.easy_jail",
	"police.easy_unjail",
	"police.spikes",
	"police.menu",
    "police.check",
	"toggle.service",
	"police.freeze",
    "police.service",
    "police.wanted",
    "Bounty.vehicle",
   -- "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"Bounty.vehicle",
	"Bounty.loadshop",
	"cop.whitelisted",
  },



  -- ["trafficguard"] = {
    -- _config = { gtype = "job",
	  -- onjoin = function(player) vRPclient.setCop(player,{true}) end,
      -- onspawn = function(player) vRPclient.setCop(player,{true}) end,
      -- onleave = function(player) vRPclient.setCop(player,{false}) end
	-- },
	-- "police.cloakroom",
    -- "police.pc",
    -- "police.handcuff",
    -- "police.putinveh",
    -- "police.getoutveh",
    -- "police.check",
    -- "police.service",
    -- "police.wanted",
    -- "police.seize.weapons",
    -- "police.seize.items",
    -- "police.jail",
    -- "police.fine",
    -- "police.announce",
    -- "-police.store_weapons",
    -- "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	-- "police.vehicle",
	-- "police.loadshop",
	-- "cop.whitelisted",
	-- "trafficguard.paycheck"
  -- },
  
  
  -- whitelist group for police, emergency and president jobs / add player to this group and user can view the job selection / search in the map
  -- moderator=president / president is guy from the server give a player group cop ems moderator when admin is offline / sallary : $10.000
  ["cop"] = {
    "cop.whitelisted"
  },
  ["Exotic Car Dealer"] = {
   	_config = { gtype = "job",
	  onspawn = function(player) vRPclient.notify(player,{"You are an Exotic Car Dealer"}) end
	},
	"exotic.whitelisted",
    "exotic.vehicle",
    "player.group.add",
    "player.group.remove",
    "player.list"
  },
  ["buyer"] = {  
    "exotic.vehicle"
  },
  ["ems"] = {  
    "ems.whitelisted"
  },
  ["moderator"] = {
    "president.whitelisted"
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin",
	"recruiter"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Job Selector"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
    "UBER",
    "Mechanic",
	"Delivery",
	"Bankdriver",
	"Fisher",
	"Medical Transport",
    "Unemployed"
  },
  ["Lawyer"] = {
    _config = {x = -1911.9273681641, y = -569.71649169922, z = 19.097215652466, blipid = 351, blipcolor = 7, permissions = {"Lawyer.whitelisted"} },
    "Lawyer"
  },
  ["drugseller job"] = {
    _config = {x = 1865.1586914063, y = 3749.4343261719, z = 33.046268463135, blipid = 277, blipcolor = 4},
    "Drug Dealer",
    "Unemployed"
  },
  ["Smuggler job"] = {
    _config = {x = 283.10546875, y = 6788.7104492188, z = 15.695198059082, blipid =  150, blipcolor = 4},
    "Weapons Smuggler",
    "Unemployed"
  },
  ["Airline Pilot"] = {
    _config = {x = -759.6591796875, y = -1515.3978271484, z = 4.9768991470337},
	"Airline Pilot",
    "Unemployed"
  },
    ["Cargo Pilot"] = {
    _config = {x = -928.89624023438, y = -2937.396484375, z = 13.945074081421,blipid = 472, blipcolor = 4},
	"Cargo Pilot",
    "Unemployed"
  },
  ["Hacker job"] = {
    _config = {x = 705.682189941406, y = -966.919067382813, z = 30.3953418731689, blipid = 472, blipcolor = 4},
    "Hacker",
    "Unemployed"
  }
  
}

return cfg

