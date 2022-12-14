
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Player = game.Players.LocalPlayer


    local Window = OrionLib:MakeWindow({Name = "Bungas", HidePremium = false, SaveConfig = true, ConfigFolder = "Bungas"})
    -- VALOR
    _G.Velocidade = 30
    _G.Velocidadeat = true


    function Velocidade()
        local Player = game:service'Players'.LocalPlayer;
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            Player.Character.Humanoid.WalkSpeed = _G.Velocidade;
        end)
        Player.Character.Humanoid.WalkSpeed = _G.Velocidade;
    end

    local JogadorTab = Window:MakeTab({
    	Name = "Jogador",
    	Icon = "rbxassetid://4483345998",
    	PremiumOnly = false
    })

    local Section = JogadorTab:AddSection({
        Name = "CHEAT FEITO POR THZIN"
    })


    
    JogadorTab:AddButton({
        Name = "Ativar Speed",
        Default = false,
        Callback = function(Value)
            _G.Velocidadeat = Value
            Velocidade()

            
            Player.RespawnTime = 1.0
        end    
    })  

    JogadorTab:AddTextbox({
        Name = "Controle da velocidade",
        Default = 100,
        TextDisappear = true,
        Callback = function(Value)
            _G.Velocidade = Value
            Velocidade()

        end	  
    })

    JogadorTab:AddToggle({
        Name = "This is a toggle!",
        Default = false,
        Callback = function(Value)
            print(Value)

        end    
    })
