local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function xVUMsbCODQHeGmUeZt(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


local repo = xVUMsbCODQHeGmUeZt('lIOMksxpWxzPwQYpIJoVKXwFALuLKPYxgWnwGSWxGMpzpiVlbxaVubraHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0tJTkdIVUIwMS9HdWkvbWFpbi8=')
local Library = loadstring(game:HttpGet(repo ..xVUMsbCODQHeGmUeZt('pUVXuStiBVVyrLzKjVxSvVQPFTmjZooPIMMfmflwKXpalUORsxUjSBwR3VpJTIwTGliJTIwJTVCTGlicmFyeSU1RA==')))()
local ThemeManager = loadstring(game:HttpGet(repo ..xVUMsbCODQHeGmUeZt('jaKlRNzVFqZSAtHspIXUkpvJxKfDOgHmNNTIjaVMkithdWOppCUVhcLR3VpJTIwTGliJTIwJTVCVGhlbWVNYW5hZ2VyJTVE')))()
local SaveManager = loadstring(game:HttpGet(repo ..xVUMsbCODQHeGmUeZt('aNGtcbXdRXEgalXFRQrJtFqBsSSVBiQCrozoLJkTyGtriYrxYpsQSeoR3VpJTIwTGliJTIwJTVCU2F2ZU1hbmFnZXIlNUQ=')))()

local Window = Library:CreateWindow({
    Title = xVUMsbCODQHeGmUeZt('IrXhxfufkNWqUKMbGSfXzOEWzNixcBHqpWqdeLXEsrVPGvivaEXgWpzSFVaIEhVQg=='),
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService(xVUMsbCODQHeGmUeZt('JNBSUHcEULuCOEXDxLbGlxtBgMEjwonDtYYnbsnODQrjeHiezoGgJlrUnVuU2VydmljZQ==')).RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark((xVUMsbCODQHeGmUeZt('xpRZzAvleiFdGbcrRGDrulpnuMKVnpglZLGvDCDvEvsbKpBIYnzGlvJSFVaIEhVQiAgfCAlcyBmcHMgfCAlcyBtcw==')):format(
        math.floor(FPS),
        math.floor(game:GetService(xVUMsbCODQHeGmUeZt('FfFbMwLoOOEWwnBVMqryZsKfViPDZUvxXQAhvBZnDIJHyCnZWRloujoU3RhdHM=')).Network.ServerStatsItem[xVUMsbCODQHeGmUeZt('TtOlaulkVeLKchXWmWcENSwhLGngdDqLQRrzXOjRdRANCINjSjhKfVnRGF0YSBQaW5n')]:GetValue())
    ));
end);

-- Tabs

local Tabs = {
    Main = Window:AddTab(xVUMsbCODQHeGmUeZt('eCcuXXuEOxZnWoxhrBNMBMenfXzXZUekUbvxIiqpbaUGJUdGfSEsZDtTWFpbg==')),
    Teleports = Window:AddTab(xVUMsbCODQHeGmUeZt('gHuPBVxxBREaJNXjRnWPftzIiZanoiSZQtbhXRboeqrlYkDekptdkENVGVsZXBvcnRz')),
    LocalPlayer = Window:AddTab(xVUMsbCODQHeGmUeZt('qWwKKkGiBmMAcnNjlqIYmTMEYWzDMIuEiFsnvsyKZhjuUtWBaexdNprTG9jYWxQbGF5ZXI=')),
    Settings = Window:AddTab(xVUMsbCODQHeGmUeZt('plzXoynefREMfbVuELNQISpMWBbyoSHNWKWxPHdtwORMmSTVPjtEZMwU2V0dGluZ3M='))
}

-- Tables

local teleportSpots = {}

local racistPeople = { --[[ all racist people abandoned :pensive: ]] }

local itemSpots = {
    Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    GPS = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998)
}

local fisktable = {}

-- Services

local VirtualInputManager = game:GetService(xVUMsbCODQHeGmUeZt('pdmrvOJNigtgBMFDtWlYQSmcOtLestBrnmVpKyEIxRSsJwmuhmiHmjGVmlydHVhbElucHV0TWFuYWdlcg=='))
local ReplicatedStorage = game:GetService(xVUMsbCODQHeGmUeZt('GTltASgWCVXyrEMWlwBiAoIchmWWMQNSAcYJcUAlHDysDuYHVqqfHBzUmVwbGljYXRlZFN0b3JhZ2U='))
local VirtualUser = game:GetService(xVUMsbCODQHeGmUeZt('AHjPafBQwrkpbBnumjWkaVBOqDUCwwqULhioKrWPFzUdgPcFyarvMalVmlydHVhbFVzZXI='))
local HttpService = game:GetService(xVUMsbCODQHeGmUeZt('wSLMzFEgueTmoZsRMcwFQUVBRarrEXUuUAPtLsNVmkcaXvSjamuMNoySHR0cFNlcnZpY2U='))
local GuiService = game:GetService(xVUMsbCODQHeGmUeZt('PCIlyxmmIjHSfyMKUhmSXNlIiQsUZFyUFKQvNpYqSjlhQGmJAHJaBbOR3VpU2VydmljZQ=='))
local RunService = game:GetService(xVUMsbCODQHeGmUeZt('seMlEEZdYgAziQCBTWjNtzGBduqfvZXDUGAgKkOpKjjFDiyOlBwMXprUnVuU2VydmljZQ=='))
local Workspace = game:GetService(xVUMsbCODQHeGmUeZt('PqNlXSLylqIrczBmxQGIoqqFhdqpiqyCaWLRLSDUWpQRDACxecNhpkVV29ya3NwYWNl'))
local Players = game:GetService(xVUMsbCODQHeGmUeZt('XBknhJCNrFVsfVXAOnmYtesEtrtkLNIUncBSKsjzSPVzHDVGuBroZlEUGxheWVycw=='))

-- Locals

local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild(xVUMsbCODQHeGmUeZt('ZTKUoQzjGrOrBYhFPoOfENJzFuPJieWRnNbebDWDsfdBexHcqyrPgUzSHVtYW5vaWRSb290UGFydA=='))
local ActiveFolder = Workspace:FindFirstChild(xVUMsbCODQHeGmUeZt('NOidSzitPHxRknIUCtfzmTXpybboBhPehuemdYHWsJRawkIGsUwIIiqYWN0aXZl'))
local FishingZonesFolder = Workspace:FindFirstChild(xVUMsbCODQHeGmUeZt('nfnqtDDCNSqcGNHvgDkMTAaTRWWQlixjwvUCjSkgnraHocWxJOOlERsem9uZXM=')):WaitForChild(xVUMsbCODQHeGmUeZt('sgIYFiULCmEnMRhDfDYmYtuTnTTlJhzdeacmJApwVBVqphODaLIqgpRZmlzaGluZw=='))
local TpSpotsFolder = Workspace:FindFirstChild(xVUMsbCODQHeGmUeZt('wtSdHpBguPDSOGeitOSocHBnUuGUUdOadTupZphuDSFgtUrhSfjEYlNd29ybGQ=')):WaitForChild(xVUMsbCODQHeGmUeZt('VNaYKsPzfssaMqnumDNcCvTdHFBLZxMmkqeUCDLbmKgaZEzFdgClrNCc3Bhd25z')):WaitForChild(xVUMsbCODQHeGmUeZt('KjfgIiXuoKqNbsAHJVGhHfqqAWsHUcQvYSPWCKlTEwpRBWzBIYmEcNRVHBTcG90cw=='))
local NpcFolder = Workspace:FindFirstChild(xVUMsbCODQHeGmUeZt('YKBzQPNIsbtualTfwzCKnCdoYPMLBajIoDkcqXZMyPxkpkHEmGYFxFCd29ybGQ=')):WaitForChild(xVUMsbCODQHeGmUeZt('fixIHUntjXxOdbfGnLeTgFzjNtYVRktDdPyAsYUwMoJUFEDRDOSbpRAbnBjcw=='))
local PlayerGUI = LocalPlayer:FindFirstChildOfClass(xVUMsbCODQHeGmUeZt('TEuHMonnryoXLCTrTmgrxkhNFRZvDKyDvZetItgRcCqTFpCrwxEbyrZUGxheWVyR3Vp'))
local RenderStepped = RunService.RenderStepped
local WaitForSomeone = RenderStepped.Wait
local Debug = function()
    print(debug.info(2, xVUMsbCODQHeGmUeZt('WTBcYGtGenMQEcrzBMjAFCtQGSvqyuBmpCReeQUajjOgGxCNfdmZipQbA==')))
end

-- Varbiables

local autoShake = false
local autoShakeDelay = 0.1
local autoShakeMethod = xVUMsbCODQHeGmUeZt('EpveaIElybjSnfsypPVMkgRBgSJCElqHfttXlBooGJqKdAHpsVXMNOxS2V5Q29kZUV2ZW50')
local autoShakeClickOffsetX = 0
local autoShakeClickOffsetY = 0
local autoReel = false
local autoReelDelay = 2
local autoCast = false
local autoCastMode = xVUMsbCODQHeGmUeZt('PnptToPcnoqZRShkfBwakACsnHzgULDvNvckmjWopKBJeKpAdQuJctMTGVnaXQ=')
local autoCastDelay = 2
local ZoneCast = false
local Zone = xVUMsbCODQHeGmUeZt('gzuWgcIcCkhKXOuKcmyKNgODRXTaxdWZaRfqgXPGEfvaQMSoEhKgCeTQnJpbmUgUG9vbA==')
local Noclip = false
local AntiDrown = false
local CollarPlayer = false
local Target
local FreezeChar = false

-- Rest

autoreelandshakeConnection = PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA(xVUMsbCODQHeGmUeZt('fcUnawcTQiytzqcqFYkLCAWYZTynWrtNbucdoZTzrATzyVwpmWNbvCdU2NyZWVuR3Vp')) and GUI.Name == xVUMsbCODQHeGmUeZt('eejxHkFThRMMDvhCbVBGEgoFMnBIkoQquKbEFBfXNEtoQKnyeWWzrWdc2hha2V1aQ==') then
        if GUI:FindFirstChild(xVUMsbCODQHeGmUeZt('NJtLSSJqLkCdepyOtcHnRLtjxhLTsGnKUqloIEPkyXPqkALOVNzXTzPc2FmZXpvbmU=')) ~= nil then
            GUI.safezone.ChildAdded:Connect(function(child)
                if child:IsA(xVUMsbCODQHeGmUeZt('RPjIoRgXwaspOlMqcmttCMqSzLCeKhrwwGxindihPJRSAQAkkHiSHAISW1hZ2VCdXR0b24=')) and child.Name == xVUMsbCODQHeGmUeZt('ScezLQPkBwBBzRilPvyGZwjHAjVaYTUcpNGZanqeIaAffUUhrdbLCHNYnV0dG9u') then
                    if autoShake == true then
                        task.wait(autoShakeDelay)
                        if child.Visible == true then
                            if autoShakeMethod == xVUMsbCODQHeGmUeZt('ajlDChdsEWQMDjOdAmCCUBFdsArsTKNyUXzrmPZUAsGvTeZiypMlrYHQ2xpY2tFdmVudA==') then
                                local pos = child.AbsolutePosition
                                local size = child.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, LocalPlayer, 0)
                            --[[elseif autoShakeMethod == xVUMsbCODQHeGmUeZt('vUsAvUJNHkGqEjdThGrMQQBpSuDxKnQeeinAqminmPrHgugJjrywSrNZmlyZXNpZ25hbA==') then
                                firesignal(child.MouseButton1Click)]]
                            elseif autoShakeMethod == xVUMsbCODQHeGmUeZt('HFFKhAVqDWvENbKFnipWxVDHXcwkVHlqmsFNkbKKLCKZHeepfxcliUOS2V5Q29kZUV2ZW50') then
                                while WaitForSomeone(RenderStepped) do
                                    if autoShake and GUI.safezone:FindFirstChild(child.Name) ~= nil then
                                        task.wait()
                                        pcall(function()
                                            GuiService.SelectedObject = child
                                            if GuiService.SelectedObject == child then
                                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                                            end
                                        end)
                                    else
                                        GuiService.SelectedObject = nil
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
    if GUI:IsA(xVUMsbCODQHeGmUeZt('jtysZkDYDZlEqpnratSwKHKwcGuVEyXysKpRyYvHaJNfOSLxpxeIraFU2NyZWVuR3Vp')) and GUI.Name == xVUMsbCODQHeGmUeZt('lhjwqzigZgDxWwVKoLRrjchnvjxyNmZhkrcHhITycsazvEArldJmRsDcmVlbA==') then
        if autoReel and ReplicatedStorage:WaitForChild(xVUMsbCODQHeGmUeZt('TfrUHEvGmNOeefGCESyBYplngrUEsisTOWtbTxmPleXUvoKfHNPljpbZXZlbnRz')):WaitForChild(xVUMsbCODQHeGmUeZt('rdzvpfHVgAOVohPzitqAIYMbXdGpmhvdZHSMLbqiUfleQkqCdNFQclfcmVlbGZpbmlzaGVk')) ~= nil then
            repeat task.wait(autoReelDelay) ReplicatedStorage.events.reelfinished:FireServer(100, false) until GUI == nil
        end
    end
end)

