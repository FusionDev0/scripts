-- Gui to Lua


-- Version: 3.2



-- Instances:



local ScreenGui = Instance.new("ScreenGui")


local Frame = Instance.new("Frame")


local TextBox = Instance.new("TextBox")


local TextBox2 = Instance.new("TextBox")


local TextButton = Instance.new("TextButton")



--Properties:



ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



Frame.Parent = ScreenGui


Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)


Frame.Position = UDim2.new(0.0119791673, 0, 0.0194624644, 0)


Frame.Size = UDim2.new(0, 674, 0, 418)



TextBox.Parent = Frame


TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


TextBox.Size = UDim2.new(0, 200, 0, 50)


TextBox.Font = Enum.Font.SourceSans


TextBox.Text = "Player1"


TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)


TextBox.TextSize = 14.000



TextBox2.Name = "TextBox2"


TextBox2.Parent = Frame


TextBox2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


TextBox2.Position = UDim2.new(0, 0, 0.203349277, 0)


TextBox2.Size = UDim2.new(0, 200, 0, 65)


TextBox2.Font = Enum.Font.SourceSans


TextBox2.Text = "Player2"


TextBox2.TextColor3 = Color3.fromRGB(0, 0, 0)


TextBox2.TextSize = 14.000



function Rscript()


	local I1 = TextBox.Text


	local I2 = TextBox2.Text


	local config = {


		[1] = I1,


		[2] = I2


	}


	


	function fWeld(zName, zParent, zPart0, zPart1, zCoco, a, b, c, d, e, f)


		local funcw = Instance.new("Weld")


		funcw.Name = zName


		funcw.Parent = zParent


		funcw.Part0 = zPart0


		funcw.Part1 = zPart1


		if (zCoco == true) then


			funcw.C0 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)


		else


			funcw.C1 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)


		end


		return funcw


	end


	function fun(n1, n2)


		pcall(


			function()


				t1 = game.Players[n1].Character.Torso


				t2 = game.Players[n2].Character.Torso


				t2.Parent.Humanoid.PlatformStand = true


				t1["Left Shoulder"]:Remove()


				ls1 = Instance.new("Weld")


				ls1.Parent = t1


				ls1.Part0 = t1


				ls1.Part1 = t1.Parent["Left Arm"]


				ls1.C0 = CFrame.new(-1.5, 0, 0)


				ls1.Name = "Left Shoulder"


				t1["Right Shoulder"]:Remove()


				rs1 = Instance.new("Weld")


				rs1.Parent = t1


				rs1.Part0 = t1


				rs1.Part1 = t1.Parent["Right Arm"]


				rs1.C0 = CFrame.new(1.5, 0, 0)


				rs1.Name = "Right Shoulder"


				t2["Left Shoulder"]:Remove()


				ls2 = Instance.new("Weld")


				ls2.Parent = t2


				ls2.Part0 = t2


				ls2.Part1 = t2.Parent["Left Arm"]


				ls2.C0 = CFrame.new(-1.5, 0, 0)


				ls2.Name = "Left Shoulder"


				t2["Right Shoulder"]:Remove()


				rs2 = Instance.new("Weld")


				rs2.Parent = t2


				rs2.Part0 = t2


				rs2.Part1 = t2.Parent["Right Arm"]


				rs2.C0 = CFrame.new(1.5, 0, 0)


				rs2.Name = "Right Shoulder"


				t2["Left Hip"]:Remove()


				lh2 = Instance.new("Weld")


				lh2.Parent = t2


				lh2.Part0 = t2


				lh2.Part1 = t2.Parent["Left Leg"]


				lh2.C0 = CFrame.new(-0.5, -2, 0)


				lh2.Name = "Left Hip"


				t2["Right Hip"]:Remove()


				rh2 = Instance.new("Weld")


				rh2.Parent = t2


				rh2.Part0 = t2


				rh2.Part1 = t2.Parent["Right Leg"]


				rh2.C0 = CFrame.new(0.5, -2, 0)


				rh2.Name = "Right Hip"


				local d = Instance.new("Part")


				d.TopSurface = 0


				d.BottomSurface = 0


				d.BrickColor = BrickColor.new("Medium stone grey")


				d.Shape = "Ball"


				d.Parent = t1


				d.Size = Vector3.new(1, 1, 1)


				local dm = Instance.new("SpecialMesh")


				dm.MeshType = "Sphere"


				dm.Parent = d


				dm.Scale = Vector3.new(0.4, 0.4, 0.4)


				fWeld("weld", t1, t1, d, true, -0.2, -1.3, -0.6, 0, 0, 0)


				d2 = d:Clone()


				d2.Parent = t1


				fWeld("weld", t1, t1, d2, true, 0.2, -1.3, -0.6, 0, 0, 0)


				local c = Instance.new("Part")


				c.TopSurface = 0


				c.BottomSurface = 0


				c.CanCollide = false


				c.BrickColor = BrickColor.new("Pastel brown")


				c.Parent = t1


				c.formFactor = "Custom"


				c.Size = Vector3.new(0.4, 1.3, 0.4)


				cm = Instance.new("CylinderMesh")


				cm.Parent = c


				a = fWeld("weld", t1, t1, c, true, 0, -1, -0.52 + (-c.Size.y / 2), math.rad(-80), 0, 0)


				c2 = d:Clone()


				c2.BrickColor = BrickColor.new("Medium stone grey")


				c2.Mesh.Scale = Vector3.new(0.4, 0.62, 0.4)


				c2.Parent = t1


				fWeld("weld", c, c, c2, true, 0, 0 + (c.Size.y / 2), 0, math.rad(-10), 0, 0)


				local bl = Instance.new("Part")


				bl.TopSurface = 0


				bl.BottomSurface = 0


				bl.CanCollide = false


				bl.BrickColor = BrickColor.new("Pastel brown")


				bl.Shape = "Ball"


				bl.Parent = t2


				bl.Size = Vector3.new(1, 1, 1)


				local dm = Instance.new("SpecialMesh")


				dm.MeshType = "Sphere"


				dm.Parent = bl


				dm.Scale = Vector3.new(1.2, 1.2, 1.2)


				fWeld("weld", t2, t2, bl, true, -0.5, 0.5, -0.6, 0, 0, 0)


				local br = Instance.new("Part")


				br.TopSurface = 0


				br.BottomSurface = 0


				br.CanCollide = false


				br.BrickColor = BrickColor.new("Pastel brown")


				br.Shape = "Ball"


				br.Parent = t2


				br.Size = Vector3.new(1, 1, 1)


				local dm = Instance.new("SpecialMesh")


				dm.MeshType = "Sphere"


				dm.Parent = br


				dm.Scale = Vector3.new(1.2, 1.2, 1.2)


				fWeld("weld", t2, t2, br, true, 0.5, 0.5, -0.6, 0, 0, 0)


				local bln = Instance.new("Part")


				bln.TopSurface = 0


				bln.BottomSurface = 0


				bln.CanCollide = false


				bln.Shape = "Ball"


				bln.Parent = t2


				bln.Size = Vector3.new(1, 1, 1)


				local dm = Instance.new("SpecialMesh")


				dm.MeshType = "Sphere"


				dm.Parent = bln


				dm.Scale = Vector3.new(0.2, 0.2, 0.2)


				fWeld("weld", t2, t2, bln, true, -0.5, 0.5, -1.2, 0, 0, 0)


				local brn = Instance.new("Part")


				brn.TopSurface = 0


				brn.BottomSurface = 0


				brn.CanCollide = false


				brn.Shape = "Ball"


				brn.Parent = t2


				brn.Size = Vector3.new(1, 1, 1)


				local dm = Instance.new("SpecialMesh")


				dm.MeshType = "Sphere"


				dm.Parent = brn


				dm.Scale = Vector3.new(0.2, 0.2, 0.2)


				fWeld("weld", t2, t2, brn, true, 0.5, 0.5, -1.2, 0, 0, 0)


				lh2.C1 = CFrame.new(0, -1.5, -0.5) * CFrame.Angles(0.9, -0.4, 0)


				rh2.C1 = CFrame.new(0, -1.5, -0.5) * CFrame.Angles(0.9, 0.4, 0)


				ls2.C1 = CFrame.new(-0.5, -1.3, -0.5) * CFrame.Angles(0.9, -0.4, 0)


				rs2.C1 = CFrame.new(0.5, -1.3, -0.5) * CFrame.Angles(0.9, 0.4, 0)


				ls1.C1 = CFrame.new(-0.5, 0.7, 0) * CFrame.Angles(-0.9, -0.4, 0)


				rs1.C1 = CFrame.new(0.5, 0.7, 0) * CFrame.Angles(-0.9, 0.4, 0)


				if t1:findFirstChild("weldx") ~= nil then


					t1.weldx:Remove()


				end


				we = fWeld("weldx", t1, t1, t2, true, 0, -0.9, -1.3, math.rad(-90), 0, 0)


				n = t2.Neck


				n.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-210), math.rad(180), 0)


			end


		)


		coroutine.resume(


			coroutine.create(


				function()


					while wait() do


						for i = 1, 6 do


							we.C1 = we.C1 * CFrame.new(0, -0.3, 0)


							wait()


						end



						for i = 1, 6 do


							we.C1 = we.C1 * CFrame.new(0, 0.3, 0)


							wait()


						end


					end


				end


			)


		)


	end


	fun(config[1], config[2])



end



TextButton.Parent = Frame


TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


TextButton.Position = UDim2.new(0, 0, 0.464114845, 0)


TextButton.Size = UDim2.new(0, 200, 0, 50)


TextButton.Font = Enum.Font.SourceSans


TextButton.Text = "done"


TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)


TextButton.TextSize = 14.000


TextButton.MouseButton1Click:Connect(Rscript)
