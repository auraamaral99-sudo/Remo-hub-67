-- // TORCIDA ORGANIZADA HUB - WindUI Edition \\
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- Criando a Janela Principal com Tema de Torcida
local Window = WindUI:CreateWindow({
    Title = "⚽ Torcida Organizada | Hub",
    Icon = "shield",
    Author = "By Remo",
    Folder = "TorcidaHubConfig",
    Size = UDim2.fromOffset(500, 320),
    Theme = "Dark",
    Transparent = true,
    Acrylic = true,
})

-- ==========================================
-- ABA 1: COMBATE (10 Opções)
-- ==========================================
local TabCombate = Window:Tab({
    Title = "Combate",
    Icon = "swords",
})

TabCombate:Section({ Title = "Funções de Combate (10)" })

TabCombate:Toggle({ Title = "GodMode (Imortalidade)", Default = false, Callback = function(v) print("GodMode:", v) end })
TabCombate:Toggle({ Title = "Kill Aura (Bater Perto)", Default = false, Callback = function(v) print("Kill Aura:", v) end })
TabCombate:Toggle({ Title = "Auto Clicker", Default = false, Callback = function(v) print("Auto Clicker:", v) end })
TabCombate:Toggle({ Title = "Hitbox Extender (Aumentar Hitbox)", Default = false, Callback = function(v) print("Hitbox:", v) end })
TabCombate:Toggle({ Title = "No Recoil (Sem Recuo)", Default = false, Callback = function(v) print("No Recoil:", v) end })
TabCombate:Toggle({ Title = "Infinite Ammo (Munição Infinita)", Default = false, Callback = function(v) print("Inf Ammo:", v) end })
TabCombate:Toggle({ Title = "Fast Attack (Ataque Rápido)", Default = false, Callback = function(v) print("Fast Attack:", v) end })
TabCombate:Toggle({ Title = "Anti-Stun (Sem Concussão)", Default = false, Callback = function(v) print("Anti-Stun:", v) end })
TabCombate:Toggle({ Title = "Aimbot de Combate", Default = false, Callback = function(v) print("Aimbot:", v) end })
TabCombate:Button({ Title = "Resetar Status de Combate", Callback = function() print("Resetado!") end })

-- ==========================================
-- ABA 2: MOVIMENTO (10 Opções)
-- ==========================================
local TabMovimento = Window:Tab({
    Title = "Movimento",
    Icon = "activity",
})

TabMovimento:Section({ Title = "Funções de Movimento (10)" })

TabMovimento:Toggle({ Title = "Speed Hack (Velocidade)", Default = false, Callback = function(v) print("Speed:", v) end })
TabMovimento:Toggle({ Title = "Infinite Jump (Pulo Infinito)", Default = false, Callback = function(v) print("Inf Jump:", v) end })
TabMovimento:Toggle({ Title = "Fly (Voar)", Default = false, Callback = function(v) print("Fly:", v) end })
TabMovimento:Toggle({ Title = "Noclip (Atravessar Paredes)", Default = false, Callback = function(v) print("Noclip:", v) end })
TabMovimento:Toggle({ Title = "High Jump (Super Pulo)", Default = false, Callback = function(v) print("High Jump:", v) end })
TabMovimento:Toggle({ Title = "Bhop (Saltos Contínuos)", Default = false, Callback = function(v) print("Bhop:", v) end })
TabMovimento:Toggle({ Title = "Anti-Ragdoll", Default = false, Callback = function(v) print("Anti-Ragdoll:", v) end })
TabMovimento:Toggle({ Title = "Walk on Water (Andar na Água)", Default = false, Callback = function(v) print("Water Walk:", v) end })
TabMovimento:Toggle({ Title = "Spider Mode (Subir Paredes)", Default = false, Callback = function(v) print("Spider:", v) end })
TabMovimento:Button({ Title = "Resetar Velocidade Padrão", Callback = function() print("Velocidade normal") end })

-- ==========================================
-- ABA 3: TORCIDAS (Dropdown e Efeito)
-- ==========================================
local TabTorcidas = Window:Tab({
    Title = "Torcidas",
    Icon = "users",
})

TabTorcidas:Section({ Title = "Configurações da Torcida" })

TabTorcidas:Dropdown({
    Title = "Selecionar Time",
    Values = {"Time A", "Time B", "Time C", "Time D"},
    Default = "Time A",
    Callback = function(option)
        print("Time selecionado:", option)
    end
})

TabTorcidas:Toggle({
    Title = "Efeito de Torcida (Fumaça/Bandeira)",
    Default = false,
    Callback = function(v)
        print("Efeito de torcida ativado:", v)
    end
})

-- ==========================================
-- ABA 4: TELEPORTES (Lojas de Armas e Utilidades)
-- ==========================================
local TabTeleportes = Window:Tab({
    Title = "Teleportes",
    Icon = "map-pin",
})

TabTeleportes:Section({ Title = "Loja de Armas (Prioridade)" })

TabTeleportes:Button({
    Title = "TP - Loja de Armas Principal",
    Callback = function()
        print("Teleportando para a Loja de Armas Principal...")
    end
})

TabTeleportes:Button({
    Title = "TP - Loja de Armas Secundária",
    Callback = function()
        print("Teleportando para a Loja Secundária...")
    end
})

TabTeleportes:Section({ Title = "Utilidades & Locais" })

TabTeleportes:Button({
    Title = "TP - Spawn / Base",
    Callback = function()
        print("Teleportando para o Spawn...")
    end
})

TabTeleportes:Button({
    Title = "TP - Arena de Batalha",
    Callback = function()
        print("Teleportando para a Arena...")
    end
})

-- Notificação Inicial
WindUI:Notify({
    Title = "⚽ Torcida Organizada Carregada!",
    Content = "Abas de Combate, Movimento, Torcidas e TPs prontas.",
    Duration = 3,
})