autoCastConnection = LocalCharacter.ChildAdded:Connect(function(child)
    if child:IsA(xVUMsbCODQHeGmUeZt('ndGHNFoUkJOkFNalGMuSuxhJuekuPixjmLGIUDovdTCCaUILFmncosZVG9vbA==')) and child:FindFirstChild(xVUMsbCODQHeGmUeZt('oWYTsLGsOdMeGwhbZXfVIGHEEbIPmBpilUbtPaTgXBWaUawIEnjYVnDZXZlbnRz')):WaitForChild(xVUMsbCODQHeGmUeZt('ipmkNsehjLeGRaCMdRIUnJGNrMRiuRmMXpbQCMrHYNMEmVvUcGkhsvLY2FzdA==')) ~= nil and autoCast then
        task.wait(autoCastDelay)
        if autoCastMode == xVUMsbCODQHeGmUeZt('vEFHVwYIDNSSAFxPlRQQbmWorIKIcVaOcrOLSqFqEeSGNDENmxBGWvMTGVnaXQ=') then
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
            HumanoidRootPart.ChildAdded:Connect(function()
                if HumanoidRootPart:FindFirstChild(xVUMsbCODQHeGmUeZt('NJLLNuploNThuapVdXcsqFCABDpoBKBUmyjvXLpBfDwjUZgKvrXqJRhcG93ZXI=')) ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                    HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                        if property == xVUMsbCODQHeGmUeZt('WLNuAqmpHeUZbYeXrNiaNjWWqJdWUKFtkGBjgdObwgSjMiiFkaAmlmjU2l6ZQ==') then
                            if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                            end
                        end
                    end)
                end
            end)
        elseif autoCastMode == xVUMsbCODQHeGmUeZt('jjdimARkiRgFZEifTdfCMLQkpiaOieRheRMBAVkcwzVQPlBwhohrunNUmFnZQ==') then
            child.events.cast:FireServer(100)
        end
    end
end)

autoCastConnection2 = PlayerGUI.ChildRemoved:Connect(function(GUI)
    local Tool = LocalCharacter:FindFirstChildOfClass(xVUMsbCODQHeGmUeZt('wEfiUaXbfKSlEGZZagjriHEdjDZAkhtkdPqXwnmwPUpclHkZyExhiSMVG9vbA=='))
    if GUI.Name == xVUMsbCODQHeGmUeZt('DbsEVIyHRUuWqqkyqvsGWLdnuZGJAiMhRDjITchfYjrjRlKRJzcyrYDcmVlbA==') and autoCast == true and Tool ~= nil and Tool:FindFirstChild(xVUMsbCODQHeGmUeZt('EYUelXqqRiikOfqoaIFLPbfNPqCFgamVjYkiMvwEDjHkqfbuaXgbJNAZXZlbnRz')):WaitForChild(xVUMsbCODQHeGmUeZt('PrSiKsCubqCtHoeCJOLcZkEJupQCeZxxsmifClOCJOMBUJSdtocNYjNY2FzdA==')) ~= nil then
        task.wait(autoCastDelay)
        if autoCastMode == xVUMsbCODQHeGmUeZt('lfoHziPKynVRsoUrcarqeyjubvcJZjvEzgkHdVBOeuUWLHYoBhDTUXfTGVnaXQ=') then
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
            HumanoidRootPart.ChildAdded:Connect(function()
                if HumanoidRootPart:FindFirstChild(xVUMsbCODQHeGmUeZt('vSNFRUWnxHlcefLsxRVxQQFLKpmmXXkDzdhzmddDfpTNgNthoIaszGDcG93ZXI=')) ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                    HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                        if property == xVUMsbCODQHeGmUeZt('FcnWlFxoXCbdOJEFXVOelieZElwJiNYNTiWDNZFQEGwKaGTdXmiWmuCU2l6ZQ==') then
                            if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                            end
                        end
                    end)
                end
            end)
        elseif autoCastMode == xVUMsbCODQHeGmUeZt('hCLHiUgwSzndaDzluTGkgoiJrMRQNRXDfTGzvKEIQkcSIQwKvtTByZCUmFnZQ==') then
            Tool.events.cast:FireServer(100)
        end
    end
end)

ZoneConnection = LocalCharacter.ChildAdded:Connect(function(child)
    if ZoneCast and child:IsA(xVUMsbCODQHeGmUeZt('mIQLjeNGfHuIlPGGPXxwqrxsKhymOuTSGOihGPaoaTdxgfdXLJULYIMVG9vbA==')) and FishingZonesFolder:FindFirstChild(Zone) ~= nil then
        child.ChildAdded:Connect(function(blehh)
            if blehh.Name == xVUMsbCODQHeGmUeZt('YvIknForaaQZTyfVpSFPwPJxuZsmynMtlTXbxetgSEuFmfpOIKeryUYYm9iYmVy') then
                local RopeConstraint = blehh:FindFirstChildOfClass(xVUMsbCODQHeGmUeZt('oxCbSsmfwpMfEnWVwzqhErtMzpigJGQDxfKdPkDsJKsFaDFJwjnotsbUm9wZUNvbnN0cmFpbnQ='))
                if ZoneCast and RopeConstraint ~= nil then
                    RopeConstraint.Changed:Connect(function(property)
                        if property == xVUMsbCODQHeGmUeZt('TaSJnAsisZMQztaRwUiTQjXkAFbemYKlbIcpaVMmDylPBwYVmCaxeEgTGVuZ3Ro') then
                            RopeConstraint.Length = math.huge
                        end
                    end)
                    RopeConstraint.Length = math.huge
                end
                task.wait(1)
                while WaitForSomeone(RenderStepped) do
                    if ZoneCast and blehh.Parent ~= nil then
                        task.wait()
                        blehh.CFrame = FishingZonesFolder[Zone].CFrame
                    else
                        break
                    end
                end
            end
        end)
    end
end)

CollarConnection = LocalCharacter.ChildAdded:Connect(function(child)
    if CollarPlayer and child:IsA(xVUMsbCODQHeGmUeZt('TAFObuPmNYhWaTBQeJlAqldQQRgoAOgDQsOpmhlXQYwKeMCUFiFKniEVG9vbA==')) and Players:FindFirstChild(Target).Character:FindFirstChild(xVUMsbCODQHeGmUeZt('XipjcJCrJXIpkwYwadxwyzhuWIrSDkTSFFjTWybJXlRGysyIRWTzdnUSGVhZA==')) ~= nil then
        child.ChildAdded:Connect(function(blehh)
            if blehh.Name == xVUMsbCODQHeGmUeZt('SokNCPKMrbJcKMzRtJNhjDlCaoIjAgDyItSHgsKuSqKnwUnFkrMvrTnYm9iYmVy') then
                local RopeConstraint = blehh:FindFirstChildOfClass(xVUMsbCODQHeGmUeZt('PujdonUFbBnEMAyCUoiuOGdFwjOWFAkDxeyyAJSRWJDrbLpOFTKmBBcUm9wZUNvbnN0cmFpbnQ='))
                if CollarPlayer and RopeConstraint ~= nil then
                    RopeConstraint.Changed:Connect(function(property)
                        if property == xVUMsbCODQHeGmUeZt('LAKnSqQZzzhEQSEjwFLgHWxxCNOedPoBOZbBVIdNPSgvbNnztRWRFgfTGVuZ3Ro') then
                            RopeConstraint.Length = math.huge
                        end
                    end)
                    RopeConstraint.Length = math.huge
                end
                task.wait(1)
                while WaitForSomeone(RenderStepped) do
                    if CollarPlayer and blehh.Parent ~= nil then
                        task.wait()
                        blehh.CFrame = Players:FindFirstChild(Target).Character:FindFirstChild(xVUMsbCODQHeGmUeZt('pYxiiIpDfgCxNJGTppHaMsAapDiqoOtmLarzZJdFCZTpQfVCFBtRrcuSGVhZA==')).CFrame + Vector3.new(0, -1, 0)
                    else
                        break
                    end
                end
            end
        end)
    end
end)

NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA(xVUMsbCODQHeGmUeZt('jOrUzTgNOSBlyeUXfCjHQCpGVwqMGObdphJgvFffouNvFfCwJvGhUiUQmFzZVBhcnQ=')) and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)

local SafeZone = Instance.new(xVUMsbCODQHeGmUeZt('ZkfzgPafKEcQAXshTeZTcPhVdQsmAZYGOiVZtEJKZojnWTBVNskiRRyUGFydA=='))
SafeZone.Parent = Workspace
SafeZone.Size = Vector3.new(50, 2, 50)
SafeZone.CFrame = CFrame.new(9999, 9999, 9999)
SafeZone.Anchored = true

for i, v in pairs(FishingZonesFolder:GetChildren()) do
    if table.find(fisktable, v.Name) == nil then
        table.insert(fisktable, v.Name)
    end
end

FishingZonesFolder.ChildAdded:Connect(function(child)
    if table.find(fisktable, child.Name) == nil then
        table.insert(fisktable, child.Name)
    end
end)

for i, v in pairs(TpSpotsFolder:GetChildren()) do
    if table.find(teleportSpots, v.Name) == nil then
        table.insert(teleportSpots, v.Name)
    end
end

for i, v in pairs(NpcFolder:GetChildren()) do
    if table.find(racistPeople, v.Name) == nil and v.Name ~= xVUMsbCODQHeGmUeZt('JKStAYkZjqtxiLUYrYojkzvJZnvGDFxjtrtPFAztLBiKTUxuyvtruwWbWlycm9yIEFyZWE=') then
        table.insert(racistPeople, v.Name)
    end
end

NpcFolder.ChildAdded:Connect(function(child)
    if table.find(racistPeople, child.Name) == nil and child.Name ~= xVUMsbCODQHeGmUeZt('CjhustxAQWUTVotpVBhtbWQFTAwTWLfozgwjgWeFzAquLYVDaQxOkORbWlycm9yIEFyZWE=') then
        table.insert(racistPeople, child.Name)
    end
end)

-- Main

local AutoShakeGroup = Tabs.Main:AddLeftGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('asYVbLglJfjlgUKNYQSyCrgmnSSpVqCFpLonsyHVuCyxRpAKjQRpyGsQXV0b1NoYWtl'))
local AutoReelGroup = Tabs.Main:AddLeftGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('qEnJTrIvZrSYgFuZCsXIXIicTBSJazlFLlrwMRnjccUyvVkEpvBXQxfQXV0b1JlZWw='))
local AutoCastGroup = Tabs.Main:AddLeftGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('aAJdipzwpFAbFGjkyaGzscFXAovypoWbfKyqAkBGzHvLHgCxcuANtBnQXV0b0Nhc3Q='))
local FishUtilitiesGroup = Tabs.Main:AddRightGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('GLMLisVAksioLyhwHAjFVbwXevByfbWcVQIpNLOKwYdUNdGZUYWYQmHRmlzaCAo8J+QnykgVXRpbGl0aWVz'))
--local EventGroup = Tabs.Main:AddRightGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xgTeUIHnSkQEArdQCYKXIUfnTnBloyNVePHDghIcFsGlRdrRGsZFUDRRXZlbnQ='))
local ZoneCastGroup = Tabs.Main:AddRightGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('KfQAqqCkXZeKAPQlbMGbjDoJMwXqEjQrVUwtVMXUWPMSshdcnSfeShXWm9uZUNhc3Q='))
local CollarPlayerGroup = Tabs.Main:AddRightGroupbox(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('rahdeQrydWxDIfsBBZQvAGcNsoMSkvFtUAWnlzrYRaLUqTxGPcJNKLIQ29sbGFyUGxheWVy'))

AutoShakeGroup:AddToggle(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('BcUbjdFpFFbScegoatpWCiJRCPkcdIbqIaqCnIgJYKErKXPPhCdTsjdQXV0b1NoYWtl'), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('fEDercICbAFENijFBPDbHgmdfCILeEewxWnekdSKpvvhPOFxKACBOPcRW5hYmxlZA=='),
    Default = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oIohhnfichgCrsRDqkhnWnfsHIyNovidDrslaLbKhGnxLwCnHHXXvinQXV0b21hdGljYWxseSBjbGlja3MgdGhlIHNoYWtlIGJ1dHRvbiBmb3IgeW91'),
    Callback = function(Value)
        autoShake = Value
    end
})

local AutoShakeSettings = AutoShakeGroup:AddDependencyBox()

AutoShakeSettings:AddDropdown(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xwahbCGfUHAJCRHbbhuqQEXHQZvrYVAEMweOpocdZmvyvHtwGItNvekQXV0b1NoYWtlTW9kZQ=='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('UMQPOtozwNkEgEmJpgQLGNaPOMBMHKIRJLDFzJecuZMyOguNgqHKjheQXV0byBTaGFrZSBNZXRob2Q='),
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('tYuvDhXIEYnKNhMCVoPWGohSRjxRKQndgEjcTqWiFAFETPYFbxaQEYZTWV0aG9kIHRvIGNsaWNrIG9uIHRoZSBzaGFrZSBidXR0b24='),
    Values = {pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('YgoRSeSmEvrPGEuFSxQCSZOHNPSgOSvFCVoNZNthptcJvjmxOdyxxJJQ2xpY2tFdmVudA=='), --[[pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('tRNiVKUtmnYDCQMRSCHOkqMnKqgZQXQNKfkjVbYaPAlOgSUyfXYbPhsZmlyZXNpZ25hbA=='),]] pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('tFMEBHaWihDCEJuDfWWWDxNPbuxuLXBCxHalkKXmHmRHWEbrVctJvfdS2V5Q29kZUV2ZW50') },
    Default = autoShakeMethod,
  
    Callback = function(Value)
        autoShakeMethod = Value
    end
})

local AutoShakeKeyCodeEventText = AutoShakeSettings:AddDependencyBox()

AutoShakeKeyCodeEventText:AddLabel(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('XmEqAzWVSSQHmdBzWwHlvosQzvUCNyxesgkYUWvGMSOQrkQShzcyJUMSW5zcGlyZWQgZnJvbSByYmx4c2NyaXB0cy5uZXQh'))
AutoShakeKeyCodeEventText:AddLabel(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('JpfXOPILCJiSSsXiXuGzmdixRIODFgIGVvcAaodOlykAodFhQeNSXvoSHVnZSBzaG91dG91dCB0byB0aGVtLg=='))

AutoShakeKeyCodeEventText:SetupDependencies({
    { Options.AutoShakeMode, pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('klmySHaxApdzkwzXjFESYRIbpTkuTHQdhWAUlEPLWsytRCpenBICpKHS2V5Q29kZUV2ZW50') }
})

AutoShakeSettings:AddSlider(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('wuFHeCzZGfgNicGsmniPjuQWhFxahbHHhFdmIkmZhFtlzghplMVPCQFQXV0b1NoYWtlRGVsYXk='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('YoJdElZtNkROfJfWJrkQhVAVqyRwBBhRgLkejpuTZnKmOgfpnUZzKjDQXV0b1NoYWtlIERlbGF5'),
    Default = 0.1,
    Min = 0,
    Max = 10,
    Rounding = 1,

    Callback = function(Value)
        autoShakeDelay = Value
    end
})

AutoShakeSettings:SetupDependencies({
    { Toggles.AutoShake, true }
})

--[[
local AutoShakeXYOffset = AutoShakeGroup:AddDependencyBox()

AutoShakeXYOffset:AddSlider(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('pxMgtbwtRNRpxcUlgmsiOUtWHHvUHZdtMZRwIOYWqbEsiWQJDnhvCGNQXV0b1NoYWtlWE9mZnNldA=='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('QuGttMEWXjqttqVQFnApjkUJLajpteqJGhQhBzBEGFpZMrDySZuWODGQXV0b1NoYWtlIFggT2Zmc2V0'),
    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,

    Callback = function(Value)
        autoShakeClickOffsetX = Value
    end
})

AutoShakeXYOffset:AddSlider(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oVVlklPpXcvumHqndDFPwFxOtMcIplXUVWCpNMoVCnxyEQADRiMxlhQQXV0b1NoYWtlWE9mZnNldA=='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('comoPyFLZUBCgZKsfIWmpkamMevUDxJQgEoQBEIrvZEIcNFNVUabuyPQXV0b1NoYWtlIFkgT2Zmc2V0'),
    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,

    Callback = function(Value)
        autoShakeClickOffsetY = Value
    end
})

AutoShakeXYOffset:SetupDependencies({
    { Options.AutoShakeMode, pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('FOFelTNCNffMXgvEUhVJepKJwDDiJkFuRDvTIlWiJFvuTWxoxxkjRyPQ2xpY2tFdmVudA==') }
})
]]

AutoReelGroup:AddToggle(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('CeJelaOYUISTrvwzVewZcRNoIQYpZuDJDMuwvZfnHtHMhxSfFAOFmTfQXV0b1JlZWw='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ASixfKHkvFfDNrGeKGAjUhlTqgINSbmNPqJwDJwDMnexvddvcLEhGTFRW5hYmxlZA=='),
    Default = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('bdvruZeXemYjtCSARokMmhYiBIkiZWJDCNiLdoABVhlahEobBTldXuRQXV0b21hdGljYWxseSByZWVscyBpbiB0aGUgZmlzaGluZyByb2Q='),
    Callback = function(Value)
        autoReel = Value
    end
})

local AutoReelSettings = AutoReelGroup:AddDependencyBox()

AutoReelSettings:AddSlider(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('GpTpbphgtkLhfsASmOZjPJCZnskIpvyLLXdJLQYkeomtVfzGUrVRTBUQXV0b1JlZWxEZWxheQ=='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('WbPJNlmEUeroIhlApqFeHjsxrEQjVFHaMmvxbmfDvCVxavOPZMFkWrVQXV0b1JlZWwgRGVsYXk='),
    Default = 2,
    Min = 0,
    Max = 10,
    Rounding = 1,

    Callback = function(Value)
        autoReelDelay = Value
    end
})

AutoReelSettings:SetupDependencies({
    { Toggles.AutoReel, true }
})

AutoCastGroup:AddToggle(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ilPFJoYBOltVczrtJATyucVGOkhsJPamggVbOscYJoGeLYTaUSFCPzOQXV0b0Nhc3Q='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('yTXTRpvJMpdcTGEsEibtchlWsMByNBXXgfuiOXTZqcmbFyYINEWeMAdRW5hYmxlZA=='),
    Default = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('dowpjCphljKgdWejmcShiydoSnBvZZuLHCwLKGCuaRmOSAXxiXJqfZnQXV0b21hdGljYWxseSB0aHJvd3MgdGhlIHJvZA=='),
    Callback = function(Value)
        autoCast = Value
        local Tool = LocalCharacter:FindFirstChildOfClass(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('MiNcyhIOGHDPQonMeEWFcOnbPmDzyNzPBZpCXWbXCnFxpACzbkQqFLPVG9vbA=='))
        if Tool ~= nil and Tool:FindFirstChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('uyGoMiGcmcmHvqlMbzMEEloFKduVDzLEgXqyhBFdCCCygMmSbnylBKuZXZlbnRz')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('CqLRYPOdMdbtzapdTxJkcYzcCYyPVlFWmnhJxkmcyLjFiQGcSLLEaAHY2FzdA==')) ~= nil and Value == true then
            task.wait(autoCastDelay)
            if autoCastMode == pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('vaBlbhylCDQxxGhOqkkCfZWzHIorAbZzabVhuPczAVLZlluKlfIlHoFTGVnaXQ=') then
                VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                HumanoidRootPart.ChildAdded:Connect(function()
                    if HumanoidRootPart:FindFirstChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('YOCaYAKkTYENuFxirTgPemPexRLcBMyrpWdqmDCQjVooLPZYpGlbWbWcG93ZXI=')) ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                        HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                            if property == pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('vEyvIvPClieFnYayaYvuEnnxKXXuLEWDjgmystCuWWVVvXfhZosSvTYU2l6ZQ==') then
                                if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                end
                            end
                        end)
                    end
                end)
            elseif autoCastMode == pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ztALdSJhoezizgxfIBBzafaUfckkGhkvqCoWcBOXVKMkPTGEGnRiVWnUmFnZQ==') then
                Tool.events.cast:FireServer(100)
            end
        end
    end
})

local AutoCastSettings = AutoCastGroup:AddDependencyBox()

AutoCastSettings:AddSlider(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('dGZsBujCrljFWwBEtOoIxFaKvihyKAkJkjEnpzJBkIWWQRsXAcBjcVpQXV0b0Nhc3REZWxheQ=='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('lwYRzviKtjfrwQBIdgxJRUGjMLFCiwhaUoJHCJfSPBaTrITIhVMuknnQXV0b0Nhc3QgRGVsYXk='),
    Default = 2,
    Min = 0,
    Max = 10,
    Rounding = 1,

    Callback = function(Value)
        autoCastDelay = Value
    end
})

AutoCastSettings:AddDropdown(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('gAzhviEYAYkRvzvNwLfwEJbSFKVIiMcNEGctPcfGoQQadvTOCClFZnWQXV0b0Nhc3RNb2Rl'), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('qZOKJRQAxwrZjcgPmxYOLieridoAkFKZEonOqHdGQxwozcwQQgPMeCbQXV0byBDYXN0IE1vZGU='),
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('uFngMzZgMMjgcUnpOUWjBPCAgJZpapDuiQklHrDpROWYyhbqhQthGQEQ2hhbmdlIHRoZSBtb2RlIG9mIHRoZSBBdXRvQ2FzdA=='),
    Values = {pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('reZJNWdjtYkVasmleEprhArmumXvOSCVDLzvtYwuHQYTytNLzbqqZoPTGVnaXQ='), pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('nkLdIwyrnIZuMobyzhZpZNZubFLudYVyNImsOxieOyfijekOfQsQohQUmFnZQ==')},
    Default = autoCastMode,
  
    Callback = function(Value)
        autoCastMode = Value
    end
})

AutoCastSettings:SetupDependencies({
    { Toggles.AutoCast, true }
})

local SellButton = FishUtilitiesGroup:AddButton({
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('aqhfZapscvuFawOeoepYnqrsNasNAWuVimhccztqaDfvRRFwQEolLZhU2VsbCBhIGZpc2g='),
    Func = function()
        Workspace:WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('vpDCJGRhIXZCNcSdwWTfJizJpBUZFZedtuomlDGtCwTIPmnQjGnGWKAd29ybGQ=')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('AGIaOlmOmFgfAJdKfQysKqEgsLTlYlYcqnISwMppTChgXVTnmhPlrzMbnBjcw==')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('jnViAGQSbjppqDFvqBKfzhTbCjbZFnQobqqPaUfBksuJhfSfxZyAsPOTWFyYyBNZXJjaGFudA==')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ZHeMnYXKnowgsnjNbKxfYffslmgOosAIlsugXKiHCldloYTOhOOppPcbWVyY2hhbnQ=')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('gjjgyLbEwfNdCheAhzlEMUOoVcIcRPiImZIxsRUYsjxznKoEYTCPwjJc2VsbA==')):InvokeServer()
    end,
    DoubleClick = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oXExphDdGrIgaasWdvnsQvHfydTDpdCelkBENustRPTeiXkCqeyRFfBU2VsbHMgdGhlIGZpc2ggeW91IGFyZSBob2xkaW5n')
})

local SellAllButton = FishUtilitiesGroup:AddButton({
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('quofTmkilgTuMiWeRUlmEOAcYiGbMOUFbqNwQoujUYuKoyuXLCdtvcpU2VsbCBBTEwgZmlzaA=='),
    Func = function()
        Workspace:WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('kBqMPiUiauVTRiEiQCiursywqkcsbXWZuPYhcqlelQxXwnncDwyJRjpd29ybGQ=')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xmclUpYcIRavLNHCVRNKUCJikhJmBfPbJByoGVkVhnpSYGQMIZYyKBbbnBjcw==')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('XrapEZtTdqBxMhoGbasRRcbmqLgxBrXgsIxCcPzKGDBbOdqyWawywrHTWFyYyBNZXJjaGFudA==')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('qcBecAmnGpMdmXlABoJtKDfTYOJjHXjonUlofgsyaqksDGDyGhogqhlbWVyY2hhbnQ=')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('CRmEIcmxRqPBmvQTmiMDDQhIlhDBorSlKNWILnaySjmACXcXHTYLHCzc2VsbGFsbA==')):InvokeServer()
    end,
    DoubleClick = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('boDoKIfzOzWdEmnhKWUYYUBlMdKHitEctNZHUhnVKoxOZPdNFuXyOMUU2VsbHMgYWxsIHlvdXIgZmlzaA==')
})

local SellAllButton = FishUtilitiesGroup:AddButton({
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('hxHMglLoyDiMgMfmyJjusRlLrfYmwNSaFIKIPzdZcequKSVSAogfTruQXBwcmFpc2UgZmlzaCDwn5CfICg0NTBDJCk='),
    Func = function()
        Workspace:WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('qWbKckHizErfKanUWkbVrXNYkmoESNUbDfuEgkuKfPSTaesPTEeTCxkd29ybGQ=')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('DoSBlFKYUJgJAkHvdCwFbiEBwqBnjEUWNogohRdBfFIoplLojqggrJQbnBjcw==')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('CDGxdtIUTkZMAfbBHECLotSzcAEMpPIfbaaUJcNujDqzXXkaCAUqqmCQXBwcmFpc2Vy')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('OJabkjaqoymMTyDEVuqvYhlaMqJDvihGvWOCrtCFdcDyXxRivcihqqUYXBwcmFpc2Vy')):WaitForChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('csaZvqZcgBRgRPYZvbOozUNKTWXXMfmtATJwYkYfJsYsMxCBjqtrHKlYXBwcmFpc2U=')):InvokeServer()
    end,
    DoubleClick = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('YHXeuCRvcELYBsXdkEgZQaiJHOplAQhkFrHODtVfMwcVvDrMLJfZCgxQXBwcmFpc2VzIHRoZSBmaXNoIHlvdSBhcmUgaG9sZGluZw==')
})

--[[
EventGroup:AddDropdown(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('HjOjEjxUztvkigPzbTqivRkLnnhIyJCHeeMgCGTqFrbkeHEGhUBGWcqRXZlbnQ='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ydaQgKdaTvKyOuFMerFArxNhoAlYYtxGSyEjrwvRgEbgtjTjbdKWPHtSXRlbSBHcmFiYmVy'),
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('bUFXmqvkAcGaYIBwoKygEfTYIsveujLLYqiOPRnExmOTVLpmaHbFchFR3JhYnMgdGhlIEV2ZW50IEl0ZW0='),
    Values = {pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('uXYPZugthwgLlioeZhFqndnXRnbvmcUTALqDKuvHNeSsqJYCQwHxruMR2FpbnQgTXVzaHJvb20='), pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('jJKMMJKPGIMDhjkWvQZyfTVvuXFnNkCGDBNZRYFkipzDpRjKtxOCZLmU3BpZGVycyBFeWU='), pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('eBscuVfvKPdWdQxKMsrLRShatkmVmuPcZzcEpcAFGeqZsBMIBVkVyygU3RyYW5nZSBSb290'), pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xxUFrjtehFvOQJHinSvTHpvCwbcWTlCqtWetYhFnkEnsEPTGmHbIDghQ2FuZHkgQ29ybg=='), pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('gLFnPJbeaOjOAOOGKiCttzpKZeGYuZIDgFoZQjMXaBYdaegVMTitiZnRGFyayBBcnQgU2t1bGw=')},
    Default = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('qgpDCvECAsnhIMtUYsnHXkpCcqFhXAQuulgPNyNiTxfAFEigIvvtNml'),
  
    Callback = function(Value)
        if HumanoidRootPart ~= nil and ActiveFolder ~= nil then
            local oldpos = HumanoidRootPart.CFrame
            local EventItem = ActiveFolder:FindFirstChild(Value)

            if EventItem ~= nil and EventItem:FindFirstChild(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('AuGYCjYpzLPaeQCNnspIkeJKPgbtuBSaOuPEacLUKOwKsHTPuAVPvgQUGlja3VwUHJvbXB0')) ~= nil then
                HumanoidRootPart.CFrame = EventItem:FindFirstChildOfClass(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('nIONGEoiZjvIeuDCvNMLQTfjheJMUoHrAJQHIDnGqKCitvNWNOXMVkuTWVzaFBhcnQ=')).CFrame + Vector3.new(3, 2, 0)
                Noclip = true
                task.wait(0.05)
                HumanoidRootPart.Anchored = true
                task.wait(0.5)
                fireproximityprompt(EventItem.PickupPrompt)
                task.wait(1)
                if Toggles.Noclip.Value == false then
                    Noclip = false
                else
                    Noclip = true
                end
                HumanoidRootPart.Anchored = false
	            HumanoidRootPart.CFrame = oldpos
            else
                Library:Notify(string.format(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ITNGHYpcgFdINoJIeIkRjESCnqOBvatNbBZvEYTowFwuzHakQlAfbQaVGhlcmUgaXMgbm8g')%spCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('kAPVzAtqDUREIrsUSCuZWumdAbJkHETtMJDfwsrVXfDleTmxcztEQbqIGluIHdvcmtzcGFjZQ=='), Value))
            end
        end
    end
})

EventGroup:AddLabel(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('HrbdMQlRhsBtBFfQkZnAqnLdHrdeocElupzTZtcNSCGFGBRywRAljnYTWlnaHQgYmUgYnVnZ3kh'))
]]

ZoneCastGroup:AddToggle(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('rxwoyWtMWOweZKkqvVEuqyQdTEHMNJXlXGaRrjiuELaHnEHPizCbVPJWm9uZUNhc3Q='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('CYMBUzBCkOzlaZAMRtVNlnxcAvJNaesyHysuNpFXpvTLBNasnFntViYRW5hYmxlZA=='),
    Default = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('SzPopTSFtnLFWggODPmMzgHIEhNhfMylssHZYaAEngVrOgejbAxdVONVGhyb3dzIHRoZSByb2QgdG8gYW5vdGhlciB6b25l'),
    Callback = function(Value)
        ZoneCast = Value
    end
})

local ZoneCastDropdowns = ZoneCastGroup:AddDependencyBox()

ZoneCastDropdowns:AddDropdown(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('JJiaybtUzVrPYuJRSzETyuXNXKkaLNyiWZmMYDnwfJRfmRkIxfDpyGVWm9uZUNhc3RWYWx1ZQ=='), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('NHTEIiWcdQqSgKFMxURaaOtrbZghrLxPeKYSeXccqMXhYKrVuuhOoiyWm9uZQ=='),
    Tooltip = nil,
    Values = fisktable,
    Default = Zone,
  
    Callback = function(Value)
        Zone = Value
    end
})

ZoneCastDropdowns:SetupDependencies({
    { Toggles.ZoneCast, true }
})

CollarPlayerGroup:AddToggle(pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('XLyllAWWDuGxgZJmIUFjjgiZQHGKRefACKhNwZdOurKnQqXeHXWyMEkQ29sbGFyUGxheWVy'), {
    Text = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('cAEZzEgGkHBxxsHYUhxHvJwIYcDGFwVgMzjuldapuFgYzvOfAwqZYhBRW5hYmxlZA=='),
    Default = false,
    Tooltip = pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('UdPrMJpFXWuAFqNCgSkjbhVoEUNwRzMdQjXZcrPlhLJqKjhuzjxBsqxQ29sbGFy')s the player making them look like your pet :3pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('XykOhkloXVVOEPeFKWAphVdIEuTzcIJVNnbhiWEwabPjGusycYoSgQxLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oVmFsdWUpDQogICAgICAgIENvbGxhclBsYXllciA9IFZhbHVlDQogICAgZW5kDQp9KQ0KDQpsb2NhbCBDb2xsYXJQbGF5ZXJEcm9wZG93biA9IENvbGxhclBsYXllckdyb3VwOkFkZERlcGVuZGVuY3lCb3goKQ0KDQpDb2xsYXJQbGF5ZXJEcm9wZG93bjpBZGREcm9wZG93big=')CollarTargetpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('jzCCHBmuuucZLJFbkJzKlEkYVaCwzlLaJYoqvhWlRmItrVvqDODwAGVLCB7DQogICAgU3BlY2lhbFR5cGUgPSA=')PlayerpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('NIuHfnrMtifAyRedprZUElzUyqxoTldHSTCiQpMwugbQHMQqBLjvtElLA0KICAgIFRleHQgPSA=')PlayerpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('hvvIdAArxXryxjHKhBQAnGEXSiLtAQtxYxdQsUdulZOiTWvzeySpDpdLA0KICAgIFRvb2x0aXAgPSA=')Select the player you will collarpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('AadwwqakbqmtsiDyCoCwUsWLEhlialiwaPjowNdzjznsDXYzRlVMCgwLA0KICANCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKFZhbHVlKQ0KICAgICAgICBUYXJnZXQgPSBWYWx1ZQ0KICAgIGVuZA0KfSkNCg0KQ29sbGFyUGxheWVyRHJvcGRvd246U2V0dXBEZXBlbmRlbmNpZXMoew0KICAgIHsgVG9nZ2xlcy5Db2xsYXJQbGF5ZXIsIHRydWUgfQ0KfSkNCg0KLS0gVGVsZXBvcnRzDQoNCmxvY2FsIFRlbGVwb3J0c0dyb3VwID0gVGFicy5UZWxlcG9ydHM6QWRkTGVmdEdyb3VwYm94KA==')TeleportspCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('rsbBwFdjMEchDycLgqeHwzvNBcXZkmOJQlumSFRLNknkJqnKCMdmNQjKQ0KDQpUZWxlcG9ydHNHcm91cDpBZGREcm9wZG93big=')PlaceTeleportpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ngPLjsDCkOUEnBsfKXrWowGdQLtzYPDCbLVMDGduylRTcQtlSfEExMnLCB7DQogICAgVGV4dCA9IA==')Place teleportpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('VFbQdmKkOWXsGANFpmsPfcMiXumrBQQMiGgmLPeennUpmSOkzCoOBZNLA0KICAgIFRvb2x0aXAgPSA=')Teleport to a placepCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('clfNamGqipzlRObQYkDixRuKdjBeCCLbmQkllIDuRNfiHYkSVDEoajtLA0KICAgIFZhbHVlcyA9IHRlbGVwb3J0U3BvdHMsDQogICAgRGVmYXVsdCA9IA==')pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('SwPmKkbYSNypTwmUfHZyvGgfeUebbeqnQBCouKiyWAoZvWiQgdgRqMGLA0KICANCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKFZhbHVlKQ0KICAgICAgICBpZiB0ZWxlcG9ydFNwb3RzIH49IG5pbCBhbmQgSHVtYW5vaWRSb290UGFydCB+PSBuaWwgdGhlbg0KICAgICAgICAgICAgSHVtYW5vaWRSb290UGFydC5DRnJhbWUgPSBUcFNwb3RzRm9sZGVyOkZpbmRGaXJzdENoaWxkKFZhbHVlKS5DRnJhbWUgKyBWZWN0b3IzLm5ldygwLCA1LCAwKQ0KICAgICAgICBlbmQNCiAgICBlbmQNCn0pDQoNClRlbGVwb3J0c0dyb3VwOkFkZERyb3Bkb3duKA==')NPCTeleportpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('eFBXOBLThyxLHeJwfxOmJeuwXbnnyOlEZMAZbUcAZfqBTgoZiyhboiuLCB7DQogICAgVGV4dCA9IA==')Teleport to NpcpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('GPRWNaFeLWFPLXjLchLLSSguJFFKPmnRNHGYZpHFmObcCqAxRqamTegLA0KICAgIFRvb2x0aXAgPSA=')Teleport to a rodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('jGFPvCnrpnXDYlblblsPFGZHgNoQnYjTXzWNPHTDgMIisjqxtQINqYSLA0KICAgIFZhbHVlcyA9IHJhY2lzdFBlb3BsZSwNCiAgICBEZWZhdWx0ID0g')pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('MaRnFVtcMUURvmCNtntSEtEJoVLeQWwByKgTCKWQkhJDJYPaaacvMOwLA0KICANCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKFZhbHVlKQ0KICAgICAgICBpZiByYWNpc3RQZW9wbGUgfj0gbmlsIGFuZCBIdW1hbm9pZFJvb3RQYXJ0IH49IG5pbCB0aGVuDQogICAgICAgICAgICBIdW1hbm9pZFJvb3RQYXJ0LkNGcmFtZSA9IE5wY0ZvbGRlcjpGaW5kRmlyc3RDaGlsZChWYWx1ZSk6V2FpdEZvckNoaWxkKA==')HumanoidRootPartpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('TiPIlstjRqtryHaZbnaDDGEXedURRIZgvhZpUKTkajiuwKhtCFYXPebKS5DRnJhbWUgKyBWZWN0b3IzLm5ldygwLCAxLCAwKQ0KICAgICAgICBlbmQNCiAgICBlbmQNCn0pDQoNClRlbGVwb3J0c0dyb3VwOkFkZERyb3Bkb3duKA==')ItemTeleportpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xFupVnvKpifPBpWOtyWNZFWgOAarLSiQrylOHpRUSAQNBXzqNFgOFlMLCB7DQogICAgVGV4dCA9IA==')Teleport to itempCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('fgWGEliSwLtGuOomZgwFbyCZofMhBeadbdhvRKCYjZVoeenpHKbwZTELA0KICAgIFRvb2x0aXAgPSA=')Teleport to a rodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('OhKAvKIPeNNsqGZVbvCzFbrktlxpvdTybPlNEOfddEnEkqWlYwYIFwPLA0KICAgIFZhbHVlcyA9IHs=')Bait_CratepCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xiQuWxEjGkXFFNTqGCTcSVumNuJcmBcrknoPbBZDEmNRrEDbizntUsBLCA=')Carbon_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('wKWkcLRZeWDNVEarOyAsIgfNGsWWDKVetzSidevwOmcWqzqqJpjSLazLCA=')Crab_CagepCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ddcdZxGhSjGsgWnHHJrzFkqEnGlIDmaNkIyBGPCjbvXoGsSPprAvgQgLCA=')Fast_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('XBLPaYMhaGDDePPPbdAWBHDyXVSlNWDlvqRREIapAEHQmTzNOnfTTHoLCA=')Flimsy_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('mRdusnowzTxkYErIVtLQikFBQhmvdKKaMmTFdcJXCAvAXixOyuybGcWLCA=')GPSpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('pTQqXNbXdCrvuuqxPKGYkJysvxPFFNdHWggvzHawnDXZSlaGHuJGIbULCA=')Long_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('IvUZRfoPhgVQCsgcExZRZOUQFdPGidrTFrbNiEMGQPaUSDAUjlVjGWpLCA=')Lucky_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('TcCofwFPerhnwFTVMKjjqRuwZjJxyNzQeQFDAKapPALEwJZGmjRYFGYLCA=')Plastic_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oyhbCTJzpoWBPyMeYlExJvRtvteLNnYYAdssvyJwmhFhgXnAirhQmUpLCA=')Training_RodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('OodgEWSlbvIUxBAYYURbbTcDfmeOPcfeZrSSfEdJJkWImtIwvzlwPqHfSwNCiAgICBEZWZhdWx0ID0g')pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('cvaiiHveqUwhoRgPMSrKNTIImnZAldYTMWUFpYsDGunZIDoCzHZlReTLA0KICANCiAgICBDYWxsYmFjayA9IGZ1bmN0aW9uKFZhbHVlKQ0KICAgICAgICBpZiBpdGVtU3BvdHMgfj0gbmlsIGFuZCBIdW1hbm9pZFJvb3RQYXJ0IH49IG5pbCB0aGVuDQogICAgICAgICAgICBIdW1hbm9pZFJvb3RQYXJ0LkNGcmFtZSA9IGl0ZW1TcG90c1tWYWx1ZV0NCiAgICAgICAgZW5kDQogICAgZW5kDQp9KQ0KDQpsb2NhbCBUZWxlcG9ydFRvU2FmZVpvbmVHcm91cCA9IFRhYnMuVGVsZXBvcnRzOkFkZFJpZ2h0R3JvdXBib3go')Safe ZonepCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('NdsymPIoQkxfCuqyDjlkHpqDbJSouuPVZJTitgqHqHjvOZMRqCmnxpLKQ0KDQpsb2NhbCBUZWxlcG9ydFRvU2FmZVpvbmVCdXR0b24gPSBUZWxlcG9ydFRvU2FmZVpvbmVHcm91cDpBZGRCdXR0b24oew0KICAgIFRleHQgPSA=')Teleport to safe zonepCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('FxyjWipMBwUKRYentGfDDwbrztwGjVLLfBSeXgVtgOxkjbsWbAySdcJLA0KICAgIEZ1bmMgPSBmdW5jdGlvbigpDQogICAgICAgIEh1bWFub2lkUm9vdFBhcnQuQ0ZyYW1lID0gU2FmZVpvbmUuQ0ZyYW1lICsgVmVjdG9yMy5uZXcoMCwgMiwgMCkNCiAgICBlbmQsDQogICAgRG91YmxlQ2xpY2sgPSBmYWxzZSwNCiAgICBUb29sdGlwID0g')Teleports you to a safe zonepCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('JfaSfeWyPejxmdUZDNQMHcsTklYkMrRqRvdDMSyfmRtiqhddoQrmyPYDQp9KQ0KDQotLSBMb2NhbFBsYXllcg0KDQpsb2NhbCBMb2NhbFBsYXllckdyb3VwID0gVGFicy5Mb2NhbFBsYXllcjpBZGRMZWZ0R3JvdXBib3go')LocalPlayerpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('RmIviCdmdyStmTpjIizmnhtBuTzrBCNWUIPhAvHFwfrIukzaTKeWDbAKQ0KDQpMb2NhbFBsYXllckdyb3VwOkFkZFRvZ2dsZSg=')NoclippCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('YJYDUgwvnLbSKHceScDeTwRgKlsTBBUuxCAqjkHEAaeTNfvftSgEIoDLCB7DQogICAgVGV4dCA9IA==')NoclippCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('PsmvJXMyLDqlZYkumhJtkSVIGFFgranlVQgEuvjUDWUWbbMbsmoNFKmLA0KICAgIERlZmF1bHQgPSBmYWxzZSwNCiAgICBUb29sdGlwID0g')Allows you to go through wallspCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('FMnBCPRcNcJlBZdRufIKtPoruOdtaUaiRdzIMFrZmKOWsBCfkeDDYioLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oVmFsdWUpDQogICAgICAgIE5vY2xpcCA9IFZhbHVlDQogICAgZW5kDQp9KQ0KDQpMb2NhbFBsYXllckdyb3VwOkFkZFRvZ2dsZSg=')AntiDrownpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ndtZRGXCnKdsevKtrOttmibQsFhtFQFjkWHDdQCNdhtIwmsbzlDzzaILCB7DQogICAgVGV4dCA9IA==')Disable OxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('ZJihtVzCgmEXoNcNodTkaVKnBOtbQDZjXzSOpxksKWeYdiyrtPErllsLA0KICAgIERlZmF1bHQgPSBmYWxzZSwNCiAgICBUb29sdGlwID0g')Allows you to stay in water infinitelypCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oAkpkepPiuujLeyPMkKtoSLKamOYItrAfgzCJVNZDTEpbhfxaxpOOVkLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oVmFsdWUpDQogICAgICAgIEFudGlEcm93biA9IFZhbHVlDQogICAgICAgIGlmIFZhbHVlID09IHRydWUgdGhlbg0KICAgICAgICAgICAgaWYgTG9jYWxDaGFyYWN0ZXIgfj0gbmlsIGFuZCBMb2NhbENoYXJhY3RlcjpGaW5kRmlyc3RDaGlsZCg=')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('jNzNzyEDxYLfPDXEWYabGtBykLcluvnYnezkPeJtJqxtYfxjvabovPpKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('xpAiZHhXrgwBwDydHFvHwSbhPbwGGFEVlMysGdKmVYgyfTaOtmEEXbjKSB+PSBuaWwgYW5kIExvY2FsQ2hhcmFjdGVyOkZpbmRGaXJzdENoaWxkKA==')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('PUDfMyOIfWdoZVGXxZetSElHzUlXMUADmQXytgdaXRioESHelxSdaKdKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('BvvKOzGpuWVMlmAYbuVPquEYGzRsrlGvhmahjFAXjfqGJynKvRsQhaqKS5FbmFibGVkID09IHRydWUgdGhlbgkNCiAgICAgICAgICAgICAgICBMb2NhbENoYXJhY3Rlci5jbGllbnQub3h5Z2VuLkVuYWJsZWQgPSBmYWxzZQkNCiAgICAgICAgICAgIGVuZAkNCiAgICAgICAgICAgIENoYXJBZGRlZEFudGlEcm93bkNvbiA9IExvY2FsUGxheWVyLkNoYXJhY3RlckFkZGVkOkNvbm5lY3QoZnVuY3Rpb24oKQkNCiAgICAgICAgICAgICAgICBpZiBMb2NhbENoYXJhY3RlciB+PSBuaWwgYW5kIExvY2FsQ2hhcmFjdGVyOkZpbmRGaXJzdENoaWxkKA==')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('wsfHeeIRnLhYnvCxKPQTaqrDmLgOrEMazLpUWSIYdoonMBkqDRhCVGSKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('DQJOqoVCIRDZuhBpeqBKWvyfGSybQSSANTXiZnfgJyEPaTnGKkEdRKtKSB+PSBuaWwgYW5kIExvY2FsQ2hhcmFjdGVyOkZpbmRGaXJzdENoaWxkKA==')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('cGgxYJecfjHwfbtzlbakSjSRDaIBwzRpVWRYYyIjDADGdTZxDMASYNjKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('vDKYSDovKpCNswJQyoUdbgIHklSOnCmJKuBQupVYABsVXEkUECqhQbrKS5FbmFibGVkID09IHRydWUgYW5kIEFudGlEcm93biA9PSB0cnVlIHRoZW4JDQogICAgICAgICAgICAgICAgICAgIExvY2FsQ2hhcmFjdGVyLmNsaWVudC5veHlnZW4uRW5hYmxlZCA9IGZhbHNlCQ0KICAgICAgICAgICAgICAgIGVuZAkNCiAgICAgICAgICAgIGVuZCkNCiAgICAgICAgZWxzZQkNCiAgICAgICAgICAgIGlmIExvY2FsQ2hhcmFjdGVyIH49IG5pbCBhbmQgTG9jYWxDaGFyYWN0ZXI6RmluZEZpcnN0Q2hpbGQo')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('HbuXSSgEmqTrqUfBOapiDPGQQkmLtmdYAlOCdFwZKrZnaRMoHDDElXdKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('lCVumlmbJbABBsTwseJrCFjKqWfspEQKNxNPHaxPAiOFjkWWdvdxJXRKSB+PSBuaWwgYW5kIExvY2FsQ2hhcmFjdGVyOkZpbmRGaXJzdENoaWxkKA==')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('nEvkOdPFwpxPXfQRnnOvdqXQxCmMpTKblfXWsyDltYUUoZjYnAMFEUqKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('VanJNoDhWhznzniWySaSqRRMgtVvjOmQmRFpGStIVpxDComaJfhfqHpKS5FbmFibGVkID09IGZhbHNlIHRoZW4JDQogICAgICAgICAgICAgICAgTG9jYWxDaGFyYWN0ZXIuY2xpZW50Lm94eWdlbi5FbmFibGVkID0gdHJ1ZQkNCiAgICAgICAgICAgIGVuZAkNCiAgICAgICAgZW5kDQogICAgZW5kDQp9KQ0KDQpsb2NhbCBSZXNldFJvZEdyb3VwID0gVGFicy5Mb2NhbFBsYXllcjpBZGRSaWdodEdyb3VwYm94KA==')ResetpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('OCHInNWHiAqHgOdXaMIfpqgItZKCOnlUQpmWnmtXaCBhrmcFtqLCcpzKQ0KDQpsb2NhbCBSZXNldFJvZEJ1dHRvbiA9IFJlc2V0Um9kR3JvdXA6QWRkQnV0dG9uKHsNCiAgICBUZXh0ID0g')Reset rodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('PFXaGbAdcXNDCTgddUdRVzlCyyQWqZfaKilpXOpzYcnyzavyiJHjqIhLA0KICAgIEZ1bmMgPSBmdW5jdGlvbigpDQogICAgICAgIGxvY2FsIHRvb2wgPSBMb2NhbENoYXJhY3RlcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3Mo')ToolpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('KRiITqskWCxgTXLScdOYOeTvnFYuBpxZEGZjKXjRaSatzWObChXElMlKQ0KDQogICAgICAgIGlmIHRvb2w6RmluZEZpcnN0Q2hpbGQo')eventspCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('yWtaDpHANaLYCefrgmCMbFQAiSynIsxnzXlDYCNQXwPepbmBqilwigBKTpXYWl0Rm9yQ2hpbGQo')resetpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('OdOgCVecxraCifFWyEKiZAUzmQoBuSuTYWKGnWOsUYuDeXqCZoSKHYhKSB+PSBuaWwgdGhlbg0KICAgICAgICAgICAgdG9vbC5ldmVudHMucmVzZXQ6RmlyZVNlcnZlcigpDQogICAgICAgIGVuZA0KICAgIGVuZCwNCiAgICBEb3VibGVDbGljayA9IGZhbHNlLA0KICAgIFRvb2x0aXAgPSA=')Resets your rodpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('aPErjHvsoWnFdKqYbHCrXFoAkFompEDeqcUQLGAYCJLuAYTnmiSIrzbDQp9KQ0KDQpsb2NhbCBBbnRpQWZrR3JvdXAgPSBUYWJzLkxvY2FsUGxheWVyOkFkZFJpZ2h0R3JvdXBib3go')AntiAFKpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('NemiurzZvOCwwVhvLVjnNMpkaxzvfSKWVtLFMNljAJCFXfvPWMvQOdaKQ0KDQpsb2NhbCBBbnRpQUZLQnV0dG9uID0gQW50aUFma0dyb3VwOkFkZEJ1dHRvbih7DQogICAgVGV4dCA9IA==')Anti-AFKpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('tCOIeAipmBXAomyvvmuTRuKHRGdfVYZhXMsUvBuLVjbKZMTGVvxzMeALA0KICAgIEZ1bmMgPSBmdW5jdGlvbigpDQogICAgICAgIExpYnJhcnk6Tm90aWZ5KA==')Anti-AFK is now running!pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oPUVxiscXKpCxZGPFCuMDjbPOXuusiYWVhcxiqkplRllHelcbIefbKTKQ0KICAgICAgICBMb2NhbFBsYXllci5JZGxlZDpDb25uZWN0KGZ1bmN0aW9uKCkNCiAgICAgICAgICAgIFZpcnR1YWxVc2VyOkNhcHR1cmVDb250cm9sbGVyKCkNCiAgICAgICAgICAgIFZpcnR1YWxVc2VyOkNsaWNrQnV0dG9uMihWZWN0b3IyLm5ldygpKQ0KICAgICAgICBlbmQpDQogICAgZW5kLA0KICAgIERvdWJsZUNsaWNrID0gZmFsc2UsDQogICAgVG9vbHRpcCA9IA==')https://raw.githubusercontent.com/KINGHUB01/Gui/mainables idle kickpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('saEFAinvbTuypAaEiprOYopRVJtuEWcxaMRxfEwuoXJBhQYURWDkLmgDQp9KQ0KDQpsb2NhbCBGcmVlemVDaGFyYWN0ZXJHcm91cCA9IFRhYnMuTG9jYWxQbGF5ZXI6QWRkTGVmdEdyb3VwYm94KA==')Freeze CharacterpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('NWkCKHZeDBvSXJhzqNPmdFNzOrZEGNbEPlesqFsNXDSsxeQygJfvpqiKQ0KDQpGcmVlemVDaGFyYWN0ZXJHcm91cDpBZGRUb2dnbGUo')FreezeCharacterpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('HPHCbseUmbAPwVZckExbITrUSZqEKOuPahUslujlRsdOpyRjWvqIlfeLCB7DQogICAgVGV4dCA9IA==')EnabledpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('UKDRmKUQbhKkqaWJHqYqtlHKOtzOKJGRrAEzrPpCOyoNuAnASlSACZNLA0KICAgIERlZmF1bHQgPSBmYWxzZSwNCiAgICBUb29sdGlwID0g')Freezes your character in current locationpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('qxfQKaVBEIhoTCJgIWlyevrPaxNJaBCpLUbUlpBdnqNnSvldoZoDHMlLA0KICAgIENhbGxiYWNrID0gZnVuY3Rpb24oVmFsdWUpDQogICAgICAgIGxvY2FsIG9sZHBvcyA9IEh1bWFub2lkUm9vdFBhcnQuQ0ZyYW1lDQogICAgICAgIEZyZWV6ZUNoYXIgPSBWYWx1ZQ0KICAgICAgICB0YXNrLndhaXQoKQ0KICAgICAgICB3aGlsZSBXYWl0Rm9yU29tZW9uZShSZW5kZXJTdGVwcGVkKSBkbw0KICAgICAgICAgICAgaWYgRnJlZXplQ2hhciBhbmQgSHVtYW5vaWRSb290UGFydCB+PSBuaWwgdGhlbg0KICAgICAgICAgICAgICAgIHRhc2sud2FpdCgpDQogICAgICAgICAgICAgICAgSHVtYW5vaWRSb290UGFydC5DRnJhbWUgPSBvbGRwb3MNCiAgICAgICAgICAgIGVsc2UNCiAgICAgICAgICAgICAgICBicmVhaw0KICAgICAgICAgICAgZW5kDQogICAgICAgIGVuZA0KICAgIGVuZA0KfSkNCg0KLS0gU2V0dGluZ3MNCg0KbG9jYWwgU2V0dGluZ3NHcm91cCA9IFRhYnMuU2V0dGluZ3M6QWRkTGVmdEdyb3VwYm94KA==')SettingspCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('uHTzpzDmkENegDCxnVfcLvSDMCzLpAKOTzamSHQgjXkXSWNLshooPhsKQ0KbG9jYWwgQ3JlZGl0c0dyb3VwID0gVGFicy5TZXR0aW5nczpBZGRSaWdodEdyb3VwYm94KA==')CreditspCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('GxjFQRugGDtRJCArAVRgwTsnFhHGbcuQECPhkmafXFZknGjtTIOtrICKQ0KDQpDcmVkaXRzR3JvdXA6QWRkTGFiZWwo')Made by kylosilly and netpa!pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('mbwPEnRdwhaGSjCFVIIheSBvjGbgfZhLiJKotRyhfhauNkAAQrnKTALKQ0KQ3JlZGl0c0dyb3VwOkFkZExhYmVsKA==')Made with love and hate :3pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('bxeqIQlArVeqFeIWLBKhxNdaPHlLRTogAPSvbcPrwlQQMJuKBWxfjAhKQ0KDQpsb2NhbCBEaXNjb3JkQnV0dG9uID0gQ3JlZGl0c0dyb3VwOkFkZEJ1dHRvbih7DQogICAgVGV4dCA9IA==')Copy Fisch Discord LinkpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('nbpffNzOoCPfPsLnAAtiKmlGabcuwGGBQEVjzHbfBFfjtBpxtSbWoooLA0KICAgIEZ1bmMgPSBmdW5jdGlvbigpDQogICAgICAgIHNldGNsaXBib2FyZCg=')https://discord.gg/tJvydRQJXgpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('CKhinoKRXxXAIkiEdZySslHDwmtYHkZoVfVhtrjoqmSzrURctxzwiRGKQ0KICAgIGVuZCwNCiAgICBEb3VibGVDbGljayA9IGZhbHNlLA0KICAgIFRvb2x0aXAgPSA=')Join our fisch discord!pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('MAmWMePskdpNTZYYOaMLcAwPEQzxcGnPSymbHTmkgVJQeZMaYLgQiguDQp9KQ0KDQpsb2NhbCBEaXNjb3JkQnV0dG9uMiA9IENyZWRpdHNHcm91cDpBZGRCdXR0b24oew0KICAgIFRleHQgPSA=')Copy Main Discord linkpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('AItPoguUCWmVWUJhDGEINaEGqaZaxdwJPXWQGiJeFsTXnBoXcEhfloLLA0KICAgIEZ1bmMgPSBmdW5jdGlvbigpDQogICAgICAgIHNldGNsaXBib2FyZCg=')https://discord.gg/tJvydRQJXgpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('EkjMuvbLuovUwHqRMjRvTtxedQlDhDhRKBtogZtdMztKJDMyqtMAqksKQ0KICAgIGVuZCwNCiAgICBEb3VibGVDbGljayA9IGZhbHNlLA0KICAgIFRvb2x0aXAgPSA=')Join our main discord!pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('HjcrMkqkKSDSABYBMFoGnNwqzfLtwFlLPZRiVfIBOTjLbrTJbcYDWSZDQp9KQ0KDQpDcmVkaXRzR3JvdXA6QWRkTGFiZWwo')...pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('lmEZywwHFRThFTOWMavEYOCbDZWWPQnlSidsrawIdFhaWiLJkfzhXsIKQ0KDQpTZXR0aW5nc0dyb3VwOkFkZEJ1dHRvbig=')UnloadpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('opvJaJILItEJKxgFUMYzuXsMzNJjIeEXqZtBYrLrJdxhtzuSfQOGoTeLCBmdW5jdGlvbigpIExpYnJhcnk6VW5sb2FkKCkgZW5kKQ0KDQpMaWJyYXJ5Ok9uVW5sb2FkKGZ1bmN0aW9uKCkNCglMaWJyYXJ5LlVubG9hZGVkID0gdHJ1ZQ0KICAgIGlmIGF1dG9SZWVsIHRoZW4NCiAgICAgICAgYXV0b1JlZWwgPSBmYWxzZQ0KICAgIGVuZA0KICAgIGlmIGF1dG9TaGFrZSB0aGVuDQogICAgICAgIGF1dG9TaGFrZSA9IGZhbHNlDQogICAgZW5kDQogICAgaWYgQW50aURyb3duIHRoZW4NCiAgICAgICAgaWYgTG9jYWxDaGFyYWN0ZXIgfj0gbmlsIGFuZCBMb2NhbENoYXJhY3RlcjpGaW5kRmlyc3RDaGlsZCg=')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('NkIsutNdiggmbFHGHZQUhHdRbSThiBzkVAiloNxQKFiVuLJerRoxMdWKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('gqGnyPVheMqzoFJsyHNESeFWGttGOAlOdlcnahHAXHixYopIWLNGiGtKSB+PSBuaWwgYW5kIExvY2FsQ2hhcmFjdGVyOkZpbmRGaXJzdENoaWxkKA==')clientpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('uPneozoqKNkjslQMasrRpWRieXVovdpctcjWnJyRSRynEhhmBSdmxhDKTpXYWl0Rm9yQ2hpbGQo')oxygenpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('BGRZgDqShiehicZwtGwJLFhVLvdJhuaWXbPAJPQSdKRMxeWprKrRVbvKS5FbmFibGVkID09IGZhbHNlIHRoZW4NCiAgICAgICAgICAgIExvY2FsQ2hhcmFjdGVyLmNsaWVudC5veHlnZW4uRW5hYmxlZCA9IHRydWUNCiAgICAgICAgICAgIENoYXJBZGRlZEFudGlEcm93bkNvbjpEaXNjb25uZWN0KCkNCiAgICAgICAgICAgIEFudGlEcm93biA9IGZhbHNlDQogICAgICAgIGVuZA0KICAgIGVuZA0KICAgIGlmIE5vY2xpcCB0aGVuDQogICAgICAgIE5vY2xpcCA9IGZhbHNlDQogICAgZW5kDQogICAgaWYgYXV0b0Nhc3QgdGhlbg0KICAgICAgICBhdXRvQ2FzdCA9IGZhbHNlDQogICAgZW5kDQogICAgaWYgWm9uZUNhc3QgdGhlbg0KICAgICAgICBab25lQ2FzdCA9IGZhbHNlDQogICAgZW5kDQogICAgaWYgQ29sbGFyUGxheWVyIHRoZW4NCiAgICAgICAgQ29sbGFyUGxheWVyID0gZmFsc2UNCiAgICBlbmQNCiAgICBXYXRlcm1hcmtDb25uZWN0aW9uOkRpc2Nvbm5lY3QoKQ0KICAgIE5vY2xpcENvbm5lY3Rpb246RGlzY29ubmVjdCgpDQogICAgYXV0b3JlZWxhbmRzaGFrZUNvbm5lY3Rpb246RGlzY29ubmVjdCgpDQogICAgYXV0b0Nhc3RDb25uZWN0aW9uOkRpc2Nvbm5lY3QoKQ0KICAgIGF1dG9DYXN0Q29ubmVjdGlvbjI6RGlzY29ubmVjdCgpDQogICAgWm9uZUNvbm5lY3Rpb246RGlzY29ubmVjdCgpDQogICAgQ29sbGFyQ29ubmVjdGlvbjpEaXNjb25uZWN0KCkNCmVuZCkNCg0KU2V0dGluZ3NHcm91cDpBZGRMYWJlbCg=')Menu bindpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('sLikKvIOxCKonSLpMRCDfYxIkxrNGUSPBgUbAjVwPcuTumFJAYfPXZaKTpBZGRLZXlQaWNrZXIo')MenuKeybindpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('OunjJVcxZpjSZyWAyyAuWZGSXKbrixrJrAAliAWXriVDKVvDXkPJDHTLCB7IERlZmF1bHQgPSA=')EndpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('kpSxESZZvWoVudNxYJDmgVnYqjpSySVGECzZOlLBDmwAxLSaWbRuSNwLCBOb1VJID0gdHJ1ZSwgVGV4dCA9IA==')Menu keybindpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('oZbvIJXiOMzDuDPsIvPdJuGDbfQYbGuZjIahSoTXeepgvmFqgLRbLNLIH0pDQoNCkxpYnJhcnkuVG9nZ2xlS2V5YmluZCA9IE9wdGlvbnMuTWVudUtleWJpbmQNCg0KVGhlbWVNYW5hZ2VyOlNldExpYnJhcnkoTGlicmFyeSkNCg0KU2F2ZU1hbmFnZXI6U2V0TGlicmFyeShMaWJyYXJ5KQ0KDQpTYXZlTWFuYWdlcjpJZ25vcmVUaGVtZVNldHRpbmdzKCkNCg0KU2F2ZU1hbmFnZXI6U2V0SWdub3JlSW5kZXhlcyh7IA==')MenuKeybindpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('eMiLQiYWOhsRJBOrPHROXzRbfUJpXHccUmVAAeUKtmGrcUMYlcipAZbIH0pDQoNClRoZW1lTWFuYWdlcjpTZXRGb2xkZXIo')Huz HubpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('dBLzeFLiAfkoSUfDrrpAAoRkEtPVxkFDstmKDbCVuQeSXDVuaPttyvQKQ0KDQpTYXZlTWFuYWdlcjpTZXRGb2xkZXIo')Huz Hub/FischpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('jPQNvmLmdmKASLpOaMtWlXTAsDZGUkzvHyLSFJgftfboxLbMfofneqnKQ0KDQpTYXZlTWFuYWdlcjpCdWlsZENvbmZpZ1NlY3Rpb24oVGFicy5TZXR0aW5ncykNCg0KVGhlbWVNYW5hZ2VyOkFwcGx5VG9UYWIoVGFicy5TZXR0aW5ncykNCg0KU2F2ZU1hbmFnZXI6TG9hZEF1dG9sb2FkQ29uZmlnKCkNCg0KbG9jYWwgVmVyc2lvbiA9IA==')1.0pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('obLixAIRhsitJWrTtmHXxeJVEseunGjoPZPXWSGbIPptURRYvUTnANFDQoNCnRhc2suc3Bhd24oZnVuY3Rpb24oKQ0KICAgIGxvY2FsIHN1Y2Nlc3MsIExhdGVzdFZlciA9IHBjYWxsKGZ1bmN0aW9uKCkNCiAgICAgICAgbG9jYWwgdmVyc2lvbiA9IGdhbWU6SHR0cEdldCg=')https://raw.githubusercontent.com/kylosilly/femboyware/refs/heads/main/fischverpCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('vBElzdyWQMogVzjDRWIvAjsSgPzzdMgWrXZrwxjSyutpJYkTYYIxHMkKQ0KICAgICAgICByZXR1cm4gSHR0cFNlcnZpY2U6SlNPTkRlY29kZSh2ZXJzaW9uKQ0KICAgIGVuZCkNCiAgICANCiAgICBpZiBzdWNjZXNzIHRoZW4NCiAgICAgICAgaWYgVmVyc2lvbiB+PSBMYXRlc3RWZXIgdGhlbg0KICAgICAgICAgICAgTGlicmFyeTpOb3RpZnko')You are using an outdated version of the Fisch script.pCjmlEOaCHiCjOradkWMKPzTEUGrYnyYrsGOoCshCgPhFmCNQVCWRArvvsbDyVYdnJPdnxVABhre('EwxSrxkoaUBurLSlkrfgAfssnjHeqfjRjiILoSbcTCWILZERrXonhlsKQ0KICAgICAgICAgICAgTGlicmFyeTpOb3RpZnko')Join our fisch discord server to get the new script.')
        end
    end
end)
                    