--[[
    Fluent Interface Suite
    This script is 
not int
ended to be mod
if
ied.
    To view the source code, see the 'src' folder on GitHub!

    Auth
or: dawid
    License: MIT
    GitHub: https://github.com/dawid-scripts/Fluent
--]]


local a,b={
{
1,'ModuleScript',{
'MainModule'}
,{
{
18,'ModuleScript',{
'Creat
or'}
}
,{
28,'ModuleScript',{
'Icons'}
}
,{
47,'ModuleScript',{
'Themes'}
,{
{
50,'ModuleScript',{
'Dark'}
}
,{
52,'ModuleScript',{
'Light'}
}
,{
51,'ModuleScript',{
'Darker'}
}
,{
53,'ModuleScript',{
'Rose'}
}
,{
49,'ModuleScript',{
'Aqua'}
}
,{
48,'ModuleScript',{
'Amethyst'}
}
}
}
,{
19,'ModuleScript',{
'Elements'}
,{
{
21,'ModuleScript',{
'Col
orpicker'}
}
,{
27,'ModuleScript',{
'Toggle'}
}
,{
23,'ModuleScript',{
'Input'}
}
,{
20,'ModuleScript',{
'Button'}
}
,{
25,'ModuleScript',{
'Paragraph'}
}
,{
22,'ModuleScript',{
'Drop
down'}
}
,{
26,'ModuleScript',{
'Slider'}
}
,{
24,'ModuleScript',{
'Keybind'}
}
}
}
,{
29,'Folder',{
'Packages'}
,{
{
30,'ModuleScript',{
'Flipper'}
,{
{
33,'ModuleScript',{
'GroupMot
or'}
}
,{
46,'ModuleScript',{
'isMot
or.spec'}
}
,{
39,'ModuleScript',{
'Signal'}
}
,{
40,'ModuleScript',{
'Signal.spec'}
}
,{
45,'ModuleScript',{
'isMot
or'}
}
,{
36,'ModuleScript',{
'Instant.spec'}
}
,{
44,'ModuleScript',{
'Spring.spec'}
}
,{
42,'ModuleScript',{
'SingleMot
or.spec'}
}
,{
38,'ModuleScript',{
'Linear.spec'}
}
,{
31,'ModuleScript',{
'BaseMot
or'}
}
,{
43,'ModuleScript',{
'Spring'}
}
,{
35,'ModuleScript',{
'Instant'}
}
,{
37,'ModuleScript',{
'Linear'}
}
,{
41,'ModuleScript',{
'SingleMot
or'}
}
,{
34,'ModuleScript',{
'GroupMot
or.spec'}
}
,{
32,'ModuleScript',{
'BaseMot
or.spec'}
}
}
}
}
}
,{
2,'ModuleScript',{
'Acrylic'}
,{
{
3,'ModuleScript',{
'AcrylicBlur'}
}
,{
5,'ModuleScript',{
'CreateAcrylic'}
}
,{
6,'ModuleScript',{
'Utils'}
}
,{
4,'ModuleScript',{
'AcrylicPaint'}
}
}
}
,{
7,'Folder',{
'Components'}
,{
{
9,'ModuleScript',{
'Button'}
}
,{
12,'ModuleScript',{
'Not
if
ication'}
}
,{
13,'ModuleScript',{
'Section'}
}
,{
17,'ModuleScript',{
'Win
dow'}
}
,{
14,'ModuleScript',{
'Tab'}
}
,{
10,'ModuleScript',{
'Dialog'}
}
,{
8,'ModuleScript',{
'Assets'}
}
,{
16,'ModuleScript',{
'TitleBar'}
}
,{
15,'ModuleScript',{
'Textbox'}
}
,{
11,'ModuleScript',{
'Element'}
}
}
}
}
}
}

local aa={
function()
local c,d,e,f,g=b(1)
local h,i,j,k,l,m=game:GetService'Lighting',game:GetService'RunService',game:GetService'Players'.LocalPlayer,game:GetService'UserInputService',game:GetService'TweenService',game:GetService'W
orkspace'.CurrentCamera 
local n,o=j:GetMouse(),d 
local p,q,r,s=e(o.Creat
or),e(o.Elements),e(o.Acrylic),o.Components 
local t,u,v=e(s.Not
if
ication),p.New,protectgui 
or(syn and syn.protect_gui)
or function()
end 
local w=u('ScreenGui',{
Parent=i:IsStudio()and j.PlayerGui 
or game:GetService'C
oreGui'}
)v(w)t:Init(w)
local x={
Version='1.1.0',OpenFrames={
}
,Options={
}
,Themes=e(o.Themes).Names,Win
dow=
nil,Win
dowFrame=
nil,Unloaded=
false,Theme='Dark',DialogOpen=
false,UseAcrylic=
false,Acrylic=
false,Transparency=
true,MinimizeKeybind=
nil,MinimizeKey=Enum.KeyCode.LeftControl,GUI=w}
function x.SafeCallback(y,z,...)
if
 
not z 
then 
return 
end 
local A,B=pcall(z,...)
if
 
not A 
then 
local C,D=B:find':%d+: '
if
 
not D 
then 
return x:Not
if
y{
Title='Interface',Content='Callback err
or',SubContent=B,Duration=5}

end 
return x:Not
if
y{
Title='Interface',Content='Callback err
or',SubContent=B:sub(D+1),Duration=5}

end 
end function x.Round(y,z,A)
if
 A==0 
then 
return math.flo
or(z)
end z=tostring(z)
return z:find'%.'and tonumber(z:sub(1,z:find'%.'+A))
or z 
end 
local y=e(o.Icons).assets function x.GetIcon(z,A)
if
 A~=
nil and y['lucide-'..A]
then 
return y['lucide-'..A]
end 
return 
nil 
end 
local z={
}
z.__index=z z.__namecall=function(A,B,...)
return z[B](...)
end f
or A,B in ipairs(q)
do z['Add'..B.__type]=function(C,D,E)B.Container=C.Container B.Type=C.Type B.ScrollFrame=C.ScrollFrame B.Library=x 
return B:New(D,E)
end 
end x.Elements=z function x.CreateWin
dow(C,D)assert(D.Title,'Win
dow - Missing Title')
if
 x.Win
dow 
then 
print'You can
not create m
ore than one win
dow.'
return 
end x.MinimizeKey=D.MinimizeKey x.UseAcrylic=D.Acrylic 
if
 D.Acrylic 
then r.init()
end 
local E=e(s.Win
dow){
Parent=w,Size=D.Size,Title=D.Title,SubTitle=D.SubTitle,TabWidth=D.TabWidth}
x.Win
dow=E x:SetTheme(D.Theme)
return E 
end function x.SetTheme(C,D)
if
 x.Win
dow and table.find(x.Themes,D)
then x.Theme=D p.UpdateTheme()
end 
end function x.Destroy(C)
if
 x.Win
dow 
then x.Unloaded=
true 
if
 x.UseAcrylic 
then x.Win
dow.AcrylicPaint.Model:Destroy()
end p.Disconnect()x.GUI:Destroy()
end 
end function x.ToggleAcrylic(C,D)
if
 x.Win
dow 
then 
if
 x.UseAcrylic 
then x.Acrylic=D x.Win
dow.AcrylicPaint.Model.Transparency=D and 0.98 
or 1 
if
 D 
then r.Enable()
else
 r.Disable()
end 
end 
end 
end function x.ToggleTransparency(C,D)
if
 x.Win
dow 
then x.Win
dow.AcrylicPaint.Frame.Background.BackgroundTransparency=D and 0.35 
or 0 
end 
end function x.Not
if
y(C,D)
return t:New(D)
end 
if
 getgenv 
then getgenv().Fluent=x 
end 
return x 
end,function()
local c,d,e,f,g=b(2)
local h={
AcrylicBlur=e(d.AcrylicBlur),CreateAcrylic=e(d.CreateAcrylic),AcrylicPaint=e(d.AcrylicPaint)}
function h.init()
local i=Instance.new'DepthOfFieldEffect'i.FarIntensity=0 i.InFocusRadius=0.1 i.NearIntensity=1 
local j={
}
function h.Enable()f
or k,l in pairs(j)
do l.Enabled=
false 
end i.Parent=game:GetService'Lighting'
end function h.Disable()f
or k,l in pairs(j)
do l.Enabled=l.enabled 
end i.Parent=
nil 
end 
local k=function()
local k=function(k)
if
 k:IsA'DepthOfFieldEffect'
then j[k]={
enabled=k.Enabled}

end 
end f
or l,m in pairs(game:GetService'Lighting':GetChildren())
do k(m)
end 
if
 game:GetService'W
orkspace'.CurrentCamera 
then f
or n,o in pairs(game:GetService'W
orkspace'.CurrentCamera:GetChildren())
do k(o)
end 
end 
end k()h.Enable()
end 
return h 
end,function()
local c,d,e,f,g=b(3)
local h,i,j,k=e(d.Parent.Parent.Creat
or),e(d.Parent.CreateAcrylic),unpack(e(d.Parent.Utils))
local l=function(l)
local m={
}
l=l 
or 0.001 
local n,o={
topLeft=Vect
or2.new(),topRight=Vect
or2.new(),bottomRight=Vect
or2.new()}
,i()o.Parent=w
orkspace 
local p,q=function(p,q)n.topLeft=q n.topRight=q+Vect
or2.new(p.X,0)n.bottomRight=q+p 
end,function()
local p=game:GetService'W
orkspace'.CurrentCamera 
if
 p 
then p=p.CFrame 
end 
local q=p 
if
 
not q 
then q=CFrame.new()
end 
local r,s,t,u=q,n.topLeft,n.topRight,n.bottomRight 
local v,w,x=j(s,l),j(t,l),j(u,l)
local y,z=(w-v).Magnitude,(w-x).Magnitude o.CFrame=CFrame.fromMatrix((v+x)/2,r.XVect
or,r.YVect
or,r.ZVect
or)o.Mesh.Scale=Vect
or3.new(y,z,0)
end 
local r,s=function(r)
local s=k()
local t,u=r.AbsoluteSize-Vect
or2.new(s,s),r.AbsolutePosition+Vect
or2.new(s/2,s/2)p(t,u)task.spawn(q)
end,function()
local r=game:GetService'W
orkspace'.CurrentCamera 
if
 
not r 
then 
return 
end table.insert(m,r:GetPropertyChangedSignal'CFrame':Connect(q))table.insert(m,r:GetPropertyChangedSignal'Viewp
ortSize':Connect(q))table.insert(m,r:GetPropertyChangedSignal'FieldOfView':Connect(q))task.spawn(q)
end o.Destroying:Connect(function()f
or t,u in m 
do pcall(function()u:Disconnect()
end)
end 
end)s()
return r,o 
end 
return function(m)
local n,o,p={
}
,l(m)
local q=h.New('Frame',{
BackgroundTransparency=1,Size=UDim2.fromScale(1,1)}
)h.AddSignal(q:GetPropertyChangedSignal'AbsolutePosition',function()o(q)
end)h.AddSignal(q:GetPropertyChangedSignal'AbsoluteSize',function()o(q)
end)n.AddParent=function(r)h.AddSignal(r:GetPropertyChangedSignal'Visible',function()n.SetVisibility(r.Visible)
end)
end n.SetVisibility=function(r)p.Transparency=r and 0.98 
or 1 
end n.Frame=q n.Model=p 
return n 
end 
end,function()
local c,d,e,f,g=b(4)
local h,i=e(d.Parent.Parent.Creat
or),e(d.Parent.AcrylicBlur)
local j=h.New 
return function(k)
local l={
}
l.Frame=j('Frame',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=0.9,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),B
orderSizePixel=0}
,{
j('ImageLabel',{
Image='rbxassetid://8992230677',ScaleType='Slice',SliceCenter=Rect.new(Vect
or2.new(99,99),Vect
or2.new(99,99)),Anch
orPoint=Vect
or2.new(0.5,0.5),Size=UDim2.new(1,120,1,116),Position=UDim2.new(0.5,0,0.5,0),BackgroundTransparency=1,ImageCol
or3=Col
or3.fromRGB(0,0,0),ImageTransparency=0.7}
),j('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
),j('Frame',{
BackgroundTransparency=0.45,Size=UDim2.fromScale(1,1),Name='Background',ThemeTag={
BackgroundCol
or3='AcrylicMain'}
}
,{
j('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
)}
),j('Frame',{
BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=0.4,Size=UDim2.fromScale(1,1)}
,{
j('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
),j('UIGradient',{
Rotation=90,ThemeTag={
Col
or='AcrylicGradient'}
}
)}
),j('ImageLabel',{
Image='rbxassetid://9968344105',ImageTransparency=0.98,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.new(0,128,0,128),Size=UDim2.fromScale(1,1),BackgroundTransparency=1}
,{
j('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
)}
),j('ImageLabel',{
Image='rbxassetid://9968344227',ImageTransparency=0.9,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.new(0,128,0,128),Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ThemeTag={
ImageTransparency='AcrylicNoise'}
}
,{
j('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
)}
),j('Frame',{
BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ZIndex=2}
,{
j('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
),j('UIStroke',{
Transparency=0.5,Thickness=1,ThemeTag={
Col
or='AcrylicB
order'}
}
)}
)}
)
local m 
if
 e(d.Parent.Parent).UseAcrylic 
then m=i()m.Frame.Parent=l.Frame l.Model=m.Model l.AddParent=m.AddParent l.SetVisibility=m.SetVisibility 
end 
return l 
end 
end,function()
local c,d,e,f,g=b(5)
local h=d.Parent.Parent 
local i=e(h.Creat
or)
local j=function()
local j=i.New('Part',{
Name='Body',Col
or=Col
or3.new(0,0,0),Material=Enum.Material.Glass,Size=Vect
or3.new(1,1,0),Anch
ored=
true,CanCollide=
false,Locked=
true,CastSha
dow=
false,Transparency=0.98}
,{
i.New('SpecialMesh',{
MeshType=Enum.MeshType.Brick,Offset=Vect
or3.new(0,0,-1E-6)}
)}
)
return j 
end 
return j 
end,function()
local c,d,e,f,g=b(6)
local h,i=function(h,i,j,k,l)
return(h-i)*(l-k)/(j-i)+k 
end,function(h,i)
local j=game:GetService'W
orkspace'.CurrentCamera:ScreenPointToRay(h.X,h.Y)
return j.Origin+j.Direction*i 
end 
local j=function()
local j=game:GetService'W
orkspace'.CurrentCamera.Viewp
ortSize.Y 
return h(j,0,2560,8,56)
end 
return{
i,j}

end,[8]=function()
local c,d,e,f,g=b(8)
return{
Close='rbxassetid://9886659671',Min='rbxassetid://9886659276',Max='rbxassetid://9886659406',Rest
ore='rbxassetid://9886659001'}

end,[9]=function()
local c,d,e,f,g=b(9)
local h=d.Parent.Parent 
local i,j=e(h.Packages.Flipper),e(h.Creat
or)
local k,l=j.New,i.Spring.new 
return function(m,n,o)o=o 
or 
false 
local p={
}
p.Title=k('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',TextCol
or3=Col
or3.fromRGB(200,200,200),TextSize=14,TextWrapped=
true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ThemeTag={
TextCol
or3='Text'}
}
)p.HoverFrame=k('Frame',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ThemeTag={
BackgroundCol
or3='Hover'}
}
,{
k('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
)}
)p.Frame=k('TextButton',{
Size=UDim2.new(0,0,0,32),Parent=n,ThemeTag={
BackgroundCol
or3='DialogButton'}
}
,{
k('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),k('UIStroke',{
ApplyStrokeMode=Enum.ApplyStrokeMode.B
order,Transparency=0.65,ThemeTag={
Col
or='DialogButtonB
order'}
}
),p.HoverFrame,p.Title}
)
local q,r=j.SpringMot
or(1,p.HoverFrame,'BackgroundTransparency',o)j.AddSignal(p.Frame.MouseEnter,function()r(0.97)
end)j.AddSignal(p.Frame.MouseLeave,function()r(1)
end)j.AddSignal(p.Frame.MouseButton1Down,function()r(1)
end)j.AddSignal(p.Frame.MouseButton1Up,function()r(0.97)
end)
return p 
end 
end,[10]=function()
local c,d,e,f,g=b(10)
local h,i,j,k=game:GetService'UserInputService',game:GetService'Players'.LocalPlayer:GetMouse(),game:GetService'W
orkspace'.CurrentCamera,d.Parent.Parent 
local l,m=e(k.Packages.Flipper),e(k.Creat
or)
local n,o,p,q=l.Spring.new,l.Instant.new,m.New,{
Win
dow=
nil}
function q.Init(r,s)q.Win
dow=s 
return q 
end function q.Create(r)
local s={
Buttons=0}
s.TintFrame=p('TextButton',{
Text='',Size=UDim2.fromScale(1,1),BackgroundCol
or3=Col
or3.fromRGB(0,0,0),BackgroundTransparency=1,Parent=q.Win
dow.Root}
,{
p('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
)}
)
local t,u=m.SpringMot
or(1,s.TintFrame,'BackgroundTransparency',
true)s.ButtonHolder=p('Frame',{
Size=UDim2.new(1,-40,1,-40),Anch
orPoint=Vect
or2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),BackgroundTransparency=1}
,{
p('UIListLayout',{
Padding=UDim.new(0,10),FillDirection=Enum.FillDirection.H
orizontal,H
orizontalAlignment=Enum.H
orizontalAlignment.Center,S
ortOrder=Enum.S
ortOrder.LayoutOrder}
)}
)s.ButtonHolderFrame=p('Frame',{
Size=UDim2.new(1,0,0,70),Position=UDim2.new(0,0,1,-70),ThemeTag={
BackgroundCol
or3='DialogHolder'}
}
,{
p('Frame',{
Size=UDim2.new(1,0,0,1),ThemeTag={
BackgroundCol
or3='DialogHolderLine'}
}
),s.ButtonHolder}
)s.Title=p('TextLabel',{
FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.SemiBold,Enum.FontStyle.N
ormal),Text='Dialog',TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=22,TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,0,22),Position=UDim2.fromOffset(20,25),BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
)s.Scale=p('UIScale',{
Scale=1}
)
local v,w=m.SpringMot
or(1.1,s.Scale,'Scale')s.Root=p('CanvasGroup',{
Size=UDim2.fromOffset(300,165),Anch
orPoint=Vect
or2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),GroupTransparency=1,Parent=s.TintFrame,ThemeTag={
BackgroundCol
or3='Dialog'}
}
,{
p('UIC
orner',{
C
ornerRadius=UDim.new(0,8)}
),p('UIStroke',{
Transparency=0.5,ThemeTag={
Col
or='DialogB
order'}
}
),s.Scale,s.Title,s.ButtonHolderFrame}
)
local x,y=m.SpringMot
or(1,s.Root,'GroupTransparency')function s.Open(z)e(k).DialogOpen=
true s.Scale.Scale=1.1 u(0.75)y(0)w(1)
end function s.Close(z)e(k).DialogOpen=
false u(1)y(1)w(1.1)s.Root.UIStroke:Destroy()task.wait(0.15)s.TintFrame:Destroy()
end function s.Button(z,A,B)s.Buttons=s.Buttons+1 A=A 
or'Button'B=B 
or function()
end 
local C=e(k.Components.Button)('',s.ButtonHolder,
true)C.Title.Text=A f
or D,E in next,s.ButtonHolder:GetChildren()
do 
if
 E:IsA'TextButton'
then E.Size=UDim2.new(1/s.Buttons,-(((s.Buttons-1)*10)/s.Buttons),0,32)
end 
end m.AddSignal(C.Frame.MouseButton1Click,function()e(k):SafeCallback(B)pcall(function()s:Close()
end)
end)
return C 
end 
return s 
end 
return q 
end,[11]=function()
local c,d,e,f,g=b(11)
local h=d.Parent.Parent 
local i,j=e(h.Packages.Flipper),e(h.Creat
or)
local k,l=j.New,i.Spring.new 
return function(m,n,o,p)
local q={
}
q.TitleLabel=k('TextLabel',{
FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.N
ormal),Text=m,TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,0,14),BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
)q.DescLabel=k('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=n,TextCol
or3=Col
or3.fromRGB(200,200,200),TextSize=12,TextWrapped=
true,TextXAlignment=Enum.TextXAlignment.Left,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.new(1,0,0,14),ThemeTag={
TextCol
or3='SubText'}
}
)q.LabelHolder=k('Frame',{
AutomaticSize=Enum.AutomaticSize.Y,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,Position=UDim2.fromOffset(10,0),Size=UDim2.new(1,-28,0,0)}
,{
k('UIListLayout',{
S
ortOrder=Enum.S
ortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center}
),k('UIPadding',{
PaddingBottom=UDim.new(0,13),PaddingTop=UDim.new(0,13)}
),q.TitleLabel,q.DescLabel}
)q.B
order=k('UIStroke',{
Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.B
order,Col
or=Col
or3.fromRGB(0,0,0),ThemeTag={
Col
or='ElementB
order'}
}
)q.Frame=k('TextButton',{
Size=UDim2.new(1,0,0,0),BackgroundTransparency=0.89,BackgroundCol
or3=Col
or3.fromRGB(130,130,130),Parent=o,AutomaticSize=Enum.AutomaticSize.Y,Text='',LayoutOrder=7,ThemeTag={
BackgroundCol
or3='Element',BackgroundTransparency='ElementTransparency'}
}
,{
k('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),q.B
order,q.LabelHolder}
)function q.SetTitle(r,s)q.TitleLabel.Text=s 
end function q.SetDesc(r,s)
if
 s==
nil 
then s=''
end 
if
 s==''
then q.DescLabel.Visible=
false 
else
 q.DescLabel.Visible=
true 
end q.DescLabel.Text=s 
end function q.Destroy(r)q.Frame:Destroy()
end q:SetTitle(m)q:SetDesc(n)
if
 p 
then 
local r,s,t=h.Themes,j.SpringMot
or(j.GetThemeProperty'ElementTransparency',q.Frame,'BackgroundTransparency',
false,
true)j.AddSignal(q.Frame.MouseEnter,function()t(j.GetThemeProperty'ElementTransparency'-j.GetThemeProperty'HoverChange')
end)j.AddSignal(q.Frame.MouseLeave,function()t(j.GetThemeProperty'ElementTransparency')
end)j.AddSignal(q.Frame.MouseButton1Down,function()t(j.GetThemeProperty'ElementTransparency'+j.GetThemeProperty'HoverChange')
end)j.AddSignal(q.Frame.MouseButton1Up,function()t(j.GetThemeProperty'ElementTransparency'-j.GetThemeProperty'HoverChange')
end)
end 
return q 
end 
end,[12]=function()
local c,d,e,f,g=b(12)
local h=d.Parent.Parent 
local i,j,k=e(h.Packages.Flipper),e(h.Creat
or),e(h.Acrylic)
local l,m,n,o=i.Spring.new,i.Instant.new,j.New,{
}
function o.Init(p,q)o.Holder=n('Frame',{
Position=UDim2.new(1,-30,1,-30),Size=UDim2.new(0,310,1,-30),Anch
orPoint=Vect
or2.new(1,1),BackgroundTransparency=1,Parent=q}
,{
n('UIListLayout',{
H
orizontalAlignment=Enum.H
orizontalAlignment.Center,S
ortOrder=Enum.S
ortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Bottom,Padding=UDim.new(0,20)}
)}
)
end function o.New(p,q)q.Title=q.Title 
or'Title'q.Content=q.Content 
or'Content'q.SubContent=q.SubContent 
or''q.Duration=q.Duration 
or 
nil q.Buttons=q.Buttons 
or{
}

local r={
Closed=
false}
r.AcrylicPaint=k.AcrylicPaint()r.Title=n('TextLabel',{
Position=UDim2.new(0,14,0,17),Text=q.Title,RichText=
true,TextCol
or3=Col
or3.fromRGB(255,255,255),TextTransparency=0,FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',TextSize=13,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-12,0,12),TextWrapped=
true,BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
)r.ContentLabel=n('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=q.Content,TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,TextWrapped=
true,ThemeTag={
TextCol
or3='Text'}
}
)r.SubContentLabel=n('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=q.SubContent,TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,AutomaticSize=Enum.AutomaticSize.Y,Size=UDim2.new(1,0,0,14),BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,TextWrapped=
true,ThemeTag={
TextCol
or3='SubText'}
}
)r.LabelHolder=n('Frame',{
AutomaticSize=Enum.AutomaticSize.Y,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,Position=UDim2.fromOffset(14,40),Size=UDim2.new(1,-28,0,0)}
,{
n('UIListLayout',{
S
ortOrder=Enum.S
ortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center,Padding=UDim.new(0,3)}
),r.ContentLabel,r.SubContentLabel}
)r.CloseButton=n('TextButton',{
Text='',Position=UDim2.new(1,-14,0,13),Size=UDim2.fromOffset(20,20),Anch
orPoint=Vect
or2.new(1,0),BackgroundTransparency=1}
,{
n('ImageLabel',{
Image=e(d.Parent.Assets).Close,Size=UDim2.fromOffset(16,16),Position=UDim2.fromScale(0.5,0.5),Anch
orPoint=Vect
or2.new(0.5,0.5),BackgroundTransparency=1,ThemeTag={
ImageCol
or3='Text'}
}
)}
)r.Root=n('Frame',{
BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),Position=UDim2.fromScale(1,0)}
,{
r.AcrylicPaint.Frame,r.Title,r.CloseButton,r.LabelHolder}
)
if
 q.Content==''
then r.ContentLabel.Visible=
false 
end 
if
 q.SubContent==''
then r.SubContentLabel.Visible=
false 
end r.Holder=n('Frame',{
BackgroundTransparency=1,Size=UDim2.new(1,0,0,200),Parent=o.Holder}
,{
r.Root}
)
local s=i.GroupMot
or.new{
Scale=1,Offset=60}
s:onStep(function(t)r.Root.Position=UDim2.new(t.Scale,t.Offset,0,0)
end)j.AddSignal(r.CloseButton.MouseButton1Click,function()r:Close()
end)function r.Open(t)
local u=r.LabelHolder.AbsoluteSize.Y r.Holder.Size=UDim2.new(1,0,0,58+u)s:setGoal{
Scale=l(0,{
frequency=5}
),Offset=l(0,{
frequency=5}
)}

end function r.Close(t)
if
 
not r.Closed 
then r.Closed=
true task.spawn(function()s:setGoal{
Scale=l(1,{
frequency=5}
),Offset=l(60,{
frequency=5}
)}
task.wait(0.4)
if
 e(h).UseAcrylic 
then r.AcrylicPaint.Model:Destroy()
end r.Holder:Destroy()
end)
end 
end r:Open()
if
 q.Duration 
then task.delay(q.Duration,function()r:Close()
end)
end 
return r 
end 
return o 
end,[13]=function()
local c,d,e,f,g=b(13)
local h=d.Parent.Parent 
local i=e(h.Creat
or)
local j=i.New 
return function(k,l)
local m={
}
m.Layout=j('UIListLayout',{
Padding=UDim.new(0,5)}
)m.Container=j('Frame',{
Size=UDim2.new(1,0,0,26),Position=UDim2.fromOffset(0,24),BackgroundTransparency=1}
,{
m.Layout}
)m.Root=j('Frame',{
BackgroundTransparency=1,Size=UDim2.new(1,0,0,26),LayoutOrder=7,Parent=l}
,{
j('TextLabel',{
RichText=
true,Text=k,TextTransparency=0,FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.FontStyle.N
ormal),TextSize=18,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-16,0,18),Position=UDim2.fromOffset(0,2),ThemeTag={
TextCol
or3='Text'}
}
),m.Container}
)i.AddSignal(m.Layout:GetPropertyChangedSignal'AbsoluteContentSize',function()m.Container.Size=UDim2.new(1,0,0,m.Layout.AbsoluteContentSize.Y)m.Root.Size=UDim2.new(1,0,0,m.Layout.AbsoluteContentSize.Y+25)
end)
return m 
end 
end,[14]=function()
local c,d,e,f,g=b(14)
local h=d.Parent.Parent 
local i,j=e(h.Packages.Flipper),e(h.Creat
or)
local k,l,m,n,o=j.New,i.Spring.new,i.Instant.new,h.Components,{
Win
dow=
nil,Tabs={
}
,Containers={
}
,SelectedTab=0,TabCount=0}
function o.Init(p,q)o.Win
dow=q 
return o 
end function o.GetCurrentTabPos(p)
local q,r=o.Win
dow.TabHolder.AbsolutePosition.Y,o.Tabs[o.SelectedTab].Frame.AbsolutePosition.Y 
return r-q 
end function o.New(p,q,r,s)
local t,u=e(h),o.Win
dow 
local v=t.Elements o.TabCount=o.TabCount+1 
local w,x=o.TabCount,{
Selected=
false,Name=q,Type='Tab'}

if
 t:GetIcon(r)
then r=t:GetIcon(r)
end 
if
 r==''
or 
nil 
then r=
nil 
end x.Frame=k('TextButton',{
Size=UDim2.new(1,0,0,34),BackgroundTransparency=1,Parent=s,ThemeTag={
BackgroundCol
or3='Tab'}
}
,{
k('UIC
orner',{
C
ornerRadius=UDim.new(0,6)}
),k('TextLabel',{
Anch
orPoint=Vect
or2.new(0,0.5),Position=r and UDim2.new(0,30,0.5,0)
or UDim2.new(0,12,0.5,0),Text=q,RichText=
true,TextCol
or3=Col
or3.fromRGB(255,255,255),TextTransparency=0,FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.FontStyle.N
ormal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-12,1,0),BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
),k('ImageLabel',{
Anch
orPoint=Vect
or2.new(0,0.5),Size=UDim2.fromOffset(16,16),Position=UDim2.new(0,8,0.5,0),BackgroundTransparency=1,Image=r and r 
or 
nil,ThemeTag={
ImageCol
or3='Text'}
}
)}
)
local y=k('UIListLayout',{
Padding=UDim.new(0,5),S
ortOrder=Enum.S
ortOrder.LayoutOrder}
)x.ContainerFrame=k('ScrollingFrame',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Parent=u.ContainerHolder,Visible=
false,BottomImage='rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage='rbxassetid://6276641225',ScrollBarImageCol
or3=Col
or3.fromRGB(255,255,255),ScrollBarImageTransparency=0.95,ScrollBarThickness=3,B
orderSizePixel=0,CanvasSize=UDim2.fromScale(0,0),ScrollingDirection=Enum.ScrollingDirection.Y}
,{
y,k('UIPadding',{
PaddingRight=UDim.new(0,10),PaddingLeft=UDim.new(0,1),PaddingTop=UDim.new(0,1),PaddingBottom=UDim.new(0,1)}
)}
)j.AddSignal(y:GetPropertyChangedSignal'AbsoluteContentSize',function()x.ContainerFrame.CanvasSize=UDim2.new(0,0,0,y.AbsoluteContentSize.Y+2)
end)x.Mot
or,x.SetTransparency=j.SpringMot
or(1,x.Frame,'BackgroundTransparency')j.AddSignal(x.Frame.MouseEnter,function()x.SetTransparency(x.Selected and 0.85 
or 0.89)
end)j.AddSignal(x.Frame.MouseLeave,function()x.SetTransparency(x.Selected and 0.89 
or 1)
end)j.AddSignal(x.Frame.MouseButton1Down,function()x.SetTransparency(0.92)
end)j.AddSignal(x.Frame.MouseButton1Up,function()x.SetTransparency(x.Selected and 0.85 
or 0.89)
end)j.AddSignal(x.Frame.MouseButton1Click,function()o:SelectTab(w)
end)o.Containers[w]=x.ContainerFrame o.Tabs[w]=x x.Container=x.ContainerFrame x.ScrollFrame=x.Container function x.AddSection(z,A)
local B,C={
Type='Section'}
,e(n.Section)(A,x.Container)B.Container=C.Container B.ScrollFrame=x.Container setmetatable(B,v)
return B 
end setmetatable(x,v)
return x 
end function o.SelectTab(p,q)
local r=o.Win
dow o.SelectedTab=q f
or s,t in next,o.Tabs 
do t.SetTransparency(1)t.Selected=
false 
end o.Tabs[q].SetTransparency(0.89)o.Tabs[q].Selected=
true r.TabDisplay.Text=o.Tabs[q].Name r.Select
orPosMot
or:setGoal(l(o:GetCurrentTabPos(),{
frequency=6}
))task.spawn(function()r.ContainerPosMot
or:setGoal(l(110,{
frequency=10}
))r.ContainerBackMot
or:setGoal(l(1,{
frequency=10}
))task.wait(0.15)f
or u,v in next,o.Containers 
do v.Visible=
false 
end o.Containers[q].Visible=
true r.ContainerPosMot
or:setGoal(l(94,{
frequency=5}
))r.ContainerBackMot
or:setGoal(l(0,{
frequency=8}
))
end)
end 
return o 
end,[15]=function()
local c,d,e,f,g=b(15)
local h,i=game:GetService'TextService',d.Parent.Parent 
local j,k=e(i.Packages.Flipper),e(i.Creat
or)
local l=k.New 
return function(m,n)n=n 
or 
false 
local o={
}
o.Input=l('TextBox',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',TextCol
or3=Col
or3.fromRGB(200,200,200),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Position=UDim2.fromOffset(10,0),ThemeTag={
TextCol
or3='Text',PlaceholderCol
or3='SubText'}
}
)o.Container=l('Frame',{
BackgroundTransparency=1,ClipsDesc
endants=
true,Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,1,0)}
,{
o.Input}
)o.Indicat
or=l('Frame',{
Size=UDim2.new(1,-4,0,1),Position=UDim2.new(0,2,1,0),Anch
orPoint=Vect
or2.new(0,1),BackgroundTransparency=n and 0.5 
or 0,ThemeTag={
BackgroundCol
or3=n and'InputIndicat
or'
or'DialogInputLine'}
}
)o.Frame=l('Frame',{
Size=UDim2.new(0,0,0,30),BackgroundTransparency=n and 0.9 
or 0,Parent=m,ThemeTag={
BackgroundCol
or3=n and'Input'
or'DialogInput'}
}
,{
l('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),l('UIStroke',{
ApplyStrokeMode=Enum.ApplyStrokeMode.B
order,Transparency=n and 0.5 
or 0.65,ThemeTag={
Col
or=n and'InElementB
order'
or'DialogButtonB
order'}
}
),o.Indicat
or,o.Container}
)
local p=function()
local p,q=2,o.Container.AbsoluteSize.X 
if
 
not o.Input:IsFocused()
or o.Input.TextBounds.X<=q-2*p 
then o.Input.Position=UDim2.new(0,p,0,0)
else
 
local r=o.Input.Curs
orPosition 
if
 r~=-1 
then 
local s=string.sub(o.Input.Text,1,r-1)
local t=h:GetTextSize(s,o.Input.TextSize,o.Input.Font,Vect
or2.new(math.huge,math.huge)).X 
local u=o.Input.Position.X.Offset+t 
if
 u<p 
then o.Input.Position=UDim2.fromOffset(p-t,0)
else

if
 u>q-p-1 
then o.Input.Position=UDim2.fromOffset(q-t-p-1,0)
end 
end 
end 
end task.spawn(p)k.AddSignal(o.Input:GetPropertyChangedSignal'Text',p)k.AddSignal(o.Input:GetPropertyChangedSignal'Curs
orPosition',p)k.AddSignal(o.Input.Focused,function()p()o.Indicat
or.Size=UDim2.new(1,-2,0,2)o.Indicat
or.Position=UDim2.new(0,1,1,0)o.Indicat
or.BackgroundTransparency=0 k.OverrideTag(o.Frame,{
BackgroundCol
or3=n and'InputFocused'
or'DialogHolder'}
)k.OverrideTag(o.Indicat
or,{
BackgroundCol
or3='Accent'}
)
end)k.AddSignal(o.Input.FocusLost,function()p()o.Indicat
or.Size=UDim2.new(1,-4,0,1)o.Indicat
or.Position=UDim2.new(0,2,1,0)o.Indicat
or.BackgroundTransparency=0.5 k.OverrideTag(o.Frame,{
BackgroundCol
or3=n and'Input'
or'DialogInput'}
)k.OverrideTag(o.Indicat
or,{
BackgroundCol
or3=n and'InputIndicat
or'
or'DialogInputLine'}
)
end)
return o 
end 
end,[16]=function()
local c,d,e,f,g=b(16)
local h,i=d.Parent.Parent,e(d.Parent.Assets)
local j,k=e(h.Creat
or),e(h.Packages.Flipper)
local l,m=j.New,j.AddSignal 
return function(n)
local o,p,q={
}
,e(h),function(o,p,q,r)
local s={
Callback=r 
or function()
end}
s.Frame=l('TextButton',{
Size=UDim2.new(0,34,1,-8),Anch
orPoint=Vect
or2.new(1,0),BackgroundTransparency=1,Parent=q,Position=p,Text='',ThemeTag={
BackgroundCol
or3='Text'}
}
,{
l('UIC
orner',{
C
ornerRadius=UDim.new(0,7)}
),l('ImageLabel',{
Image=o,Size=UDim2.fromOffset(16,16),Position=UDim2.fromScale(0.5,0.5),Anch
orPoint=Vect
or2.new(0.5,0.5),BackgroundTransparency=1,Name='Icon',ThemeTag={
ImageCol
or3='Text'}
}
)}
)
local t,u=j.SpringMot
or(1,s.Frame,'BackgroundTransparency')m(s.Frame.MouseEnter,function()u(0.94)
end)m(s.Frame.MouseLeave,function()u(1,
true)
end)m(s.Frame.MouseButton1Down,function()u(0.96)
end)m(s.Frame.MouseButton1Up,function()u(0.94)
end)m(s.Frame.MouseButton1Click,s.Callback)s.SetCallback=function(v)s.Callback=v 
end 
return s 
end o.Frame=l('Frame',{
Size=UDim2.new(1,0,0,42),BackgroundTransparency=1,Parent=n.Parent}
,{
l('Frame',{
Size=UDim2.new(1,-16,1,0),Position=UDim2.new(0,16,0,0),BackgroundTransparency=1}
,{
l('UIListLayout',{
Padding=UDim.new(0,5),FillDirection=Enum.FillDirection.H
orizontal,S
ortOrder=Enum.S
ortOrder.LayoutOrder}
),l('TextLabel',{
RichText=
true,Text=n.Title,FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.FontStyle.N
ormal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.fromScale(0,1),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
),l('TextLabel',{
RichText=
true,Text=n.SubTitle,TextTransparency=0.4,FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.FontStyle.N
ormal),TextSize=12,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.fromScale(0,1),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
)}
),l('Frame',{
BackgroundTransparency=0.5,Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,1,0),ThemeTag={
BackgroundCol
or3='TitleBarLine'}
}
)}
)o.CloseButton=q(i.Close,UDim2.new(1,-4,0,4),o.Frame,function()p.Win
dow:Dialog{
Title='Close',Content='Are you sure you want to unload the interface?',Buttons={
{
Title='Yes',Callback=function()p:Destroy()
end}
,{
Title='No'}
}
}

end)o.MaxButton=q(i.Max,UDim2.new(1,-40,0,4),o.Frame,function()n.Win
dow.Maximize(
not n.Win
dow.Maximized)
end)o.MinButton=q(i.Min,UDim2.new(1,-80,0,4),o.Frame,function()p.Win
dow:Minimize()
end)
return o 
end 
end,[17]=function()
local c,d,e,f,g=b(17)
local h,i,j,k=game:GetService'UserInputService',game:GetService'Players'.LocalPlayer:GetMouse(),game:GetService'W
orkspace'.CurrentCamera,d.Parent.Parent 
local l,m,n,o,p=e(k.Packages.Flipper),e(k.Creat
or),e(k.Acrylic),e(d.Parent.Assets),d.Parent 
local q,r,s=l.Spring.new,l.Instant.new,m.New 
return function(t)
local u,v,w,x,y,z=e(k),{
Minimized=
false,Maximized=
false,Size=t.Size,CurrentPos=0,Position=UDim2.fromOffset(j.Viewp
ortSize.X/2-t.Size.X.Offset/2,j.Viewp
ortSize.Y/2-t.Size.Y.Offset/2)}
,
false 
local A,B=
false 
local C=
false v.AcrylicPaint=n.AcrylicPaint()
local D,E=s('Frame',{
Size=UDim2.fromOffset(4,0),BackgroundCol
or3=Col
or3.fromRGB(76,194,255),Position=UDim2.fromOffset(0,17),Anch
orPoint=Vect
or2.new(0,0.5),ThemeTag={
BackgroundCol
or3='Accent'}
}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,2)}
)}
),s('Frame',{
Size=UDim2.fromOffset(20,20),BackgroundTransparency=1,Position=UDim2.new(1,-20,1,-20)}
)v.TabHolder=s('ScrollingFrame',{
Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ScrollBarImageTransparency=1,ScrollBarThickness=0,B
orderSizePixel=0,CanvasSize=UDim2.fromScale(0,0),ScrollingDirection=Enum.ScrollingDirection.Y}
,{
s('UIListLayout',{
Padding=UDim.new(0,4)}
)}
)
local F=s('Frame',{
Size=UDim2.new(0,t.TabWidth,1,-66),Position=UDim2.new(0,12,0,54),BackgroundTransparency=1,ClipsDesc
endants=
true}
,{
v.TabHolder,D}
)v.TabDisplay=s('TextLabel',{
RichText=
true,Text='Tab',TextTransparency=0,FontFace=Font.new('rbxassetid://12187365364',Enum.FontWeight.SemiBold,Enum.FontStyle.N
ormal),TextSize=28,TextXAlignment='Left',TextYAlignment='Center',Size=UDim2.new(1,-16,0,28),Position=UDim2.fromOffset(t.TabWidth+26,56),BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
)v.ContainerHolder=s('CanvasGroup',{
Size=UDim2.new(1,-t.TabWidth-32,1,-102),Position=UDim2.fromOffset(t.TabWidth+26,90),BackgroundTransparency=1}
)v.Root=s('Frame',{
BackgroundTransparency=1,Size=v.Size,Position=v.Position,Parent=t.Parent}
,{
v.AcrylicPaint.Frame,v.TabDisplay,v.ContainerHolder,F,E}
)v.TitleBar=e(d.Parent.TitleBar){
Title=t.Title,SubTitle=t.SubTitle,Parent=v.Root,Win
dow=v}

if
 e(k).UseAcrylic 
then v.AcrylicPaint.AddParent(v.Root)
end 
local G,H=l.GroupMot
or.new{
X=v.Size.X.Offset,Y=v.Size.Y.Offset}
,l.GroupMot
or.new{
X=v.Position.X.Offset,Y=v.Position.Y.Offset}
v.Select
orPosMot
or=l.SingleMot
or.new(17)v.Select
orSizeMot
or=l.SingleMot
or.new(0)v.ContainerBackMot
or=l.SingleMot
or.new(0)v.ContainerPosMot
or=l.SingleMot
or.new(94)G:onStep(function(I)v.Root.Size=UDim2.new(0,I.X,0,I.Y)
end)H:onStep(function(I)v.Root.Position=UDim2.new(0,I.X,0,I.Y)
end)
local I,J=0,0 v.Select
orPosMot
or:onStep(function(K)D.Position=UDim2.new(0,0,0,K+17)
local L=tick()
local M=L-J 
if
 I~=
nil 
then v.Select
orSizeMot
or:setGoal(q((math.abs(K-I)/(M*60))+16))I=K 
end J=L 
end)v.Select
orSizeMot
or:onStep(function(K)D.Size=UDim2.new(0,4,0,K)
end)v.ContainerBackMot
or:onStep(function(K)v.ContainerHolder.GroupTransparency=K 
end)v.ContainerPosMot
or:onStep(function(K)v.ContainerHolder.Position=UDim2.fromOffset(t.TabWidth+26,K)
end)
local K,L v.Maximize=function(M,N,O)v.Maximized=M v.TitleBar.MaxButton.Frame.Icon.Image=M and o.Rest
ore 
or o.Max 
if
 M 
then K=v.Size.X.Offset L=v.Size.Y.Offset 
end 
local P,Q=M and j.Viewp
ortSize.X 
or K,M and j.Viewp
ortSize.Y 
or L G:setGoal{
X=l[O and'Instant'
or'Spring'].new(P,{
frequency=6}
),Y=l[O and'Instant'
or'Spring'].new(Q,{
frequency=6}
)}
v.Size=UDim2.fromOffset(P,Q)
if
 
not N 
then H:setGoal{
X=q(M and 0 
or v.Position.X.Offset,{
frequency=6}
),Y=q(M and 0 
or v.Position.Y.Offset,{
frequency=6}
)}

end 
end m.AddSignal(v.TitleBar.Frame.InputBegan,function(M)
if
 M.UserInputType==Enum.UserInputType.MouseButton1 
or M.UserInputType==Enum.UserInputType.Touch 
then w=
true y=M.Position z=v.Root.Position 
if
 v.Maximized 
then z=UDim2.fromOffset(i.X-(i.X*((K-100)/v.Root.AbsoluteSize.X)),i.Y-(i.Y*(L/v.Root.AbsoluteSize.Y)))
end M.Changed:Connect(function()
if
 M.UserInputState==Enum.UserInputState.End 
then w=
false 
end 
end)
end 
end)m.AddSignal(v.TitleBar.Frame.InputChanged,function(M)
if
 M.UserInputType==Enum.UserInputType.MouseMovement 
or M.UserInputType==Enum.UserInputType.Touch 
then x=M 
end 
end)m.AddSignal(E.InputBegan,function(M)
if
 M.UserInputType==Enum.UserInputType.MouseButton1 
or M.UserInputType==Enum.UserInputType.Touch 
then A=
true B=M.Position 
end 
end)m.AddSignal(h.InputChanged,function(M)
if
 M==x and w 
then 
local N=M.Position-y v.Position=UDim2.fromOffset(z.X.Offset+N.X,z.Y.Offset+N.Y)H:setGoal{
X=r(v.Position.X.Offset),Y=r(v.Position.Y.Offset)}

if
 v.Maximized 
then v.Maximize(
false,
true,
true)
end 
end 
if
(M.UserInputType==Enum.UserInputType.MouseMovement 
or M.UserInputType==Enum.UserInputType.Touch)and A 
then 
local N,O=M.Position-B,v.Size 
local P=Vect
or3.new(O.X.Offset,O.Y.Offset,0)+Vect
or3.new(1,1,0)*N 
local Q=Vect
or2.new(math.clamp(P.X,470,2048),math.clamp(P.Y,380,2048))G:setGoal{
X=l.Instant.new(Q.X),Y=l.Instant.new(Q.Y)}

end 
end)m.AddSignal(h.InputEnded,function(M)
if
 A==
true 
or M.UserInputType==Enum.UserInputType.Touch 
then A=
false v.Size=UDim2.fromOffset(G:getValue().X,G:getValue().Y)
end 
end)m.AddSignal(v.TabHolder.UIListLayout:GetPropertyChangedSignal'AbsoluteContentSize',function()v.TabHolder.CanvasSize=UDim2.new(0,0,0,v.TabHolder.UIListLayout.AbsoluteContentSize.Y)
end)m.AddSignal(h.InputBegan,function(M)
if
 type(u.MinimizeKeybind)=='table'and u.MinimizeKeybind.Type=='Keybind'and 
not h:GetFocusedTextBox()
then 
if
 M.KeyCode.Name==u.MinimizeKeybind.Value 
then v:Minimize()
end 
else

if
 M.KeyCode==u.MinimizeKey and 
not h:GetFocusedTextBox()
then v:Minimize()
end 
end)function v.Minimize(M)v.Minimized=
not v.Minimized v.Root.Visible=
not v.Minimized 
if
 
not C 
then C=
true 
local N=u.MinimizeKeybind and u.MinimizeKeybind.Value 
or u.MinimizeKey.Name u:Not
if
y{
Title='Interface',Content='Press '..N..' to toggle the inteface.',Duration=6}

end 
end function v.Destroy(M)
if
 e(k).UseAcrylic 
then v.AcrylicPaint.Model:Destroy()
end v.Root:Destroy()
end 
local M=e(p.Dialog):Init(v)function v.Dialog(N,O)
local P=M:Create()P.Title.Text=O.Title 
local Q=s('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=O.Content,TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=14,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Size=UDim2.new(1,-40,1,0),Position=UDim2.fromOffset(20,60),BackgroundTransparency=1,Parent=P.Root,ClipsDesc
endants=
false,ThemeTag={
TextCol
or3='Text'}
}
)s('UISizeConstraint',{
MinSize=Vect
or2.new(300,165),MaxSize=Vect
or2.new(620,math.huge),Parent=P.Root}
)P.Root.Size=UDim2.fromOffset(Q.TextBounds.X+40,165)
if
 Q.TextBounds.X+40>v.Size.X.Offset-120 
then P.Root.Size=UDim2.fromOffset(v.Size.X.Offset-120,165)Q.TextWrapped=
true P.Root.Size=UDim2.fromOffset(v.Size.X.Offset-120,Q.TextBounds.Y+150)
end f
or R,S in next,O.Buttons 
do P:Button(S.Title,S.Callback)
end P:Open()
end 
local N=e(p.Tab):Init(v)function v.AddTab(O,P)
return N:New(P.Title,P.Icon,v.TabHolder)
end function v.SelectTab(O,P)N:SelectTab(1)
end m.AddSignal(v.TabHolder:GetPropertyChangedSignal'CanvasPosition',function()I=N:GetCurrentTabPos()+16 J=0 v.Select
orPosMot
or:setGoal(r(N:GetCurrentTabPos()))
end)
return v 
end 
end,[18]=function()
local c,d,e,f,g=b(18)
local h=d.Parent 
local i,j,k=e(h.Themes),e(h.Packages.Flipper),{
Registry={
}
,Signals={
}
,TransparencyMot
ors={
}
,DefaultProperties={
ScreenGui={
ResetOnSpawn=
false,ZIndexBehavi
or=Enum.ZIndexBehavi
or.Sibling}
,Frame={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),B
orderSizePixel=0}
,ScrollingFrame={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),ScrollBarImageCol
or3=Col
or3.new(0,0,0)}
,TextLabel={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),Font=Enum.Font.SourceSans,Text='',TextCol
or3=Col
or3.new(0,0,0),BackgroundTransparency=1,TextSize=14}
,TextButton={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),AutoButtonCol
or=
false,Font=Enum.Font.SourceSans,Text='',TextCol
or3=Col
or3.new(0,0,0),TextSize=14}
,TextBox={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),ClearTextOnFocus=
false,Font=Enum.Font.SourceSans,Text='',TextCol
or3=Col
or3.new(0,0,0),TextSize=14}
,ImageLabel={
BackgroundTransparency=1,BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),B
orderSizePixel=0}
,ImageButton={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),AutoButtonCol
or=
false}
,CanvasGroup={
BackgroundCol
or3=Col
or3.new(1,1,1),B
orderCol
or3=Col
or3.new(0,0,0),B
orderSizePixel=0}
}
}

local l=function(l,m)
if
 m.ThemeTag 
then k.AddThemeObject(l,m.ThemeTag)
end 
end function k.AddSignal(m,n)table.insert(k.Signals,m:Connect(n))
end function k.Disconnect()f
or m=#k.Signals,1,-1 
do 
local n=table.remove(k.Signals,m)n:Disconnect()
end 
end function k.GetThemeProperty(m)
if
 i[e(h).Theme][m]
then 
return i[e(h).Theme][m]
end 
return i.Dark[m]
end function k.UpdateTheme()f
or m,n in next,k.Registry 
do f
or o,p in next,n.Properties 
do m[o]=k.GetThemeProperty(p)
end 
end f
or o,p in next,k.TransparencyMot
ors 
do p:setGoal(j.Instant.new(k.GetThemeProperty'ElementTransparency'))
end 
end function k.AddThemeObject(m,n)
local o=#k.Registry+1 
local p={
Object=m,Properties=n,Idx=o}
k.Registry[m]=p k.UpdateTheme()
return m 
end function k.OverrideTag(m,n)k.Registry[m].Properties=n k.UpdateTheme()
end function k.New(m,n,o)
local p=Instance.new(m)f
or q,r in next,k.DefaultProperties[m]
or{
}

do p[q]=r 
end f
or s,t in next,n 
or{
}

do 
if
 s~='ThemeTag'
then p[s]=t 
end 
end f
or u,v in next,o 
or{
}

do v.Parent=p 
end l(p,n)
return p 
end function k.SpringMot
or(m,n,o,p,s)p=p 
or 
false s=s 
or 
false 
local t=j.SingleMot
or.new(m)t:onStep(function(u)n[o]=u 
end)
if
 s 
then table.insert(k.TransparencyMot
ors,t)
end 
local u=function(u,v)v=v 
or 
false 
if
 
not p 
then 
if
 
not v 
then 
if
 o=='BackgroundTransparency'and e(h).DialogOpen 
then 
return 
end 
end 
end t:setGoal(j.Spring.new(u,{
frequency=8}
))
end 
return t,u 
end 
return k 
end,[19]=function()
local c,d,e,f,g=b(19)
local h={
}
f
or i,j in next,d:GetChildren()
do table.insert(h,e(j))
end 
return h 
end,[20]=function()
local c,d,e,f,g=b(20)
local h=d.Parent.Parent 
local i=e(h.Creat
or)
local j,k,l=i.New,h.Components,{
}
l.__index=l l.__type='Button'function l.New(m,n)assert(n.Title,'Button - Missing Title')n.Callback=n.Callback 
or function()
end 
local o=e(k.Element)(n.Title,n.Description,m.Container,
true)
local p=j('ImageLabel',{
Image='rbxassetid://10709791437',Size=UDim2.fromOffset(16,16),Anch
orPoint=Vect
or2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),BackgroundTransparency=1,Parent=o.Frame,ThemeTag={
ImageCol
or3='Text'}
}
)i.AddSignal(o.Frame.MouseButton1Click,function()m.Library:SafeCallback(n.Callback)
end)
return o 
end 
return l 
end,[21]=function()
local c,d,e,f,g=b(21)
local h,i,j,k=game:GetService'UserInputService',game:GetService'TouchInputService',game:GetService'RunService',game:GetService'Players'
local l,m=j.R
enderStepped,k.LocalPlayer 
local n,o=m:GetMouse(),d.Parent.Parent 
local p=e(o.Creat
or)
local s,t,u=p.New,o.Components,{
}
u.__index=u u.__type='Col
orpicker'function u.New(v,w,x)
local y=v.Library assert(x.Title,'Col
orpicker - Missing Title')assert(x.Default,'AddCol
orPicker: Missing default value.')
local z={
Value=x.Default,Transparency=x.Transparency 
or 0,Type='Col
orpicker',Title=type(x.Title)=='string'and x.Title 
or'Col
orpicker',Callback=x.Callback 
or function(z)
end}
function z.SetHSVFromRGB(A,B)
local C,D,E=Col
or3.toHSV(B)z.Hue=C z.Sat=D z.Vib=E 
end z:SetHSVFromRGB(z.Value)
local A=e(t.Element)(x.Title,x.Description,v.Container,
true)z.SetTitle=A.SetTitle z.SetDesc=A.SetDesc 
local B=s('Frame',{
Size=UDim2.fromScale(1,1),BackgroundCol
or3=z.Value,Parent=A.Frame}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
)}
)
local aa,ab=s('ImageLabel',{
Size=UDim2.fromOffset(26,26),Position=UDim2.new(1,-10,0.5,0),Anch
orPoint=Vect
or2.new(1,0.5),Parent=A.Frame,Image='http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40)}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),B}
),function()
local C=e(t.Dialog):Create()C.Title.Text=z.Title C.Root.Size=UDim2.fromOffset(430,330)
local D,E,F,G,H,I=z.Hue,z.Sat,z.Vib,z.Transparency,function()
local D=e(t.Textbox)()D.Frame.Parent=C.Root D.Frame.Size=UDim2.new(0,90,0,32)
return D 
end,function(D,E)
return s('TextLabel',{
FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Medium,Enum.FontStyle.N
ormal),Text=D,TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,0,0,32),Position=E,BackgroundTransparency=1,Parent=C.Root,ThemeTag={
TextCol
or3='Text'}
}
)
end 
local J,K=function()
local J=Col
or3.fromHSV(D,E,F)
return{
R=math.flo
or(J.r*255),G=math.flo
or(J.g*255),B=math.flo
or(J.b*255)}

end,s('ImageLabel',{
Size=UDim2.new(0,18,0,18),ScaleType=Enum.ScaleType.Fit,Anch
orPoint=Vect
or2.new(0.5,0.5),BackgroundTransparency=1,Image='http://www.roblox.com/asset/?id=4805639000'}
)
local L,M=s('ImageLabel',{
Size=UDim2.fromOffset(180,160),Position=UDim2.fromOffset(20,55),Image='rbxassetid://4155801252',BackgroundCol
or3=z.Value,BackgroundTransparency=0,Parent=C.Root}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),K}
),s('Frame',{
BackgroundCol
or3=z.Value,Size=UDim2.fromScale(1,1),BackgroundTransparency=z.Transparency}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
)}
)
local N,O=s('ImageLabel',{
Image='http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,Position=UDim2.fromOffset(112,220),Size=UDim2.fromOffset(88,24),Parent=C.Root}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),s('UIStroke',{
Thickness=2,Transparency=0.75}
),M}
),s('Frame',{
BackgroundCol
or3=z.Value,Size=UDim2.fromScale(1,1),BackgroundTransparency=0}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
)}
)
local P,Q=s('ImageLabel',{
Image='http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,Position=UDim2.fromOffset(20,220),Size=UDim2.fromOffset(88,24),Parent=C.Root}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(0,4)}
),s('UIStroke',{
Thickness=2,Transparency=0.75}
),O}
),{
}
f
or R=0,1,0.1 
do table.insert(Q,Col
orSequenceKeypoint.new(R,Col
or3.fromHSV(R,1,1)))
end 
local R,S=s('UIGradient',{
Col
or=Col
orSequence.new(Q),Rotation=90}
),s('Frame',{
Size=UDim2.new(1,0,1,-10),Position=UDim2.fromOffset(0,5),BackgroundTransparency=1}
)
local T,U,V=s('ImageLabel',{
Size=UDim2.fromOffset(14,14),Image='http://www.roblox.com/asset/?id=12266946128',Parent=S,ThemeTag={
ImageCol
or3='DialogInput'}
}
),s('Frame',{
Size=UDim2.fromOffset(12,190),Position=UDim2.fromOffset(210,55),Parent=C.Root}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(1,0)}
),R,S}
),H()V.Frame.Position=UDim2.fromOffset(x.Transparency and 260 
or 240,55)I('Hex',UDim2.fromOffset(x.Transparency and 360 
or 340,55))
local W=H()W.Frame.Position=UDim2.fromOffset(x.Transparency and 260 
or 240,95)I('Red',UDim2.fromOffset(x.Transparency and 360 
or 340,95))
local X=H()X.Frame.Position=UDim2.fromOffset(x.Transparency and 260 
or 240,135)I('Green',UDim2.fromOffset(x.Transparency and 360 
or 340,135))
local Y=H()Y.Frame.Position=UDim2.fromOffset(x.Transparency and 260 
or 240,175)I('Blue',UDim2.fromOffset(x.Transparency and 360 
or 340,175))
local Z 
if
 x.Transparency 
then Z=H()Z.Frame.Position=UDim2.fromOffset(260,215)I('Alpha',UDim2.fromOffset(360,215))
end 
local _,aa,ab 
if
 x.Transparency 
then 
local ac=s('Frame',{
Size=UDim2.new(1,0,1,-10),Position=UDim2.fromOffset(0,5),BackgroundTransparency=1}
)aa=s('ImageLabel',{
Size=UDim2.fromOffset(14,14),Image='http://www.roblox.com/asset/?id=12266946128',Parent=ac,ThemeTag={
ImageCol
or3='DialogInput'}
}
)ab=s('Frame',{
Size=UDim2.fromScale(1,1)}
,{
s('UIGradient',{
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}
,Rotation=270}
),s('UIC
orner',{
C
ornerRadius=UDim.new(1,0)}
)}
)_=s('Frame',{
Size=UDim2.fromOffset(12,190),Position=UDim2.fromOffset(230,55),Parent=C.Root,BackgroundTransparency=1}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(1,0)}
),s('ImageLabel',{
Image='http://www.roblox.com/asset/?id=14204231522',ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40,40),BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Parent=C.Root}
,{
s('UIC
orner',{
C
ornerRadius=UDim.new(1,0)}
)}
),ab,ac}
)
end 
local ac=function()L.BackgroundCol
or3=Col
or3.fromHSV(D,1,1)T.Position=UDim2.new(0,-1,D,-6)K.Position=UDim2.new(E,0,1-F,0)O.BackgroundCol
or3=Col
or3.fromHSV(D,E,F)V.Input.Text='#'..Col
or3.fromHSV(D,E,F):ToHex()W.Input.Text=J().R X.Input.Text=J().G Y.Input.Text=J().B 
if
 x.Transparency 
then ab.BackgroundCol
or3=Col
or3.fromHSV(D,E,F)O.BackgroundTransparency=G aa.Position=UDim2.new(0,-1,1-G,-6)Z.Input.Text=e(o):Round((1-G)*100,0)..'%'
end 
end p.AddSignal(V.Input.FocusLost,function(ad)
if
 ad 
then 
local ae,af=pcall(Col
or3.fromHex,V.Input.Text)
if
 ae and typeof(af)=='Col
or3'
then D,E,F=Col
or3.toHSV(af)
end 
end ac()
end)p.AddSignal(W.Input.FocusLost,function(ad)
if
 ad 
then 
local ae=J()
local af,ag=pcall(Col
or3.fromRGB,W.Input.Text,ae.G,ae.B)
if
 af and typeof(ag)=='Col
or3'
then 
if
 tonumber(W.Input.Text)<=255 
then D,E,F=Col
or3.toHSV(ag)
end 
end 
end ac()
end)p.AddSignal(X.Input.FocusLost,function(ad)
if
 ad 
then 
local ae=J()
local af,ag=pcall(Col
or3.fromRGB,ae.R,X.Input.Text,ae.B)
if
 af and typeof(ag)=='Col
or3'
then 
if
 tonumber(X.Input.Text)<=255 
then D,E,F=Col
or3.toHSV(ag)
end 
end 
end ac()
end)p.AddSignal(Y.Input.FocusLost,function(ad)
if
 ad 
then 
local ae=J()
local af,ag=pcall(Col
or3.fromRGB,ae.R,ae.G,Y.Input.Text)
if
 af and typeof(ag)=='Col
or3'
then 
if
 tonumber(Y.Input.Text)<=255 
then D,E,F=Col
or3.toHSV(ag)
end 
end 
end ac()
end)
if
 x.Transparency 
then p.AddSignal(Z.Input.FocusLost,function(ad)
if
 ad 
then pcall(function()
local ae=tonumber(Z.Input.Text)
if
 ae>=0 and ae<=100 
then G=1-ae*0.01 
end 
end)
end ac()
end)
end p.AddSignal(L.InputBegan,function(ad)
if
 ad.UserInputType==Enum.UserInputType.MouseButton1 
or ad.UserInputType==Enum.UserInputType.Touch 
then 
while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
do 
local ae=L.AbsolutePosition.X 
local af=ae+L.AbsoluteSize.X 
local ag,ah=math.clamp(n.X,ae,af),L.AbsolutePosition.Y 
local ai=ah+L.AbsoluteSize.Y 
local aj=math.clamp(n.Y,ah,ai)E=(ag-ae)/(af-ae)F=1-((aj-ah)/(ai-ah))ac()l:Wait()
end 
end 
end)p.AddSignal(U.InputBegan,function(ad)
if
 ad.UserInputType==Enum.UserInputType.MouseButton1 
or ad.UserInputType==Enum.UserInputType.Touch 
then 
while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
do 
local ae=U.AbsolutePosition.Y 
local af=ae+U.AbsoluteSize.Y 
local ag=math.clamp(n.Y,ae,af)D=((ag-ae)/(af-ae))ac()l:Wait()
end 
end 
end)
if
 x.Transparency 
then p.AddSignal(_.InputBegan,function(ad)
if
 ad.UserInputType==Enum.UserInputType.MouseButton1 
then 
while h:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
do 
local ae=_.AbsolutePosition.Y 
local af=ae+_.AbsoluteSize.Y 
local ag=math.clamp(n.Y,ae,af)G=1-((ag-ae)/(af-ae))ac()l:Wait()
end 
end 
end)
end ac()C:Button('Done',function()z:SetValue({
D,E,F}
,G)
end)C:Button'Cancel'C:Open()
end function z.Display(ac)z.Value=Col
or3.fromHSV(z.Hue,z.Sat,z.Vib)B.BackgroundCol
or3=z.Value B.BackgroundTransparency=z.Transparency u.Library:SafeCallback(z.Callback,z.Value)u.Library:SafeCallback(z.Changed,z.Value)
end function z.SetValue(ac,ad,ae)
local af=Col
or3.fromHSV(ad[1],ad[2],ad[3])z.Transparency=ae 
or 0 z:SetHSVFromRGB(af)z:Display()
end function z.SetValueRGB(ac,ad,ae)z.Transparency=ae 
or 0 z:SetHSVFromRGB(ad)z:Display()
end function z.OnChanged(ac,ad)z.Changed=ad ad(z.Value)
end function z.Destroy(ac)A:Destroy()y.Options[w]=
nil 
end p.AddSignal(A.Frame.MouseButton1Click,function()ab()
end)z:Display()y.Options[w]=z 
return z 
end 
return u 
end,[22]=function()
local aa,ab,ac,ad,ae=b(22)
local af,ag,ah,ai,aj=game:GetService'TweenService',game:GetService'UserInputService',game:GetService'Players'.LocalPlayer:GetMouse(),game:GetService'W
orkspace'.CurrentCamera,ab.Parent.Parent 
local c,d=ac(aj.Creat
or),ac(aj.Packages.Flipper)
local e,f,g=c.New,aj.Components,{
}
g.__index=g g.__type='Drop
down'function g.New(h,i,j)
local k,l,m=h.Library,{
Values=j.Values,Value=j.Default,Multi=j.Multi,Buttons={
}
,Opened=
false,Type='Drop
down',Callback=j.Callback 
or function()
end}
,ac(f.Element)(j.Title,j.Description,h.Container,
false)m.DescLabel.Size=UDim2.new(1,-170,0,14)l.SetTitle=m.SetTitle l.SetDesc=m.SetDesc 
local n,o=e('TextLabel',{
FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.FontStyle.N
ormal),Text='Value',TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,Size=UDim2.new(1,-30,0,14),Position=UDim2.new(0,8,0.5,0),Anch
orPoint=Vect
or2.new(0,0.5),BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,TextTruncate=Enum.TextTruncate.AtEnd,ThemeTag={
TextCol
or3='Text'}
}
),e('ImageLabel',{
Image='rbxassetid://10709790948',Size=UDim2.fromOffset(16,16),Anch
orPoint=Vect
or2.new(1,0.5),Position=UDim2.new(1,-8,0.5,0),BackgroundTransparency=1,ThemeTag={
ImageCol
or3='SubText'}
}
)
local p,s=e('TextButton',{
Size=UDim2.fromOffset(160,30),Position=UDim2.new(1,-10,0.5,0),Anch
orPoint=Vect
or2.new(1,0.5),BackgroundTransparency=0.9,Parent=m.Frame,ThemeTag={
BackgroundCol
or3='Drop
downFrame'}
}
,{
e('UIC
orner',{
C
ornerRadius=UDim.new(0,5)}
),e('UIStroke',{
Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.B
order,ThemeTag={
Col
or='InElementB
order'}
}
),o,n}
),e('UIListLayout',{
Padding=UDim.new(0,3)}
)
local t=e('ScrollingFrame',{
Size=UDim2.new(1,-5,1,-10),Position=UDim2.fromOffset(5,5),BackgroundTransparency=1,BottomImage='rbxassetid://6889812791',MidImage='rbxassetid://6889812721',TopImage='rbxassetid://6276641225',ScrollBarImageCol
or3=Col
or3.fromRGB(255,255,255),ScrollBarImageTransparency=0.95,ScrollBarThickness=4,B
orderSizePixel=0,CanvasSize=UDim2.fromScale(0,0)}
,{
s}
)
local u=e('Frame',{
Size=UDim2.fromScale(1,0.6),ThemeTag={
BackgroundCol
or3='Drop
downHolder'}
}
,{
t,e('UIC
orner',{
C
ornerRadius=UDim.new(0,7)}
),e('UIStroke',{
ApplyStrokeMode=Enum.ApplyStrokeMode.B
order,ThemeTag={
Col
or='Drop
downB
order'}
}
),e('ImageLabel',{
BackgroundTransparency=1,Image='http://www.roblox.com/asset/?id=5554236805',ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(23,23,277,277),Size=UDim2.fromScale(1,1)+UDim2.fromOffset(30,30),Position=UDim2.fromOffset(-15,-15),ImageCol
or3=Col
or3.fromRGB(0,0,0),ImageTransparency=0.1}
)}
)
local v=e('Frame',{
BackgroundTransparency=1,Size=UDim2.fromOffset(170,300),Parent=h.Library.GUI,Visible=
false}
,{
u,e('UISizeConstraint',{
MinSize=Vect
or2.new(170,0)}
)}
)table.insert(k.OpenFrames,v)
local w,x=function()
local w=0 
if
 ai.Viewp
ortSize.Y-p.AbsolutePosition.Y<v.AbsoluteSize.Y-5 
then w=v.AbsoluteSize.Y-5-(ai.Viewp
ortSize.Y-p.AbsolutePosition.Y)+40 
end v.Position=UDim2.fromOffset(p.AbsolutePosition.X-1,p.AbsolutePosition.Y-5-w)
end,0 
local y,z=function()
if
#l.Values>10 
then v.Size=UDim2.fromOffset(x,392)
else
 v.Size=UDim2.fromOffset(x,s.AbsoluteContentSize.Y+10)
end 
end,function()t.CanvasSize=UDim2.fromOffset(0,s.AbsoluteContentSize.Y)
end w()y()c.AddSignal(p:GetPropertyChangedSignal'AbsolutePosition',w)c.AddSignal(p.MouseButton1Click,function()l:Open()
end)c.AddSignal(ag.InputBegan,function(A)
if
 A.UserInputType==Enum.UserInputType.MouseButton1 
or A.UserInputType==Enum.UserInputType.Touch 
then 
local B,C=u.AbsolutePosition,u.AbsoluteSize 
if
 ah.X<B.X 
or ah.X>B.X+C.X 
or ah.Y<(B.Y-20-1)
or ah.Y>B.Y+C.Y 
then l:Close()
end 
end 
end)
local A=h.ScrollFrame function l.Open(B)l.Opened=
true A.ScrollingEnabled=
false v.Visible=
true af:Create(u,TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{
Size=UDim2.fromScale(1,1)}
):Play()
end function l.Close(B)l.Opened=
false A.ScrollingEnabled=
true u.Size=UDim2.fromScale(1,0.6)v.Visible=
false 
end function l.Display(B)
local C,D=l.Values,''
if
 j.Multi 
then f
or E,F in next,C 
do 
if
 l.Value[F]
then D=D..F..', '
end 
end D=D:sub(1,#D-2)
else
 D=l.Value 
or''
end n.Text=(D==''and'--'
or D)
end function l.GetActiveValues(B)
if
 j.Multi 
then 
local C={
}
f
or D,E in next,l.Value 
do table.insert(C,D)
end 
return C 
else
 
return l.Value and 1 
or 0 
end 
end function l.BuildDrop
downList(B)
local C,D=l.Values,{
}
f
or E,F in next,t:GetChildren()
do 
if
 
not F:IsA'UIListLayout'
then F:Destroy()
end 
end 
local G=0 f
or H,I in next,C 
do 
local J={
}
G=G+1 
local K,L=e('Frame',{
Size=UDim2.fromOffset(4,14),BackgroundCol
or3=Col
or3.fromRGB(76,194,255),Position=UDim2.fromOffset(-1,16),Anch
orPoint=Vect
or2.new(0,0.5),ThemeTag={
BackgroundCol
or3='Accent'}
}
,{
e('UIC
orner',{
C
ornerRadius=UDim.new(0,2)}
)}
),e('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text=I,TextCol
or3=Col
or3.fromRGB(200,200,200),TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1,Size=UDim2.fromScale(1,1),Position=UDim2.fromOffset(10,0),Name='ButtonLabel',ThemeTag={
TextCol
or3='Text'}
}
)
local M,N=(e('TextButton',{
Size=UDim2.new(1,-5,0,32),BackgroundTransparency=1,ZIndex=23,Text='',Parent=t,ThemeTag={
BackgroundCol
or3='Drop
downOption'}
}
,{
K,L,e('UIC
orner',{
C
ornerRadius=UDim.new(0,6)}
)}
))
if
 j.Multi 
then N=l.Value[I]
else
 N=l.Value==I 
end 
local O,P=c.SpringMot
or(1,M,'BackgroundTransparency')
local Q,R=c.SpringMot
or(1,K,'BackgroundTransparency')
local S=d.SingleMot
or.new(6)S:onStep(function(T)K.Size=UDim2.new(0,4,0,T)
end)c.AddSignal(M.MouseEnter,function()P(N and 0.85 
or 0.89)
end)c.AddSignal(M.MouseLeave,function()P(N and 0.89 
or 1)
end)c.AddSignal(M.MouseButton1Down,function()P(0.92)
end)c.AddSignal(M.MouseButton1Up,function()P(N and 0.85 
or 0.89)
end)function J.UpdateButton(T)
if
 j.Multi 
then N=l.Value[I]
if
 N 
then P(0.89)
end 
else
 N=l.Value==I P(N and 0.89 
or 1)
end S:setGoal(d.Spring.new(N and 14 
or 6,{
frequency=6}
))R(N and 0 
or 1)
end L.InputBegan:Connect(function(T)
if
 T.UserInputType==Enum.UserInputType.MouseButton1 
or T.UserInputType==Enum.UserInputType.Touch 
then 
local U=
not N 
if
 l:GetActiveValues()==1 and 
not U and 
not j.AllowNull 
then 
else
 
if
 j.Multi 
then N=U l.Value[I]=N and 
true 
or 
nil 
else
 N=U l.Value=N and I 
or 
nil f
or V,W in next,D 
do W:UpdateButton()
end 
end J:UpdateButton()l:Display()k:SafeCallback(l.Callback,l.Value)k:SafeCallback(l.Changed,l.Value)
end 
end 
end)J:UpdateButton()l:Display()D[M]=J 
end x=0 f
or J,K in next,D 
do 
if
 J.ButtonLabel 
then 
if
 J.ButtonLabel.TextBounds.X>x 
then x=J.ButtonLabel.TextBounds.X 
end 
end 
end x=x+30 z()y()
end function l.SetValues(B,C)
if
 C 
then l.Values=C 
end l:BuildDrop
downList()
end function l.OnChanged(B,C)l.Changed=C C(l.Value)
end function l.SetValue(B,C)
if
 l.Multi 
then 
local D={
}
f
or E,F in next,C 
do 
if
 table.find(l.Values,E)
then D[E]=
true 
end 
end l.Value=D 
else
 
if
 
not C 
then l.Value=
nil 
else

if
 table.find(l.Values,C)
then l.Value=C 
end 
end l:BuildDrop
downList()k:SafeCallback(l.Callback,l.Value)k:SafeCallback(l.Changed,l.Value)
end function l.Destroy(B)m:Destroy()k.Options[i]=
nil 
end l:BuildDrop
downList()l:Display()
local B={
}

if
 type(j.Default)=='string'
then 
local C=table.find(l.Values,j.Default)
if
 C 
then table.insert(B,C)
end 
else

if
 type(j.Default)=='table'
then f
or C,D in next,j.Default 
do 
local E=table.find(l.Values,D)
if
 E 
then table.insert(B,E)
end 
end 
else

if
 type(j.Default)=='number'and l.Values[j.Default]~=
nil 
then table.insert(B,j.Default)
end 
if
 next(B)
then f
or C=1,#B 
do 
local D=B[C]
if
 j.Multi 
then l.Value[l.Values[D]]=
true 
else
 l.Value=l.Values[D]
end 
if
 
not j.Multi 
then 
break 
end 
end l:BuildDrop
downList()l:Display()
end k.Options[i]=l 
return l 
end 
return g 
end,[23]=function()
local aa,ab,ac,ad,ae=b(23)
local af=ab.Parent.Parent 
local ag=ac(af.Creat
or)
local ah,ai,aj,c=ag.New,ag.AddSignal,af.Components,{
}
c.__index=c c.__type='Input'function c.New(d,e,f)
local g=d.Library assert(f.Title,'Input - Missing Title')f.Callback=f.Callback 
or function()
end 
local h,i={
Value=f.Default 
or'',Numeric=f.Numeric 
or 
false,Finished=f.Finished 
or 
false,Callback=f.Callback 
or function(h)
end,Type='Input'}
,ac(aj.Element)(f.Title,f.Description,d.Container,
false)h.SetTitle=i.SetTitle h.SetDesc=i.SetDesc 
local j=ac(aj.Textbox)(i.Frame,
true)j.Frame.Position=UDim2.new(1,-10,0.5,0)j.Frame.Anch
orPoint=Vect
or2.new(1,0.5)j.Frame.Size=UDim2.fromOffset(160,30)j.Input.Text=f.Default 
or''j.Input.PlaceholderText=f.Placeholder 
or''
local k=j.Input function h.SetValue(l,m)
if
 f.MaxLength and#m>f.MaxLength 
then m=m:sub(1,f.MaxLength)
end 
if
 h.Numeric 
then 
if
(
not tonumber(m))and m:len()>0 
then m=h.Value 
end 
end h.Value=m k.Text=m g:SafeCallback(h.Callback,h.Value)g:SafeCallback(h.Changed,h.Value)
end 
if
 h.Finished 
then ai(k.FocusLost,function(l)
if
 
not l 
then 
return 
end h:SetValue(k.Text)
end)
else
 ai(k:GetPropertyChangedSignal'Text',function()h:SetValue(k.Text)
end)
end function h.OnChanged(l,m)h.Changed=m m(h.Value)
end function h.Destroy(l)i:Destroy()g.Options[e]=
nil 
end g.Options[e]=h 
return h 
end 
return c 
end,[24]=function()
local aa,ab,ac,ad,ae=b(24)
local af,ag=game:GetService'UserInputService',ab.Parent.Parent 
local ah=ac(ag.Creat
or)
local ai,aj,c=ah.New,ag.Components,{
}
c.__index=c c.__type='Keybind'function c.New(d,e,f)
local g=d.Library assert(f.Title,'KeyBind - Missing Title')assert(f.Default,'KeyBind - Missing default value.')
local h,i,j={
Value=f.Default,Toggled=
false,Mode=f.Mode 
or'Toggle',Type='Keybind',Callback=f.Callback 
or function(h)
end,ChangedCallback=f.ChangedCallback 
or function(h)
end}
,
false,ac(aj.Element)(f.Title,f.Description,d.Container,
true)h.SetTitle=j.SetTitle h.SetDesc=j.SetDesc 
local k=ai('TextLabel',{
FontFace=Font.new('rbxasset://fonts/families/GothamSSm.json',Enum.FontWeight.Regular,Enum.FontStyle.N
ormal),Text=f.Default,TextCol
or3=Col
or3.fromRGB(240,240,240),TextSize=13,TextXAlignment=Enum.TextXAlignment.Center,Size=UDim2.new(0,0,0,14),Position=UDim2.new(0,0,0.5,0),Anch
orPoint=Vect
or2.new(0,0.5),BackgroundCol
or3=Col
or3.fromRGB(255,255,255),AutomaticSize=Enum.AutomaticSize.X,BackgroundTransparency=1,ThemeTag={
TextCol
or3='Text'}
}
)
local l=ai('TextButton',{
Size=UDim2.fromOffset(0,30),Position=UDim2.new(1,-10,0.5,0),Anch
orPoint=Vect
or2.new(1,0.5),BackgroundTransparency=0.9,Parent=j.Frame,AutomaticSize=Enum.AutomaticSize.X,ThemeTag={
BackgroundCol
or3='Keybind'}
}
,{
ai('UIC
orner',{
C
ornerRadius=UDim.new(0,5)}
),ai('UIPadding',{
PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8)}
),ai('UIStroke',{
Transparency=0.5,ApplyStrokeMode=Enum.ApplyStrokeMode.B
order,ThemeTag={
Col
or='InElementB
order'}
}
),k}
)function h.GetState(m)
if
 af:GetFocusedTextBox()and h.Mode~='Always'
then 
return 
false 
end 
if
 h.Mode=='Always'
then 
return 
true 
else

if
 h.Mode=='Hold'
then 
if
 h.Value=='None'
then 
return 
false 
end 
local n=h.Value 
if
 n=='MouseLeft'
or n=='MouseRight'
then 
return n=='MouseLeft'and af:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
or n=='MouseRight'and af:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
else
 
return af:IsKeyDown(Enum.KeyCode[h.Value])
end 
else
 
return h.Toggled 
end 
end function h.SetValue(m,n,o)n=n 
or h.Key o=o 
or h.Mode k.Text=n h.Value=n h.Mode=o 
end function h.OnClick(m,n)h.Clicked=n 
end function h.OnChanged(m,n)h.Changed=n n(h.Value)
end function h.DoClick(m)g:SafeCallback(h.Callback,h.Toggled)g:SafeCallback(h.Clicked,h.Toggled)
end function h.Destroy(m)j:Destroy()g.Options[e]=
nil 
end ah.AddSignal(l.InputBegan,function(m)
if
 m.UserInputType==Enum.UserInputType.MouseButton1 
or m.UserInputType==Enum.UserInputType.Touch 
then i=
true k.Text='...'wait(0.2)
local n n=af.InputBegan:Connect(function(o)
local p 
if
 o.UserInputType==Enum.UserInputType.Keyboard 
then p=o.KeyCode.Name 
else

if
 o.UserInputType==Enum.UserInputType.MouseButton1 
then p='MouseLeft'
else

if
 o.UserInputType==Enum.UserInputType.MouseButton2 
then p='MouseRight'
end 
local s s=af.InputEnded:Connect(function(t)
if
 t.KeyCode.Name==p 
or p=='MouseLeft'and t.UserInputType==Enum.UserInputType.MouseButton1 
or p=='MouseRight'and t.UserInputType==Enum.UserInputType.MouseButton2 
then i=
false k.Text=p h.Value=p g:SafeCallback(h.ChangedCallback,t.KeyCode 
or t.UserInputType)g:SafeCallback(h.Changed,t.KeyCode 
or t.UserInputType)n:Disconnect()s:Disconnect()
end 
end)
end)
end 
end)ah.AddSignal(af.InputBegan,function(m)
if
 
not i and 
not af:GetFocusedTextBox()
then 
if
 h.Mode=='Toggle'
then 
local n=h.Value 
if
 n=='MouseLeft'
or n=='MouseRight'
then 
if
 n=='MouseLeft'and m.UserInputType==Enum.UserInputType.MouseButton1 
or n=='MouseRight'and m.UserInputType==Enum.UserInputType.MouseButton2 
then h.Toggled=
not h.Toggled h:DoClick()
end 
else

if
 m.UserInputType==Enum.UserInputType.Keyboard 
then 
if
 m.KeyCode.Name==n 
then h.Toggled=
not h.Toggled h:DoClick()
end 
end 
end 
end 
end)g.Options[e]=h 
return h 
end 
return c 
end,[25]=function()
local aa,ab,ac,ad,ae=b(25)
local af=ab.Parent.Parent 
local ag,ah,ai,aj=af.Components,ac(af.Packages.Flipper),ac(af.Creat
or),{
}
aj.__index=aj aj.__type='Paragraph'function aj.New(c,d)assert(d.Title,'Paragraph - Missing Title')d.Content=d.Content 
or''
local e=ac(ag.Element)(d.Title,d.Content,aj.Container,
false)e.Frame.BackgroundTransparency=0.92 e.B
order.Transparency=0.6 
return e 
end 
return aj 
end,[26]=function()
local aa,ab,ac,ad,ae=b(26)
local af,ag=game:GetService'UserInputService',ab.Parent.Parent 
local ah=ac(ag.Creat
or)
local ai,aj,c=ah.New,ag.Components,{
}
c.__index=c c.__type='Slider'function c.New(d,e,f)
local g=d.Library assert(f.Title,'Slider - Missing Title.')assert(f.Default,'Slider - Missing default value.')assert(f.Min,'Slider - Missing minimum value.')assert(f.Max,'Slider - Missing maximum value.')assert(f.Rounding,'Slider - Missing rounding value.')
local h,i,j={
Value=
nil,Min=f.Min,Max=f.Max,Rounding=f.Rounding,Callback=f.Callback 
or function(h)
end,Type='Slider'}
,
false,ac(aj.Element)(f.Title,f.Description,d.Container,
false)j.DescLabel.Size=UDim2.new(1,-170,0,14)h.SetTitle=j.SetTitle h.SetDesc=j.SetDesc 
local k=ai('ImageLabel',{
Anch
orPoint=Vect
or2.new(0,0.5),Position=UDim2.new(0,-7,0.5,0),Size=UDim2.fromOffset(14,14),Image='http://www.roblox.com/asset/?id=12266946128',ThemeTag={
ImageCol
or3='Accent'}
}
)
local l,m,n=ai('Frame',{
BackgroundTransparency=1,Position=UDim2.fromOffset(7,0),Size=UDim2.new(1,-14,1,0)}
,{
k}
),ai('Frame',{
Size=UDim2.new(0,0,1,0),ThemeTag={
BackgroundCol
or3='Accent'}
}
,{
ai('UIC
orner',{
C
ornerRadius=UDim.new(1,0)}
)}
),ai('TextLabel',{
FontFace=Font.new'rbxasset://fonts/families/GothamSSm.json',Text='Value',TextSize=12,TextWrapped=
true,TextXAlignment=Enum.TextXAlignment.Right,BackgroundCol
or3=Col
or3.fromRGB(255,255,255),BackgroundTransparency=1,Size=UDim2.new(0,100,0,14),Position=UDim2.new(0,-4,0.5,0),Anch
orPoint=Vect
or2.new(1,0.5),ThemeTag={
TextCol
or3='SubText'}
}
)
local o=ai('Frame',{
Size=UDim2.new(1,0,0,4),Anch
orPoint=Vect
or2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),BackgroundTransparency=0.4,Parent=j.Frame,ThemeTag={
BackgroundCol
or3='SliderRail'}
}
,{
ai('UIC
orner',{
C
ornerRadius=UDim.new(1,0)}
),ai('UISizeConstraint',{
MaxSize=Vect
or2.new(150,math.huge)}
),n,m,l}
)ah.AddSignal(k.InputBegan,function(p)
if
 p.UserInputType==Enum.UserInputType.MouseButton1 
or p.UserInputType==Enum.UserInputType.Touch 
then i=
true 
end 
end)ah.AddSignal(k.InputEnded,function(p)
if
 p.UserInputType==Enum.UserInputType.MouseButton1 
or p.UserInputType==Enum.UserInputType.Touch 
then i=
false 
end 
end)ah.AddSignal(af.InputChanged,function(p)
if
 i and(p.UserInputType==Enum.UserInputType.MouseMovement 
or p.UserInputType==Enum.UserInputType.Touch)
then 
local s=math.clamp((p.Position.X-l.AbsolutePosition.X)/l.AbsoluteSize.X,0,1)h:SetValue(h.Min+((h.Max-h.Min)*s))
end 
end)function h.OnChanged(p,s)h.Changed=s s(h.Value)
end function h.SetValue(p,s)p.Value=g:Round(math.clamp(s,h.Min,h.Max),h.Rounding)k.Position=UDim2.new((p.Value-h.Min)/(h.Max-h.Min),-7,0.5,0)m.Size=UDim2.fromScale((p.Value-h.Min)/(h.Max-h.Min),1)n.Text=tostring(p.Value)g:SafeCallback(h.Callback,p.Value)g:SafeCallback(h.Changed,p.Value)
end function h.Destroy(p)j:Destroy()g.Options[e]=
nil 
end h:SetValue(f.Default)g.Options[e]=h 
return h 
end 
return c 
end,[27]=function()
local aa,ab,ac,ad,ae=b(27)
local af,ag=game:GetService'TweenService',ab.Parent.Parent 
local ah=ac(ag.Creat
or)
local ai,aj,c=ah.New,ag.Components,{
}
c.__index=c c.__type='Toggle'function c.New(d,e,f)
local g=d.Library assert(f.Title,'Toggle - Missing Title')
local h,i={
Value=f.Default 
or 
false,Callback=f.Callback 
or function(h)
end,Type='Toggle'}
,ac(aj.Element)(f.Title,f.Description,d.Container,
true)i.DescLabel.Size=UDim2.new(1,-54,0,14)h.SetTitle=i.SetTitle h.SetDesc=i.SetDesc 
local j,k=ai('ImageLabel',{
Anch
orPoint=Vect
or2.new(0,0.5),Size=UDim2.fromOffset(14,14),Position=UDim2.new(0,2,0.5,0),Image='http://www.roblox.com/asset/?id=12266946128',ImageTransparency=0.5,ThemeTag={
ImageCol
or3='ToggleSlider'}
}
),ai('UIStroke',{
Transparency=0.5,ThemeTag={
Col
or='ToggleSlider'}
}
)
local l=ai('Frame',{
Size=UDim2.fromOffset(36,18),Anch
orPoint=Vect
or2.new(1,0.5),Position=UDim2.new(1,-10,0.5,0),Parent=i.Frame,BackgroundTransparency=1,ThemeTag={
BackgroundCol
or3='Accent'}
}
,{
ai('UIC
orner',{
C
ornerRadius=UDim.new(0,9)}
),k,j}
)function h.OnChanged(m,n)h.Changed=n n(h.Value)
end function h.SetValue(m,n)n=
not 
not n h.Value=n ah.OverrideTag(k,{
Col
or=h.Value and'Accent'
or'ToggleSlider'}
)ah.OverrideTag(j,{
ImageCol
or3=h.Value and'ToggleToggled'
or'ToggleSlider'}
)af:Create(j,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
Position=UDim2.new(0,h.Value and 19 
or 2,0.5,0)}
):Play()af:Create(l,TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
BackgroundTransparency=h.Value and 0 
or 1}
):Play()j.ImageTransparency=h.Value and 0 
or 0.5 g:SafeCallback(h.Callback,h.Value)g:SafeCallback(h.Changed,h.Value)
end function h.Destroy(m)i:Destroy()g.Options[e]=
nil 
end ah.AddSignal(i.Frame.MouseButton1Click,function()h:SetValue(
not h.Value)
end)h:SetValue(h.Value)g.Options[e]=h 
return h 
end 
return c 
end,[28]=function()
local aa,ab,ac,ad,ae=b(28)
return{
assets={
['lucide-accessibility']='rbxassetid://10709751939',['lucide-activity']='rbxassetid://10709752035',['lucide-air-vent']='rbxassetid://10709752131',['lucide-airplay']='rbxassetid://10709752254',['lucide-alarm-check']='rbxassetid://10709752405',['lucide-alarm-clock']='rbxassetid://10709752630',['lucide-alarm-clock-off']='rbxassetid://10709752508',['lucide-alarm-minus']='rbxassetid://10709752732',['lucide-alarm-plus']='rbxassetid://10709752825',['lucide-album']='rbxassetid://10709752906',['lucide-alert-circle']='rbxassetid://10709752996',['lucide-alert-octagon']='rbxassetid://10709753064',['lucide-alert-triangle']='rbxassetid://10709753149',['lucide-align-center']='rbxassetid://10709753570',['lucide-align-center-h
orizontal']='rbxassetid://10709753272',['lucide-align-center-vertical']='rbxassetid://10709753421',['lucide-align-
end-h
orizontal']='rbxassetid://10709753692',['lucide-align-
end-vertical']='rbxassetid://10709753808',['lucide-align-h
orizontal-distribute-center']='rbxassetid://10747779791',['lucide-align-h
orizontal-distribute-
end']='rbxassetid://10747784534',['lucide-align-h
orizontal-distribute-start']='rbxassetid://10709754118',['lucide-align-h
orizontal-just
if
y-center']='rbxassetid://10709754204',['lucide-align-h
orizontal-just
if
y-
end']='rbxassetid://10709754317',['lucide-align-h
orizontal-just
if
y-start']='rbxassetid://10709754436',['lucide-align-h
orizontal-space-around']='rbxassetid://10709754590',['lucide-align-h
orizontal-space-between']='rbxassetid://10709754749',['lucide-align-just
if
y']='rbxassetid://10709759610',['lucide-align-left']='rbxassetid://10709759764',['lucide-align-right']='rbxassetid://10709759895',['lucide-align-start-h
orizontal']='rbxassetid://10709760051',['lucide-align-start-vertical']='rbxassetid://10709760244',['lucide-align-vertical-distribute-center']='rbxassetid://10709760351',['lucide-align-vertical-distribute-
end']='rbxassetid://10709760434',['lucide-align-vertical-distribute-start']='rbxassetid://10709760612',['lucide-align-vertical-just
if
y-center']='rbxassetid://10709760814',['lucide-align-vertical-just
if
y-
end']='rbxassetid://10709761003',['lucide-align-vertical-just
if
y-start']='rbxassetid://10709761176',['lucide-align-vertical-space-around']='rbxassetid://10709761324',['lucide-align-vertical-space-between']='rbxassetid://10709761434',['lucide-anch
or']='rbxassetid://10709761530',['lucide-angry']='rbxassetid://10709761629',['lucide-annoyed']='rbxassetid://10709761722',['lucide-aperture']='rbxassetid://10709761813',['lucide-apple']='rbxassetid://10709761889',['lucide-archive']='rbxassetid://10709762233',['lucide-archive-rest
ore']='rbxassetid://10709762058',['lucide-armchair']='rbxassetid://10709762327',['lucide-arrow-big-
down']='rbxassetid://10747796644',['lucide-arrow-big-left']='rbxassetid://10709762574',['lucide-arrow-big-right']='rbxassetid://10709762727',['lucide-arrow-big-up']='rbxassetid://10709762879',['lucide-arrow-
down']='rbxassetid://10709767827',['lucide-arrow-
down-circle']='rbxassetid://10709763034',['lucide-arrow-
down-left']='rbxassetid://10709767656',['lucide-arrow-
down-right']='rbxassetid://10709767750',['lucide-arrow-left']='rbxassetid://10709768114',['lucide-arrow-left-circle']='rbxassetid://10709767936',['lucide-arrow-left-right']='rbxassetid://10709768019',['lucide-arrow-right']='rbxassetid://10709768347',['lucide-arrow-right-circle']='rbxassetid://10709768226',['lucide-arrow-up']='rbxassetid://10709768939',['lucide-arrow-up-circle']='rbxassetid://10709768432',['lucide-arrow-up-
down']='rbxassetid://10709768538',['lucide-arrow-up-left']='rbxassetid://10709768661',['lucide-arrow-up-right']='rbxassetid://10709768787',['lucide-asterisk']='rbxassetid://10709769095',['lucide-at-sign']='rbxassetid://10709769286',['lucide-award']='rbxassetid://10709769406',['lucide-axe']='rbxassetid://10709769508',['lucide-axis-3d']='rbxassetid://10709769598',['lucide-baby']='rbxassetid://10709769732',['lucide-backpack']='rbxassetid://10709769841',['lucide-baggage-claim']='rbxassetid://10709769935',['lucide-banana']='rbxassetid://10709770005',['lucide-bank
note']='rbxassetid://10709770178',['lucide-bar-chart']='rbxassetid://10709773755',['lucide-bar-chart-2']='rbxassetid://10709770317',['lucide-bar-chart-3']='rbxassetid://10709770431',['lucide-bar-chart-4']='rbxassetid://10709770560',['lucide-bar-chart-h
orizontal']='rbxassetid://10709773669',['lucide-barcode']='rbxassetid://10747360675',['lucide-baseline']='rbxassetid://10709773863',['lucide-bath']='rbxassetid://10709773963',['lucide-battery']='rbxassetid://10709774640',['lucide-battery-charging']='rbxassetid://10709774068',['lucide-battery-full']='rbxassetid://10709774206',['lucide-battery-low']='rbxassetid://10709774370',['lucide-battery-medium']='rbxassetid://10709774513',['lucide-beaker']='rbxassetid://10709774756',['lucide-bed']='rbxassetid://10709775036',['lucide-bed-
double']='rbxassetid://10709774864',['lucide-bed-single']='rbxassetid://10709774968',['lucide-beer']='rbxassetid://10709775167',['lucide-bell']='rbxassetid://10709775704',['lucide-bell-minus']='rbxassetid://10709775241',['lucide-bell-off']='rbxassetid://10709775320',['lucide-bell-plus']='rbxassetid://10709775448',['lucide-bell-ring']='rbxassetid://10709775560',['lucide-bike']='rbxassetid://10709775894',['lucide-binary']='rbxassetid://10709776050',['lucide-bitcoin']='rbxassetid://10709776126',['lucide-bluetooth']='rbxassetid://10709776655',['lucide-bluetooth-connected']='rbxassetid://10709776240',['lucide-bluetooth-off']='rbxassetid://10709776344',['lucide-bluetooth-searching']='rbxassetid://10709776501',['lucide-bold']='rbxassetid://10747813908',['lucide-bomb']='rbxassetid://10709781460',['lucide-bone']='rbxassetid://10709781605',['lucide-book']='rbxassetid://10709781824',['lucide-book-open']='rbxassetid://10709781717',['lucide-bookmark']='rbxassetid://10709782154',['lucide-bookmark-minus']='rbxassetid://10709781919',['lucide-bookmark-plus']='rbxassetid://10709782044',['lucide-bot']='rbxassetid://10709782230',['lucide-box']='rbxassetid://10709782497',['lucide-box-select']='rbxassetid://10709782342',['lucide-boxes']='rbxassetid://10709782582',['lucide-briefcase']='rbxassetid://10709782662',['lucide-brush']='rbxassetid://10709782758',['lucide-bug']='rbxassetid://10709782845',['lucide-building']='rbxassetid://10709783051',['lucide-building-2']='rbxassetid://10709782939',['lucide-bus']='rbxassetid://10709783137',['lucide-cake']='rbxassetid://10709783217',['lucide-calculat
or']='rbxassetid://10709783311',['lucide-cal
endar']='rbxassetid://10709789505',['lucide-cal
endar-check']='rbxassetid://10709783474',['lucide-cal
endar-check-2']='rbxassetid://10709783392',['lucide-cal
endar-clock']='rbxassetid://10709783577',['lucide-cal
endar-days']='rbxassetid://10709783673',['lucide-cal
endar-heart']='rbxassetid://10709783835',['lucide-cal
endar-minus']='rbxassetid://10709783959',['lucide-cal
endar-off']='rbxassetid://10709788784',['lucide-cal
endar-plus']='rbxassetid://10709788937',['lucide-cal
endar-range']='rbxassetid://10709789053',['lucide-cal
endar-search']='rbxassetid://10709789200',['lucide-cal
endar-x']='rbxassetid://10709789407',['lucide-cal
endar-x-2']='rbxassetid://10709789329',['lucide-camera']='rbxassetid://10709789686',['lucide-camera-off']='rbxassetid://10747822677',['lucide-car']='rbxassetid://10709789810',['lucide-carrot']='rbxassetid://10709789960',['lucide-cast']='rbxassetid://10709790097',['lucide-charge']='rbxassetid://10709790202',['lucide-check']='rbxassetid://10709790644',['lucide-check-circle']='rbxassetid://10709790387',['lucide-check-circle-2']='rbxassetid://10709790298',['lucide-check-square']='rbxassetid://10709790537',['lucide-chef-hat']='rbxassetid://10709790757',['lucide-cherry']='rbxassetid://10709790875',['lucide-chevron-
down']='rbxassetid://10709790948',['lucide-chevron-first']='rbxassetid://10709791015',['lucide-chevron-last']='rbxassetid://10709791130',['lucide-chevron-left']='rbxassetid://10709791281',['lucide-chevron-right']='rbxassetid://10709791437',['lucide-chevron-up']='rbxassetid://10709791523',['lucide-chevrons-
down']='rbxassetid://10709796864',['lucide-chevrons-
down-up']='rbxassetid://10709791632',['lucide-chevrons-left']='rbxassetid://10709797151',['lucide-chevrons-left-right']='rbxassetid://10709797006',['lucide-chevrons-right']='rbxassetid://10709797382',['lucide-chevrons-right-left']='rbxassetid://10709797274',['lucide-chevrons-up']='rbxassetid://10709797622',['lucide-chevrons-up-
down']='rbxassetid://10709797508',['lucide-chrome']='rbxassetid://10709797725',['lucide-circle']='rbxassetid://10709798174',['lucide-circle-
dot']='rbxassetid://10709797837',['lucide-circle-ellipsis']='rbxassetid://10709797985',['lucide-circle-slashed']='rbxassetid://10709798100',['lucide-citrus']='rbxassetid://10709798276',['lucide-clapperboard']='rbxassetid://10709798350',['lucide-clipboard']='rbxassetid://10709799288',['lucide-clipboard-check']='rbxassetid://10709798443',['lucide-clipboard-copy']='rbxassetid://10709798574',['lucide-clipboard-edit']='rbxassetid://10709798682',['lucide-clipboard-list']='rbxassetid://10709798792',['lucide-clipboard-signature']='rbxassetid://10709798890',['lucide-clipboard-type']='rbxassetid://10709798999',['lucide-clipboard-x']='rbxassetid://10709799124',['lucide-clock']='rbxassetid://10709805144',['lucide-clock-1']='rbxassetid://10709799535',['lucide-clock-10']='rbxassetid://10709799718',['lucide-clock-11']='rbxassetid://10709799818',['lucide-clock-12']='rbxassetid://10709799962',['lucide-clock-2']='rbxassetid://10709803876',['lucide-clock-3']='rbxassetid://10709803989',['lucide-clock-4']='rbxassetid://10709804164',['lucide-clock-5']='rbxassetid://10709804291',['lucide-clock-6']='rbxassetid://10709804435',['lucide-clock-7']='rbxassetid://10709804599',['lucide-clock-8']='rbxassetid://10709804784',['lucide-clock-9']='rbxassetid://10709804996',['lucide-cloud']='rbxassetid://10709806740',['lucide-cloud-cog']='rbxassetid://10709805262',['lucide-cloud-drizzle']='rbxassetid://10709805371',['lucide-cloud-fog']='rbxassetid://10709805477',['lucide-cloud-hail']='rbxassetid://10709805596',['lucide-cloud-lightning']='rbxassetid://10709805727',['lucide-cloud-moon']='rbxassetid://10709805942',['lucide-cloud-moon-rain']='rbxassetid://10709805838',['lucide-cloud-off']='rbxassetid://10709806060',['lucide-cloud-rain']='rbxassetid://10709806277',['lucide-cloud-rain-wind']='rbxassetid://10709806166',['lucide-cloud-snow']='rbxassetid://10709806374',['lucide-cloud-sun']='rbxassetid://10709806631',['lucide-cloud-sun-rain']='rbxassetid://10709806475',['lucide-cloudy']='rbxassetid://10709806859',['lucide-clover']='rbxassetid://10709806995',['lucide-code']='rbxassetid://10709810463',['lucide-code-2']='rbxassetid://10709807111',['lucide-codepen']='rbxassetid://10709810534',['lucide-codesandbox']='rbxassetid://10709810676',['lucide-coffee']='rbxassetid://10709810814',['lucide-cog']='rbxassetid://10709810948',['lucide-coins']='rbxassetid://10709811110',['lucide-columns']='rbxassetid://10709811261',['lucide-command']='rbxassetid://10709811365',['lucide-compass']='rbxassetid://10709811445',['lucide-component']='rbxassetid://10709811595',['lucide-concierge-bell']='rbxassetid://10709811706',['lucide-connection']='rbxassetid://10747361219',['lucide-contact']='rbxassetid://10709811834',['lucide-contrast']='rbxassetid://10709811939',['lucide-cookie']='rbxassetid://10709812067',['lucide-copy']='rbxassetid://10709812159',['lucide-copyleft']='rbxassetid://10709812251',['lucide-copyright']='rbxassetid://10709812311',['lucide-c
orner-
down-left']='rbxassetid://10709812396',['lucide-c
orner-
down-right']='rbxassetid://10709812485',['lucide-c
orner-left-
down']='rbxassetid://10709812632',['lucide-c
orner-left-up']='rbxassetid://10709812784',['lucide-c
orner-right-
down']='rbxassetid://10709812939',['lucide-c
orner-right-up']='rbxassetid://10709813094',['lucide-c
orner-up-left']='rbxassetid://10709813185',['lucide-c
orner-up-right']='rbxassetid://10709813281',['lucide-cpu']='rbxassetid://10709813383',['lucide-croissant']='rbxassetid://10709818125',['lucide-crop']='rbxassetid://10709818245',['lucide-cross']='rbxassetid://10709818399',['lucide-crosshair']='rbxassetid://10709818534',['lucide-crown']='rbxassetid://10709818626',['lucide-cup-soda']='rbxassetid://10709818763',['lucide-curly-braces']='rbxassetid://10709818847',['lucide-currency']='rbxassetid://10709818931',['lucide-database']='rbxassetid://10709818996',['lucide-delete']='rbxassetid://10709819059',['lucide-diamond']='rbxassetid://10709819149',['lucide-dice-1']='rbxassetid://10709819266',['lucide-dice-2']='rbxassetid://10709819361',['lucide-dice-3']='rbxassetid://10709819508',['lucide-dice-4']='rbxassetid://10709819670',['lucide-dice-5']='rbxassetid://10709819801',['lucide-dice-6']='rbxassetid://10709819896',['lucide-dices']='rbxassetid://10723343321',['lucide-d
if
f']='rbxassetid://10723343416',['lucide-disc']='rbxassetid://10723343537',['lucide-divide']='rbxassetid://10723343805',['lucide-divide-circle']='rbxassetid://10723343636',['lucide-divide-square']='rbxassetid://10723343737',['lucide-
dollar-sign']='rbxassetid://10723343958',['lucide-
download']='rbxassetid://10723344270',['lucide-
download-cloud']='rbxassetid://10723344088',['lucide-droplet']='rbxassetid://10723344432',['lucide-droplets']='rbxassetid://10734883356',['lucide-drumstick']='rbxassetid://10723344737',['lucide-edit']='rbxassetid://10734883598',['lucide-edit-2']='rbxassetid://10723344885',['lucide-edit-3']='rbxassetid://10723345088',['lucide-egg']='rbxassetid://10723345518',['lucide-egg-fried']='rbxassetid://10723345347',['lucide-electricity']='rbxassetid://10723345749',['lucide-electricity-off']='rbxassetid://10723345643',['lucide-equal']='rbxassetid://10723345990',['lucide-equal-
not']='rbxassetid://10723345866',['lucide-eraser']='rbxassetid://10723346158',['lucide-euro']='rbxassetid://10723346372',['lucide-expand']='rbxassetid://10723346553',['lucide-external-link']='rbxassetid://10723346684',['lucide-eye']='rbxassetid://10723346959',['lucide-eye-off']='rbxassetid://10723346871',['lucide-fact
ory']='rbxassetid://10723347051',['lucide-fan']='rbxassetid://10723354359',['lucide-fast-f
orward']='rbxassetid://10723354521',['lucide-feather']='rbxassetid://10723354671',['lucide-figma']='rbxassetid://10723354801',['lucide-file']='rbxassetid://10723374641',['lucide-file-archive']='rbxassetid://10723354921',['lucide-file-audio']='rbxassetid://10723355148',['lucide-file-audio-2']='rbxassetid://10723355026',['lucide-file-axis-3d']='rbxassetid://10723355272',['lucide-file-badge']='rbxassetid://10723355622',['lucide-file-badge-2']='rbxassetid://10723355451',['lucide-file-bar-chart']='rbxassetid://10723355887',['lucide-file-bar-chart-2']='rbxassetid://10723355746',['lucide-file-box']='rbxassetid://10723355989',['lucide-file-check']='rbxassetid://10723356210',['lucide-file-check-2']='rbxassetid://10723356100',['lucide-file-clock']='rbxassetid://10723356329',['lucide-file-code']='rbxassetid://10723356507',['lucide-file-cog']='rbxassetid://10723356830',['lucide-file-cog-2']='rbxassetid://10723356676',['lucide-file-d
if
f']='rbxassetid://10723357039',['lucide-file-digit']='rbxassetid://10723357151',['lucide-file-
down']='rbxassetid://10723357322',['lucide-file-edit']='rbxassetid://10723357495',['lucide-file-heart']='rbxassetid://10723357637',['lucide-file-image']='rbxassetid://10723357790',['lucide-file-input']='rbxassetid://10723357933',['lucide-file-json']='rbxassetid://10723364435',['lucide-file-json-2']='rbxassetid://10723364361',['lucide-file-key']='rbxassetid://10723364605',['lucide-file-key-2']='rbxassetid://10723364515',['lucide-file-line-chart']='rbxassetid://10723364725',['lucide-file-lock']='rbxassetid://10723364957',['lucide-file-lock-2']='rbxassetid://10723364861',['lucide-file-minus']='rbxassetid://10723365254',['lucide-file-minus-2']='rbxassetid://10723365086',['lucide-file-output']='rbxassetid://10723365457',['lucide-file-pie-chart']='rbxassetid://10723365598',['lucide-file-plus']='rbxassetid://10723365877',['lucide-file-plus-2']='rbxassetid://10723365766',['lucide-file-question']='rbxassetid://10723365987',['lucide-file-scan']='rbxassetid://10723366167',['lucide-file-search']='rbxassetid://10723366550',['lucide-file-search-2']='rbxassetid://10723366340',['lucide-file-signature']='rbxassetid://10723366741',['lucide-file-spreadsheet']='rbxassetid://10723366962',['lucide-file-symlink']='rbxassetid://10723367098',['lucide-file-terminal']='rbxassetid://10723367244',['lucide-file-text']='rbxassetid://10723367380',['lucide-file-type']='rbxassetid://10723367606',['lucide-file-type-2']='rbxassetid://10723367509',['lucide-file-up']='rbxassetid://10723367734',['lucide-file-video']='rbxassetid://10723373884',['lucide-file-video-2']='rbxassetid://10723367834',['lucide-file-volume']='rbxassetid://10723374172',['lucide-file-volume-2']='rbxassetid://10723374030',['lucide-file-warning']='rbxassetid://10723374276',['lucide-file-x']='rbxassetid://10723374544',['lucide-file-x-2']='rbxassetid://10723374378',['lucide-files']='rbxassetid://10723374759',['lucide-film']='rbxassetid://10723374981',['lucide-filter']='rbxassetid://10723375128',['lucide-finger
print']='rbxassetid://10723375250',['lucide-flag']='rbxassetid://10723375890',['lucide-flag-off']='rbxassetid://10723375443',['lucide-flag-triangle-left']='rbxassetid://10723375608',['lucide-flag-triangle-right']='rbxassetid://10723375727',['lucide-flame']='rbxassetid://10723376114',['lucide-flashlight']='rbxassetid://10723376471',['lucide-flashlight-off']='rbxassetid://10723376365',['lucide-flask-conical']='rbxassetid://10734883986',['lucide-flask-round']='rbxassetid://10723376614',['lucide-flip-h
orizontal']='rbxassetid://10723376884',['lucide-flip-h
orizontal-2']='rbxassetid://10723376745',['lucide-flip-vertical']='rbxassetid://10723377138',['lucide-flip-vertical-2']='rbxassetid://10723377026',['lucide-flower']='rbxassetid://10747830374',['lucide-flower-2']='rbxassetid://10723377305',['lucide-focus']='rbxassetid://10723377537',['lucide-folder']='rbxassetid://10723387563',['lucide-folder-archive']='rbxassetid://10723384478',['lucide-folder-check']='rbxassetid://10723384605',['lucide-folder-clock']='rbxassetid://10723384731',['lucide-folder-closed']='rbxassetid://10723384893',['lucide-folder-cog']='rbxassetid://10723385213',['lucide-folder-cog-2']='rbxassetid://10723385036',['lucide-folder-
down']='rbxassetid://10723385338',['lucide-folder-edit']='rbxassetid://10723385445',['lucide-folder-heart']='rbxassetid://10723385545',['lucide-folder-input']='rbxassetid://10723385721',['lucide-folder-key']='rbxassetid://10723385848',['lucide-folder-lock']='rbxassetid://10723386005',['lucide-folder-minus']='rbxassetid://10723386127',['lucide-folder-open']='rbxassetid://10723386277',['lucide-folder-output']='rbxassetid://10723386386',['lucide-folder-plus']='rbxassetid://10723386531',['lucide-folder-search']='rbxassetid://10723386787',['lucide-folder-search-2']='rbxassetid://10723386674',['lucide-folder-symlink']='rbxassetid://10723386930',['lucide-folder-tree']='rbxassetid://10723387085',['lucide-folder-up']='rbxassetid://10723387265',['lucide-folder-x']='rbxassetid://10723387448',['lucide-folders']='rbxassetid://10723387721',['lucide-f
orm-input']='rbxassetid://10723387841',['lucide-f
orward']='rbxassetid://10723388016',['lucide-frame']='rbxassetid://10723394389',['lucide-framer']='rbxassetid://10723394565',['lucide-frown']='rbxassetid://10723394681',['lucide-fuel']='rbxassetid://10723394846',['lucide-function-square']='rbxassetid://10723395041',['lucide-gamepad']='rbxassetid://10723395457',['lucide-gamepad-2']='rbxassetid://10723395215',['lucide-gauge']='rbxassetid://10723395708',['lucide-gavel']='rbxassetid://10723395896',['lucide-gem']='rbxassetid://10723396000',['lucide-ghost']='rbxassetid://10723396107',['lucide-g
if
t']='rbxassetid://10723396402',['lucide-g
if
t-card']='rbxassetid://10723396225',['lucide-git-branch']='rbxassetid://10723396676',['lucide-git-branch-plus']='rbxassetid://10723396542',['lucide-git-commit']='rbxassetid://10723396812',['lucide-git-compare']='rbxassetid://10723396954',['lucide-git-f
ork']='rbxassetid://10723397049',['lucide-git-merge']='rbxassetid://10723397165',['lucide-git-pull-request']='rbxassetid://10723397431',['lucide-git-pull-request-closed']='rbxassetid://10723397268',['lucide-git-pull-request-draft']='rbxassetid://10734884302',['lucide-glass']='rbxassetid://10723397788',['lucide-glass-2']='rbxassetid://10723397529',['lucide-glass-water']='rbxassetid://10723397678',['lucide-glasses']='rbxassetid://10723397895',['lucide-globe']='rbxassetid://10723404337',['lucide-globe-2']='rbxassetid://10723398002',['lucide-grab']='rbxassetid://10723404472',['lucide-graduation-cap']='rbxassetid://10723404691',['lucide-grape']='rbxassetid://10723404822',['lucide-grid']='rbxassetid://10723404936',['lucide-grip-h
orizontal']='rbxassetid://10723405089',['lucide-grip-vertical']='rbxassetid://10723405236',['lucide-hammer']='rbxassetid://10723405360',['lucide-hand']='rbxassetid://10723405649',['lucide-hand-metal']='rbxassetid://10723405508',['lucide-hard-drive']='rbxassetid://10723405749',['lucide-hard-hat']='rbxassetid://10723405859',['lucide-hash']='rbxassetid://10723405975',['lucide-haze']='rbxassetid://10723406078',['lucide-headphones']='rbxassetid://10723406165',['lucide-heart']='rbxassetid://10723406885',['lucide-heart-crack']='rbxassetid://10723406299',['lucide-heart-handshake']='rbxassetid://10723406480',['lucide-heart-off']='rbxassetid://10723406662',['lucide-heart-pulse']='rbxassetid://10723406795',['lucide-help-circle']='rbxassetid://10723406988',['lucide-hexagon']='rbxassetid://10723407092',['lucide-highlighter']='rbxassetid://10723407192',['lucide-hist
ory']='rbxassetid://10723407335',['lucide-home']='rbxassetid://10723407389',['lucide-hourglass']='rbxassetid://10723407498',['lucide-ice-cream']='rbxassetid://10723414308',['lucide-image']='rbxassetid://10723415040',['lucide-image-minus']='rbxassetid://10723414487',['lucide-image-off']='rbxassetid://10723414677',['lucide-image-plus']='rbxassetid://10723414827',['lucide-imp
ort']='rbxassetid://10723415205',['lucide-inbox']='rbxassetid://10723415335',['lucide-indent']='rbxassetid://10723415494',['lucide-indian-rupee']='rbxassetid://10723415642',['lucide-infinity']='rbxassetid://10723415766',['lucide-info']='rbxassetid://10723415903',['lucide-inspect']='rbxassetid://10723416057',['lucide-italic']='rbxassetid://10723416195',['lucide-japanese-yen']='rbxassetid://10723416363',['lucide-joystick']='rbxassetid://10723416527',['lucide-key']='rbxassetid://10723416652',['lucide-keyboard']='rbxassetid://10723416765',['lucide-lamp']='rbxassetid://10723417513',['lucide-lamp-ceiling']='rbxassetid://10723416922',['lucide-lamp-desk']='rbxassetid://10723417016',['lucide-lamp-flo
or']='rbxassetid://10723417131',['lucide-lamp-wall-
down']='rbxassetid://10723417240',['lucide-lamp-wall-up']='rbxassetid://10723417356',['lucide-landmark']='rbxassetid://10723417608',['lucide-languages']='rbxassetid://10723417703',['lucide-laptop']='rbxassetid://10723423881',['lucide-laptop-2']='rbxassetid://10723417797',['lucide-lasso']='rbxassetid://10723424235',['lucide-lasso-select']='rbxassetid://10723424058',['lucide-laugh']='rbxassetid://10723424372',['lucide-layers']='rbxassetid://10723424505',['lucide-layout']='rbxassetid://10723425376',['lucide-layout-dashboard']='rbxassetid://10723424646',['lucide-layout-grid']='rbxassetid://10723424838',['lucide-layout-list']='rbxassetid://10723424963',['lucide-layout-template']='rbxassetid://10723425187',['lucide-leaf']='rbxassetid://10723425539',['lucide-library']='rbxassetid://10723425615',['lucide-l
if
e-buoy']='rbxassetid://10723425685',['lucide-lightbulb']='rbxassetid://10723425852',['lucide-lightbulb-off']='rbxassetid://10723425762',['lucide-line-chart']='rbxassetid://10723426393',['lucide-link']='rbxassetid://10723426722',['lucide-link-2']='rbxassetid://10723426595',['lucide-link-2-off']='rbxassetid://10723426513',['lucide-list']='rbxassetid://10723433811',['lucide-list-checks']='rbxassetid://10734884548',['lucide-list-
end']='rbxassetid://10723426886',['lucide-list-minus']='rbxassetid://10723426986',['lucide-list-music']='rbxassetid://10723427081',['lucide-list-
ordered']='rbxassetid://10723427199',['lucide-list-plus']='rbxassetid://10723427334',['lucide-list-start']='rbxassetid://10723427494',['lucide-list-video']='rbxassetid://10723427619',['lucide-list-x']='rbxassetid://10723433655',['lucide-loader']='rbxassetid://10723434070',['lucide-loader-2']='rbxassetid://10723433935',['lucide-locate']='rbxassetid://10723434557',['lucide-locate-fixed']='rbxassetid://10723434236',['lucide-locate-off']='rbxassetid://10723434379',['lucide-lock']='rbxassetid://10723434711',['lucide-log-in']='rbxassetid://10723434830',['lucide-log-out']='rbxassetid://10723434906',['lucide-luggage']='rbxassetid://10723434993',['lucide-magnet']='rbxassetid://10723435069',['lucide-mail']='rbxassetid://10734885430',['lucide-mail-check']='rbxassetid://10723435182',['lucide-mail-minus']='rbxassetid://10723435261',['lucide-mail-open']='rbxassetid://10723435342',['lucide-mail-plus']='rbxassetid://10723435443',['lucide-mail-question']='rbxassetid://10723435515',['lucide-mail-search']='rbxassetid://10734884739',['lucide-mail-warning']='rbxassetid://10734885015',['lucide-mail-x']='rbxassetid://10734885247',['lucide-mails']='rbxassetid://10734885614',['lucide-map']='rbxassetid://10734886202',['lucide-map-pin']='rbxassetid://10734886004',['lucide-map-pin-off']='rbxassetid://10734885803',['lucide-maximize']='rbxassetid://10734886735',['lucide-maximize-2']='rbxassetid://10734886496',['lucide-medal']='rbxassetid://10734887072',['lucide-megaphone']='rbxassetid://10734887454',['lucide-megaphone-off']='rbxassetid://10734887311',['lucide-meh']='rbxassetid://10734887603',['lucide-menu']='rbxassetid://10734887784',['lucide-message-circle']='rbxassetid://10734888000',['lucide-message-square']='rbxassetid://10734888228',['lucide-mic']='rbxassetid://10734888864',['lucide-mic-2']='rbxassetid://10734888430',['lucide-mic-off']='rbxassetid://10734888646',['lucide-microscope']='rbxassetid://10734889106',['lucide-microwave']='rbxassetid://10734895076',['lucide-milestone']='rbxassetid://10734895310',['lucide-minimize']='rbxassetid://10734895698',['lucide-minimize-2']='rbxassetid://10734895530',['lucide-minus']='rbxassetid://10734896206',['lucide-minus-circle']='rbxassetid://10734895856',['lucide-minus-square']='rbxassetid://10734896029',['lucide-monit
or']='rbxassetid://10734896881',['lucide-monit
or-off']='rbxassetid://10734896360',['lucide-monit
or-speaker']='rbxassetid://10734896512',['lucide-moon']='rbxassetid://10734897102',['lucide-m
ore-h
orizontal']='rbxassetid://10734897250',['lucide-m
ore-vertical']='rbxassetid://10734897387',['lucide-mountain']='rbxassetid://10734897956',['lucide-mountain-snow']='rbxassetid://10734897665',['lucide-mouse']='rbxassetid://10734898592',['lucide-mouse-pointer']='rbxassetid://10734898476',['lucide-mouse-pointer-2']='rbxassetid://10734898194',['lucide-mouse-pointer-click']='rbxassetid://10734898355',['lucide-move']='rbxassetid://10734900011',['lucide-move-3d']='rbxassetid://10734898756',['lucide-move-diagonal']='rbxassetid://10734899164',['lucide-move-diagonal-2']='rbxassetid://10734898934',['lucide-move-h
orizontal']='rbxassetid://10734899414',['lucide-move-vertical']='rbxassetid://10734899821',['lucide-music']='rbxassetid://10734905958',['lucide-music-2']='rbxassetid://10734900215',['lucide-music-3']='rbxassetid://10734905665',['lucide-music-4']='rbxassetid://10734905823',['lucide-navigation']='rbxassetid://10734906744',['lucide-navigation-2']='rbxassetid://10734906332',['lucide-navigation-2-off']='rbxassetid://10734906144',['lucide-navigation-off']='rbxassetid://10734906580',['lucide-netw
ork']='rbxassetid://10734906975',['lucide-newspaper']='rbxassetid://10734907168',['lucide-octagon']='rbxassetid://10734907361',['lucide-option']='rbxassetid://10734907649',['lucide-outdent']='rbxassetid://10734907933',['lucide-package']='rbxassetid://10734909540',['lucide-package-2']='rbxassetid://10734908151',['lucide-package-check']='rbxassetid://10734908384',['lucide-package-minus']='rbxassetid://10734908626',['lucide-package-open']='rbxassetid://10734908793',['lucide-package-plus']='rbxassetid://10734909016',['lucide-package-search']='rbxassetid://10734909196',['lucide-package-x']='rbxassetid://10734909375',['lucide-paint-bucket']='rbxassetid://10734909847',['lucide-paintbrush']='rbxassetid://10734910187',['lucide-paintbrush-2']='rbxassetid://10734910030',['lucide-palette']='rbxassetid://10734910430',['lucide-palmtree']='rbxassetid://10734910680',['lucide-paperclip']='rbxassetid://10734910927',['lucide-party-popper']='rbxassetid://10734918735',['lucide-pause']='rbxassetid://10734919336',['lucide-pause-circle']='rbxassetid://10735024209',['lucide-pause-octagon']='rbxassetid://10734919143',['lucide-pen-tool']='rbxassetid://10734919503',['lucide-pencil']='rbxassetid://10734919691',['lucide-percent']='rbxassetid://10734919919',['lucide-person-standing']='rbxassetid://10734920149',['lucide-phone']='rbxassetid://10734921524',['lucide-phone-call']='rbxassetid://10734920305',['lucide-phone-f
orwarded']='rbxassetid://10734920508',['lucide-phone-incoming']='rbxassetid://10734920694',['lucide-phone-missed']='rbxassetid://10734920845',['lucide-phone-off']='rbxassetid://10734921077',['lucide-phone-outgoing']='rbxassetid://10734921288',['lucide-pie-chart']='rbxassetid://10734921727',['lucide-piggy-bank']='rbxassetid://10734921935',['lucide-pin']='rbxassetid://10734922324',['lucide-pin-off']='rbxassetid://10734922180',['lucide-pipette']='rbxassetid://10734922497',['lucide-pizza']='rbxassetid://10734922774',['lucide-plane']='rbxassetid://10734922971',['lucide-play']='rbxassetid://10734923549',['lucide-play-circle']='rbxassetid://10734923214',['lucide-plus']='rbxassetid://10734924532',['lucide-plus-circle']='rbxassetid://10734923868',['lucide-plus-square']='rbxassetid://10734924219',['lucide-podcast']='rbxassetid://10734929553',['lucide-pointer']='rbxassetid://10734929723',['lucide-pound-sterling']='rbxassetid://10734929981',['lucide-power']='rbxassetid://10734930466',['lucide-power-off']='rbxassetid://10734930257',['lucide-
printer']='rbxassetid://10734930632',['lucide-puzzle']='rbxassetid://10734930886',['lucide-quote']='rbxassetid://10734931234',['lucide-radio']='rbxassetid://10734931596',['lucide-radio-receiver']='rbxassetid://10734931402',['lucide-rectangle-h
orizontal']='rbxassetid://10734931777',['lucide-rectangle-vertical']='rbxassetid://10734932081',['lucide-recycle']='rbxassetid://10734932295',['lucide-re
do']='rbxassetid://10734932822',['lucide-re
do-2']='rbxassetid://10734932586',['lucide-refresh-ccw']='rbxassetid://10734933056',['lucide-refresh-cw']='rbxassetid://10734933222',['lucide-refrigerat
or']='rbxassetid://10734933465',['lucide-regex']='rbxassetid://10734933655',['lucide-
repeat']='rbxassetid://10734933966',['lucide-
repeat-1']='rbxassetid://10734933826',['lucide-reply']='rbxassetid://10734934252',['lucide-reply-all']='rbxassetid://10734934132',['lucide-rewind']='rbxassetid://10734934347',['lucide-rocket']='rbxassetid://10734934585',['lucide-rocking-chair']='rbxassetid://10734939942',['lucide-rotate-3d']='rbxassetid://10734940107',['lucide-rotate-ccw']='rbxassetid://10734940376',['lucide-rotate-cw']='rbxassetid://10734940654',['lucide-rss']='rbxassetid://10734940825',['lucide-ruler']='rbxassetid://10734941018',['lucide-russian-ruble']='rbxassetid://10734941199',['lucide-sailboat']='rbxassetid://10734941354',['lucide-save']='rbxassetid://10734941499',['lucide-scale']='rbxassetid://10734941912',['lucide-scale-3d']='rbxassetid://10734941739',['lucide-scaling']='rbxassetid://10734942072',['lucide-scan']='rbxassetid://10734942565',['lucide-scan-face']='rbxassetid://10734942198',['lucide-scan-line']='rbxassetid://10734942351',['lucide-sciss
ors']='rbxassetid://10734942778',['lucide-screen-share']='rbxassetid://10734943193',['lucide-screen-share-off']='rbxassetid://10734942967',['lucide-scroll']='rbxassetid://10734943448',['lucide-search']='rbxassetid://10734943674',['lucide-s
end']='rbxassetid://10734943902',['lucide-separat
or-h
orizontal']='rbxassetid://10734944115',['lucide-separat
or-vertical']='rbxassetid://10734944326',['lucide-server']='rbxassetid://10734949856',['lucide-server-cog']='rbxassetid://10734944444',['lucide-server-crash']='rbxassetid://10734944554',['lucide-server-off']='rbxassetid://10734944668',['lucide-settings']='rbxassetid://10734950309',['lucide-settings-2']='rbxassetid://10734950020',['lucide-share']='rbxassetid://10734950813',['lucide-share-2']='rbxassetid://10734950553',['lucide-sheet']='rbxassetid://10734951038',['lucide-shield']='rbxassetid://10734951847',['lucide-shield-alert']='rbxassetid://10734951173',['lucide-shield-check']='rbxassetid://10734951367',['lucide-shield-close']='rbxassetid://10734951535',['lucide-shield-off']='rbxassetid://10734951684',['lucide-shirt']='rbxassetid://10734952036',['lucide-shopping-bag']='rbxassetid://10734952273',['lucide-shopping-cart']='rbxassetid://10734952479',['lucide-shovel']='rbxassetid://10734952773',['lucide-shower-head']='rbxassetid://10734952942',['lucide-shrink']='rbxassetid://10734953073',['lucide-shrub']='rbxassetid://10734953241',['lucide-shuffle']='rbxassetid://10734953451',['lucide-sidebar']='rbxassetid://10734954301',['lucide-sidebar-close']='rbxassetid://10734953715',['lucide-sidebar-open']='rbxassetid://10734954000',['lucide-sigma']='rbxassetid://10734954538',['lucide-signal']='rbxassetid://10734961133',['lucide-signal-high']='rbxassetid://10734954807',['lucide-signal-low']='rbxassetid://10734955080',['lucide-signal-medium']='rbxassetid://10734955336',['lucide-signal-zero']='rbxassetid://10734960878',['lucide-siren']='rbxassetid://10734961284',['lucide-skip-back']='rbxassetid://10734961526',['lucide-skip-f
orward']='rbxassetid://10734961809',['lucide-skull']='rbxassetid://10734962068',['lucide-slack']='rbxassetid://10734962339',['lucide-slash']='rbxassetid://10734962600',['lucide-slice']='rbxassetid://10734963024',['lucide-sliders']='rbxassetid://10734963400',['lucide-sliders-h
orizontal']='rbxassetid://10734963191',['lucide-smartphone']='rbxassetid://10734963940',['lucide-smartphone-charging']='rbxassetid://10734963671',['lucide-smile']='rbxassetid://10734964441',['lucide-smile-plus']='rbxassetid://10734964188',['lucide-snowflake']='rbxassetid://10734964600',['lucide-sofa']='rbxassetid://10734964852',['lucide-s
ort-asc']='rbxassetid://10734965115',['lucide-s
ort-desc']='rbxassetid://10734965287',['lucide-speaker']='rbxassetid://10734965419',['lucide-sprout']='rbxassetid://10734965572',['lucide-square']='rbxassetid://10734965702',['lucide-star']='rbxassetid://10734966248',['lucide-star-half']='rbxassetid://10734965897',['lucide-star-off']='rbxassetid://10734966097',['lucide-stethoscope']='rbxassetid://10734966384',['lucide-sticker']='rbxassetid://10734972234',['lucide-sticky-
note']='rbxassetid://10734972463',['lucide-stop-circle']='rbxassetid://10734972621',['lucide-stretch-h
orizontal']='rbxassetid://10734972862',['lucide-stretch-vertical']='rbxassetid://10734973130',['lucide-strikethrough']='rbxassetid://10734973290',['lucide-subscript']='rbxassetid://10734973457',['lucide-sun']='rbxassetid://10734974297',['lucide-sun-dim']='rbxassetid://10734973645',['lucide-sun-medium']='rbxassetid://10734973778',['lucide-sun-moon']='rbxassetid://10734973999',['lucide-sun-snow']='rbxassetid://10734974130',['lucide-sunrise']='rbxassetid://10734974522',['lucide-sunset']='rbxassetid://10734974689',['lucide-superscript']='rbxassetid://10734974850',['lucide-swiss-franc']='rbxassetid://10734975024',['lucide-switch-camera']='rbxassetid://10734975214',['lucide-sw
ord']='rbxassetid://10734975486',['lucide-sw
ords']='rbxassetid://10734975692',['lucide-syringe']='rbxassetid://10734975932',['lucide-table']='rbxassetid://10734976230',['lucide-table-2']='rbxassetid://10734976097',['lucide-tablet']='rbxassetid://10734976394',['lucide-tag']='rbxassetid://10734976528',['lucide-tags']='rbxassetid://10734976739',['lucide-target']='rbxassetid://10734977012',['lucide-tent']='rbxassetid://10734981750',['lucide-terminal']='rbxassetid://10734982144',['lucide-terminal-square']='rbxassetid://10734981995',['lucide-text-curs
or']='rbxassetid://10734982395',['lucide-text-curs
or-input']='rbxassetid://10734982297',['lucide-thermometer']='rbxassetid://10734983134',['lucide-thermometer-snowflake']='rbxassetid://10734982571',['lucide-thermometer-sun']='rbxassetid://10734982771',['lucide-thumbs-
down']='rbxassetid://10734983359',['lucide-thumbs-up']='rbxassetid://10734983629',['lucide-ticket']='rbxassetid://10734983868',['lucide-timer']='rbxassetid://10734984606',['lucide-timer-off']='rbxassetid://10734984138',['lucide-timer-reset']='rbxassetid://10734984355',['lucide-toggle-left']='rbxassetid://10734984834',['lucide-toggle-right']='rbxassetid://10734985040',['lucide-t
orna
do']='rbxassetid://10734985247',['lucide-toy-brick']='rbxassetid://10747361919',['lucide-train']='rbxassetid://10747362105',['lucide-trash']='rbxassetid://10747362393',['lucide-trash-2']='rbxassetid://10747362241',['lucide-tree-deciduous']='rbxassetid://10747362534',['lucide-tree-pine']='rbxassetid://10747362748',['lucide-trees']='rbxassetid://10747363016',['lucide-tr
ending-
down']='rbxassetid://10747363205',['lucide-tr
ending-up']='rbxassetid://10747363465',['lucide-triangle']='rbxassetid://10747363621',['lucide-trophy']='rbxassetid://10747363809',['lucide-truck']='rbxassetid://10747364031',['lucide-tv']='rbxassetid://10747364593',['lucide-tv-2']='rbxassetid://10747364302',['lucide-type']='rbxassetid://10747364761',['lucide-umbrella']='rbxassetid://10747364971',['lucide-underline']='rbxassetid://10747365191',['lucide-un
do']='rbxassetid://10747365484',['lucide-un
do-2']='rbxassetid://10747365359',['lucide-unlink']='rbxassetid://10747365771',['lucide-unlink-2']='rbxassetid://10747397871',['lucide-unlock']='rbxassetid://10747366027',['lucide-upload']='rbxassetid://10747366434',['lucide-upload-cloud']='rbxassetid://10747366266',['lucide-usb']='rbxassetid://10747366606',['lucide-user']='rbxassetid://10747373176',['lucide-user-check']='rbxassetid://10747371901',['lucide-user-cog']='rbxassetid://10747372167',['lucide-user-minus']='rbxassetid://10747372346',['lucide-user-plus']='rbxassetid://10747372702',['lucide-user-x']='rbxassetid://10747372992',['lucide-users']='rbxassetid://10747373426',['lucide-utensils']='rbxassetid://10747373821',['lucide-utensils-crossed']='rbxassetid://10747373629',['lucide-venetian-mask']='rbxassetid://10747374003',['lucide-ver
if
ied']='rbxassetid://10747374131',['lucide-vibrate']='rbxassetid://10747374489',['lucide-vibrate-off']='rbxassetid://10747374269',['lucide-video']='rbxassetid://10747374938',['lucide-video-off']='rbxassetid://10747374721',['lucide-view']='rbxassetid://10747375132',['lucide-voicemail']='rbxassetid://10747375281',['lucide-volume']='rbxassetid://10747376008',['lucide-volume-1']='rbxassetid://10747375450',['lucide-volume-2']='rbxassetid://10747375679',['lucide-volume-x']='rbxassetid://10747375880',['lucide-wallet']='rbxassetid://10747376205',['lucide-wand']='rbxassetid://10747376565',['lucide-wand-2']='rbxassetid://10747376349',['lucide-watch']='rbxassetid://10747376722',['lucide-waves']='rbxassetid://10747376931',['lucide-webcam']='rbxassetid://10747381992',['lucide-w
if
i']='rbxassetid://10747382504',['lucide-w
if
i-off']='rbxassetid://10747382268',['lucide-wind']='rbxassetid://10747382750',['lucide-wrap-text']='rbxassetid://10747383065',['lucide-wrench']='rbxassetid://10747383470',['lucide-x']='rbxassetid://10747384394',['lucide-x-circle']='rbxassetid://10747383819',['lucide-x-octagon']='rbxassetid://10747384037',['lucide-x-square']='rbxassetid://10747384217',['lucide-zoom-in']='rbxassetid://10747384552',['lucide-zoom-out']='rbxassetid://10747384679'}
}

end,[30]=function()
local aa,ab,ac,ad,ae=b(30)
local af={
SingleMot
or=ac(ab.SingleMot
or),GroupMot
or=ac(ab.GroupMot
or),Instant=ac(ab.Instant),Linear=ac(ab.Linear),Spring=ac(ab.Spring),isMot
or=ac(ab.isMot
or)}

return af 
end,[31]=function()
local aa,ab,ac,ad,ae=b(31)
local af,ag,ah,ai=game:GetService'RunService',ac(ab.Parent.Signal),function()
end,{
}
ai.__index=ai function ai.new()
return setmetatable({
_onStep=ag.new(),_onStart=ag.new(),_onComplete=ag.new()}
,ai)
end function ai.onStep(aj,c)
return aj._onStep:connect(c)
end function ai.onStart(aj,c)
return aj._onStart:connect(c)
end function ai.onComplete(aj,c)
return aj._onComplete:connect(c)
end function ai.start(aj)
if
 
not aj._connection 
then aj._connection=af.R
enderStepped:Connect(function(c)aj:step(c)
end)
end 
end function ai.stop(aj)
if
 aj._connection 
then aj._connection:Disconnect()aj._connection=
nil 
end 
end ai.destroy=ai.stop ai.step=ah ai.getValue=ah ai.setGoal=ah function ai.__tostring(aj)
return'Mot
or'
end 
return ai 
end,[32]=function()
local aa,ab,ac,ad,ae=b(32)
return function()
local af,ag=game:GetService'RunService',ac(ab.Parent.BaseMot
or)describe('connection management',function()
local ah=ag.new()it('should hook up connections on :start()',function()ah:start()expect(typeof(ah._connection)).to.equal'RBXScriptConnection'
end)it('should remove connections on :stop() 
or :destroy()',function()ah:stop()expect(ah._connection).to.equal(
nil)
end)
end)it('should call :step() with deltaTime',function()
local ah,ai=(ag.new())function ah.step(aj,...)ai={
...}
ah:stop()
end ah:start()
local aj=af.R
enderStepped:Wait()af.R
enderStepped:Wait()expect(ai).to.be.ok()expect(ai[1]).to.equal(aj)
end)
end 
end,[33]=function()
local aa,ab,ac,ad,ae=b(33)
local af,ag,ah=ac(ab.Parent.BaseMot
or),ac(ab.Parent.SingleMot
or),ac(ab.Parent.isMot
or)
local ai=setmetatable({
}
,af)ai.__index=ai 
local aj=function(aj)
if
 ah(aj)
then 
return aj 
end 
local c=typeof(aj)
if
 c=='number'
then 
return ag.new(aj,
false)
else

if
 c=='table'
then 
return ai.new(aj,
false)
end err
or(('Unable to convert %q to mot
or;
 type %s is unsupp
orted'):f
ormat(aj,c),2)
end function ai.new(c,d)assert(c,'Missing argument #1: initialValues')assert(typeof(c)=='table','initialValues must be a table!')assert(
not c.step,[[initialValues contains disallowed property "step". Did you mean to put a table of values here?]])
local e=setmetatable(af.new(),ai)
if
 d~=
nil 
then e._useImplicitConnections=d 
else
 e._useImplicitConnections=
true 
end e._complete=
true e._mot
ors={
}
f
or f,g in pairs(c)
do e._mot
ors[f]=aj(g)
end 
return e 
end function ai.step(c,d)
if
 c._complete 
then 
return 
true 
end 
local e=
true f
or f,g in pairs(c._mot
ors)
do 
local h=g:step(d)
if
 
not h 
then e=
false 
end 
end c._onStep:fire(c:getValue())
if
 e 
then 
if
 c._useImplicitConnections 
then c:stop()
end c._complete=
true c._onComplete:fire()
end 
return e 
end function ai.setGoal(c,d)assert(
not d.step,[[goals contains disallowed property "step". Did you mean to put a table of goals here?]])c._complete=
false c._onStart:fire()f
or e,f in pairs(d)
do 
local g=assert(c._mot
ors[e],('Unknown mot
or f
or key %s'):f
ormat(e))g:setGoal(f)
end 
if
 c._useImplicitConnections 
then c:start()
end 
end function ai.getValue(c)
local d={
}
f
or e,f in pairs(c._mot
ors)
do d[e]=f:getValue()
end 
return d 
end function ai.__tostring(c)
return'Mot
or(Group)'
end 
return ai 
end,[34]=function()
local aa,ab,ac,ad,ae=b(34)
return function()
local af,ag,ah=ac(ab.Parent.GroupMot
or),ac(ab.Parent.Instant),ac(ab.Parent.Spring)it('should complete when all child mot
ors are complete',function()
local ai=af.new({
A=1,B=2}
,
false)expect(ai._complete).to.equal(
true)ai:setGoal{
A=ag.new(3),B=ah.new(4,{
frequency=7.5,dampingRatio=1}
)}
expect(ai._complete).to.equal(
false)ai:step(1.6666666666666665E-2)expect(ai._complete).to.equal(
false)f
or aj=1,30 
do ai:step(1.6666666666666665E-2)
end expect(ai._complete).to.equal(
true)
end)it('should start when the goal is set',function()
local ai,aj=af.new({
A=0}
,
false),
false ai:onStart(function()aj=
not aj 
end)ai:setGoal{
A=ag.new(1)}
expect(aj).to.equal(
true)ai:setGoal{
A=ag.new(1)}
expect(aj).to.equal(
false)
end)it('should properly 
return all values',function()
local ai=af.new({
A=1,B=2}
,
false)
local aj=ai:getValue()expect(aj.A).to.equal(1)expect(aj.B).to.equal(2)
end)it('should err
or when a goal is given to GroupMot
or.new',function()
local ai=pcall(function()af.new(ag.new(0))
end)expect(ai).to.equal(
false)
end)it([[should err
or when a single goal is provided to GroupMot
or:step]],function()
local ai=pcall(function()af.new{
a=1}
:setGoal(ag.new(0))
end)expect(ai).to.equal(
false)
end)
end 
end,[35]=function()
local aa,ab,ac,ad,ae=b(35)
local af={
}
af.__index=af function af.new(ag)
return setmetatable({
_targetValue=ag}
,af)
end function af.step(ag)
return{
complete=
true,value=ag._targetValue}

end 
return af 
end,[36]=function()
local aa,ab,ac,ad,ae=b(36)
return function()
local af=ac(ab.Parent.Instant)it('should 
return a completed state with the provided value',function()
local ag=af.new(1.23)
local ah=ag:step(0.1,{
value=0,complete=
false}
)expect(ah.complete).to.equal(
true)expect(ah.value).to.equal(1.23)
end)
end 
end,[37]=function()
local aa,ab,ac,ad,ae=b(37)
local af={
}
af.__index=af function af.new(ag,ah)assert(ag,'Missing argument #1: targetValue')ah=ah 
or{
}

return setmetatable({
_targetValue=ag,_velocity=ah.velocity 
or 1}
,af)
end function af.step(ag,ah,ai)
local aj,c,d=ah.value,ag._velocity,ag._targetValue 
local e=ai*c 
local f=e>=math.abs(d-aj)aj=aj+e*(d>aj and 1 
or-1)
if
 f 
then aj=ag._targetValue c=0 
end 
return{
complete=f,value=aj,velocity=c}

end 
return af 
end,[38]=function()
local aa,ab,ac,ad,ae=b(38)
return function()
local af,ag=ac(ab.Parent.SingleMot
or),ac(ab.Parent.Linear)describe('completed state',function()
local ah,ai=af.new(0,
false),ag.new(1,{
velocity=1}
)ah:setGoal(ai)f
or aj=1,60 
do ah:step(1.6666666666666665E-2)
end it('should complete',function()expect(ah._state.complete).to.equal(
true)
end)it('should be exactly the goal value when completed',function()expect(ah._state.value).to.equal(1)
end)
end)describe('uncompleted state',function()
local ah,ai=af.new(0,
false),ag.new(1,{
velocity=1}
)ah:setGoal(ai)f
or aj=1,59 
do ah:step(1.6666666666666665E-2)
end it('should be uncomplete',function()expect(ah._state.complete).to.equal(
false)
end)
end)describe('negative velocity',function()
local ah,ai=af.new(1,
false),ag.new(0,{
velocity=1}
)ah:setGoal(ai)f
or aj=1,60 
do ah:step(1.6666666666666665E-2)
end it('should complete',function()expect(ah._state.complete).to.equal(
true)
end)it('should be exactly the goal value when completed',function()expect(ah._state.value).to.equal(0)
end)
end)
end 
end,[39]=function()
local aa,ab,ac,ad,ae=b(39)
local af={
}
af.__index=af function af.new(ag,ah)
return setmetatable({
signal=ag,connected=
true,_handler=ah}
,af)
end function af.disconnect(ag)
if
 ag.connected 
then ag.connected=
false f
or ah,ai in pairs(ag.signal._connections)
do 
if
 ai==ag 
then table.remove(ag.signal._connections,ah)
return 
end 
end 
end 
end 
local ag={
}
ag.__index=ag function ag.new()
return setmetatable({
_connections={
}
,_threads={
}
}
,ag)
end function ag.fire(ah,...)f
or ai,aj in pairs(ah._connections)
do aj._handler(...)
end f
or c,d in pairs(ah._threads)
do c
oroutine.resume(d,...)
end ah._threads={
}

end function ag.connect(ah,aj)
local c=af.new(ah,aj)table.insert(ah._connections,c)
return c 
end function ag.wait(ah)table.insert(ah._threads,c
oroutine.running())
return c
oroutine.yield()
end 
return ag 
end,[40]=function()
local aa,ab,ac,ad,ae=b(40)
return function()
local af=ac(ab.Parent.Signal)it('should invoke all connections, instantly',function()
local ag,ah,aj=(af.new())ag:connect(function(c)ah=c 
end)ag:connect(function(c)aj=c 
end)ag:fire'hello'expect(ah).to.equal'hello'expect(aj).to.equal'hello'
end)it('should 
return values when :wait() is called',function()
local ag=af.new()spawn(function()ag:fire(123,'hello')
end)
local ah,aj=ag:wait()expect(ah).to.equal(123)expect(aj).to.equal'hello'
end)it('should properly handle disconnections',function()
local ag,ah=af.new(),
false 
local aj=ag:connect(function()ah=
true 
end)aj:disconnect()ag:fire()expect(ah).to.equal(
false)
end)
end 
end,[41]=function()
local aa,ab,ac,ad,ae=b(41)
local af=ac(ab.Parent.BaseMot
or)
local ag=setmetatable({
}
,af)ag.__index=ag function ag.new(ah,aj)assert(ah,'Missing argument #1: initialValue')assert(typeof(ah)=='number','initialValue must be a number!')
local c=setmetatable(af.new(),ag)
if
 aj~=
nil 
then c._useImplicitConnections=aj 
else
 c._useImplicitConnections=
true 
end c._goal=
nil c._state={
complete=
true,value=ah}

return c 
end function ag.step(ah,aj)
if
 ah._state.complete 
then 
return 
true 
end 
local c=ah._goal:step(ah._state,aj)ah._state=c ah._onStep:fire(c.value)
if
 c.complete 
then 
if
 ah._useImplicitConnections 
then ah:stop()
end ah._onComplete:fire()
end 
return c.complete 
end function ag.getValue(ah)
return ah._state.value 
end function ag.setGoal(ah,aj)ah._state.complete=
false ah._goal=aj ah._onStart:fire()
if
 ah._useImplicitConnections 
then ah:start()
end 
end function ag.__tostring(ah)
return'Mot
or(Single)'
end 
return ag 
end,[42]=function()
local aa,ab,ac,ad,ae=b(42)
return function()
local af,ag=ac(ab.Parent.SingleMot
or),ac(ab.Parent.Instant)it('should assign new state on step',function()
local ah=af.new(0,
false)ah:setGoal(ag.new(5))ah:step(1.6666666666666665E-2)expect(ah._state.complete).to.equal(
true)expect(ah._state.value).to.equal(5)
end)it([[should invoke onComplete listeners when the goal is completed]],function()
local ah,aj=af.new(0,
false),
false ah:onComplete(function()aj=
true 
end)ah:setGoal(ag.new(5))ah:step(1.6666666666666665E-2)expect(aj).to.equal(
true)
end)it('should start when the goal is set',function()
local ah,aj=af.new(0,
false),
false ah:onStart(function()aj=
not aj 
end)ah:setGoal(ag.new(5))expect(aj).to.equal(
true)ah:setGoal(ag.new(5))expect(aj).to.equal(
false)
end)
end 
end,[43]=function()
local aa,ab,ac,ad,ae=b(43)
local af,ag,ah,aj=0.001,0.001,0.0001,{
}
aj.__index=aj function aj.new(c,d)assert(c,'Missing argument #1: targetValue')d=d 
or{
}

return setmetatable({
_targetValue=c,_frequency=d.frequency 
or 4,_dampingRatio=d.dampingRatio 
or 1}
,aj)
end function aj.step(c,d,e)
local f,g,h,i,j=c._dampingRatio,c._frequency*2*math.pi,c._targetValue,d.value,d.velocity 
or 0 
local k,l,m,n=i-h,(math.exp(-f*g*e))
if
 f==1 
then m=(k*(1+g*e)+j*e)*l+h n=(j*(1-g*e)-k*(g*g*e))*l 
else

if
 f<1 
then 
local o=math.sqrt(1-f*f)
local p,s,t=math.cos(g*o*e),(math.sin(g*o*e))
if
 o>ah 
then t=s/o 
else
 
local u=e*g t=u+((u*u)*(o*o)*(o*o)/20-o*o)*(u*u*u)/6 
end 
local u 
if
 g*o>ah 
then u=s/(g*o)
else
 
local v=g*o u=e+((e*e)*(v*v)*(v*v)/20-v*v)*(e*e*e)/6 
end m=(k*(p+f*t)+j*u)*l+h n=(j*(p-t*f)-k*(t*g))*l 
else
 
local o=math.sqrt(f*f-1)
local p,s=-g*(f-o),-g*(f+o)
local t=(j-k*p)/(2*g*o)
local u=k-t 
local v,w=u*math.exp(p*e),t*math.exp(s*e)m=v+w+h n=v*p+w*s 
end 
local o=math.abs(n)<af and math.abs(m-h)<ag 
return{
complete=o,value=o and h 
or m,velocity=n}

end 
return aj 
end,[44]=function()
local aa,ab,ac,ad,ae=b(44)
return function()
local af,ag=ac(ab.Parent.SingleMot
or),ac(ab.Parent.Spring)describe('completed state',function()
local ah,aj=af.new(0,
false),ag.new(1,{
frequency=2,dampingRatio=0.75}
)ah:setGoal(aj)f
or c=1,100 
do ah:step(1.6666666666666665E-2)
end it('should complete',function()expect(ah._state.complete).to.equal(
true)
end)it('should be exactly the goal value when completed',function()expect(ah._state.value).to.equal(1)
end)
end)it('should inherit velocity',function()
local ah=af.new(0,
false)ah._state={
complete=
false,value=0,velocity=-5}

local aj=ag.new(1,{
frequency=2,dampingRatio=1}
)ah:setGoal(aj)ah:step(1.6666666666666665E-2)expect(ah._state.velocity<0).to.equal(
true)
end)
end 
end,[45]=function()
local aa,ab,ac,ad,ae=b(45)
local af=function(af)
local ag=tostring(af):match'^Mot
or%((.+)%)$'
if
 ag 
then 
return 
true,ag 
else
 
return 
false 
end 
end 
return af 
end,[46]=function()
local aa,ab,ac,ad,ae=b(46)
return function()
local af,ag,ah=ac(ab.Parent.isMot
or),ac(ab.Parent.SingleMot
or),ac(ab.Parent.GroupMot
or)
local aj,c=ag.new(0),ah.new{
}
it('should properly detect mot
ors',function()expect(af(aj)).to.equal(
true)expect(af(c)).to.equal(
true)
end)it("shouldn't detect things that aren't mot
ors",function()expect(af{
}
).to.equal(
false)
end)it('should 
return the proper mot
or type',function()
local d,e=af(aj)
local f,g=af(c)expect(e).to.equal'Single'expect(g).to.equal'Group'
end)
end 
end,[47]=function()
local aa,ab,ac,ad,ae=b(47)
local af={
Names={
'Dark','Darker','Light','Aqua','Amethyst','Rose'}
}
f
or ag,ah in next,ab:GetChildren()
do 
local aj=ac(ah)af[aj.Name]=aj 
end 
return af 
end,[48]=function()
local aa,ab,ac,ad,ae=b(48)
return{
Name='Amethyst',Accent=Col
or3.fromRGB(97,62,167),AcrylicMain=Col
or3.fromRGB(20,20,20),AcrylicB
order=Col
or3.fromRGB(110,90,130),AcrylicGradient=Col
orSequence.new(Col
or3.fromRGB(85,57,139),Col
or3.fromRGB(40,25,65)),AcrylicNoise=0.92,TitleBarLine=Col
or3.fromRGB(95,75,110),Tab=Col
or3.fromRGB(160,140,180),Element=Col
or3.fromRGB(140,120,160),ElementB
order=Col
or3.fromRGB(60,50,70),InElementB
order=Col
or3.fromRGB(100,90,110),ElementTransparency=0.87,ToggleSlider=Col
or3.fromRGB(140,120,160),ToggleToggled=Col
or3.fromRGB(0,0,0),SliderRail=Col
or3.fromRGB(140,120,160),Drop
downFrame=Col
or3.fromRGB(170,160,200),Drop
downHolder=Col
or3.fromRGB(60,45,80),Drop
downB
order=Col
or3.fromRGB(50,40,65),Drop
downOption=Col
or3.fromRGB(140,120,160),Keybind=Col
or3.fromRGB(140,120,160),Input=Col
or3.fromRGB(140,120,160),InputFocused=Col
or3.fromRGB(20,10,30),InputIndicat
or=Col
or3.fromRGB(170,150,190),Dialog=Col
or3.fromRGB(60,45,80),DialogHolder=Col
or3.fromRGB(45,30,65),DialogHolderLine=Col
or3.fromRGB(40,25,60),DialogButton=Col
or3.fromRGB(60,45,80),DialogButtonB
order=Col
or3.fromRGB(95,80,110),DialogB
order=Col
or3.fromRGB(85,70,100),DialogInput=Col
or3.fromRGB(70,55,85),DialogInputLine=Col
or3.fromRGB(175,160,190),Text=Col
or3.fromRGB(240,240,240),SubText=Col
or3.fromRGB(170,170,170),Hover=Col
or3.fromRGB(140,120,160),HoverChange=0.04}

end,[49]=function()
local aa,ab,ac,ad,ae=b(49)
return{
Name='Aqua',Accent=Col
or3.fromRGB(60,165,165),AcrylicMain=Col
or3.fromRGB(20,20,20),AcrylicB
order=Col
or3.fromRGB(50,100,100),AcrylicGradient=Col
orSequence.new(Col
or3.fromRGB(60,140,140),Col
or3.fromRGB(40,80,80)),AcrylicNoise=0.92,TitleBarLine=Col
or3.fromRGB(60,120,120),Tab=Col
or3.fromRGB(140,180,180),Element=Col
or3.fromRGB(110,160,160),ElementB
order=Col
or3.fromRGB(40,70,70),InElementB
order=Col
or3.fromRGB(80,110,110),ElementTransparency=0.84,ToggleSlider=Col
or3.fromRGB(110,160,160),ToggleToggled=Col
or3.fromRGB(0,0,0),SliderRail=Col
or3.fromRGB(110,160,160),Drop
downFrame=Col
or3.fromRGB(160,200,200),Drop
downHolder=Col
or3.fromRGB(40,80,80),Drop
downB
order=Col
or3.fromRGB(40,65,65),Drop
downOption=Col
or3.fromRGB(110,160,160),Keybind=Col
or3.fromRGB(110,160,160),Input=Col
or3.fromRGB(110,160,160),InputFocused=Col
or3.fromRGB(20,10,30),InputIndicat
or=Col
or3.fromRGB(130,170,170),Dialog=Col
or3.fromRGB(40,80,80),DialogHolder=Col
or3.fromRGB(30,60,60),DialogHolderLine=Col
or3.fromRGB(25,50,50),DialogButton=Col
or3.fromRGB(40,80,80),DialogButtonB
order=Col
or3.fromRGB(80,110,110),DialogB
order=Col
or3.fromRGB(50,100,100),DialogInput=Col
or3.fromRGB(45,90,90),DialogInputLine=Col
or3.fromRGB(130,170,170),Text=Col
or3.fromRGB(240,240,240),SubText=Col
or3.fromRGB(170,170,170),Hover=Col
or3.fromRGB(110,160,160),HoverChange=0.04}

end,[50]=function()
local aa,ab,ac,ad,ae=b(50)
return{
Name='Dark',Accent=Col
or3.fromRGB(96,205,255),AcrylicMain=Col
or3.fromRGB(60,60,60),AcrylicB
order=Col
or3.fromRGB(90,90,90),AcrylicGradient=Col
orSequence.new(Col
or3.fromRGB(40,40,40),Col
or3.fromRGB(40,40,40)),AcrylicNoise=0.9,TitleBarLine=Col
or3.fromRGB(75,75,75),Tab=Col
or3.fromRGB(120,120,120),Element=Col
or3.fromRGB(120,120,120),ElementB
order=Col
or3.fromRGB(35,35,35),InElementB
order=Col
or3.fromRGB(90,90,90),ElementTransparency=0.87,ToggleSlider=Col
or3.fromRGB(120,120,120),ToggleToggled=Col
or3.fromRGB(0,0,0),SliderRail=Col
or3.fromRGB(120,120,120),Drop
downFrame=Col
or3.fromRGB(160,160,160),Drop
downHolder=Col
or3.fromRGB(45,45,45),Drop
downB
order=Col
or3.fromRGB(35,35,35),Drop
downOption=Col
or3.fromRGB(120,120,120),Keybind=Col
or3.fromRGB(120,120,120),Input=Col
or3.fromRGB(160,160,160),InputFocused=Col
or3.fromRGB(10,10,10),InputIndicat
or=Col
or3.fromRGB(150,150,150),Dialog=Col
or3.fromRGB(45,45,45),DialogHolder=Col
or3.fromRGB(35,35,35),DialogHolderLine=Col
or3.fromRGB(30,30,30),DialogButton=Col
or3.fromRGB(45,45,45),DialogButtonB
order=Col
or3.fromRGB(80,80,80),DialogB
order=Col
or3.fromRGB(70,70,70),DialogInput=Col
or3.fromRGB(55,55,55),DialogInputLine=Col
or3.fromRGB(160,160,160),Text=Col
or3.fromRGB(240,240,240),SubText=Col
or3.fromRGB(170,170,170),Hover=Col
or3.fromRGB(120,120,120),HoverChange=0.07}

end,[51]=function()
local aa,ab,ac,ad,ae=b(51)
return{
Name='Darker',Accent=Col
or3.fromRGB(72,138,182),AcrylicMain=Col
or3.fromRGB(30,30,30),AcrylicB
order=Col
or3.fromRGB(60,60,60),AcrylicGradient=Col
orSequence.new(Col
or3.fromRGB(25,25,25),Col
or3.fromRGB(15,15,15)),AcrylicNoise=0.94,TitleBarLine=Col
or3.fromRGB(65,65,65),Tab=Col
or3.fromRGB(100,100,100),Element=Col
or3.fromRGB(70,70,70),ElementB
order=Col
or3.fromRGB(25,25,25),InElementB
order=Col
or3.fromRGB(55,55,55),ElementTransparency=0.82,Drop
downFrame=Col
or3.fromRGB(120,120,120),Drop
downHolder=Col
or3.fromRGB(35,35,35),Drop
downB
order=Col
or3.fromRGB(25,25,25),Dialog=Col
or3.fromRGB(35,35,35),DialogHolder=Col
or3.fromRGB(25,25,25),DialogHolderLine=Col
or3.fromRGB(20,20,20),DialogButton=Col
or3.fromRGB(35,35,35),DialogButtonB
order=Col
or3.fromRGB(55,55,55),DialogB
order=Col
or3.fromRGB(50,50,50),DialogInput=Col
or3.fromRGB(45,45,45),DialogInputLine=Col
or3.fromRGB(120,120,120)}

end,[52]=function()
local aa,ab,ac,ad,ae=b(52)
return{
Name='Light',Accent=Col
or3.fromRGB(0,103,192),AcrylicMain=Col
or3.fromRGB(200,200,200),AcrylicB
order=Col
or3.fromRGB(120,120,120),AcrylicGradient=Col
orSequence.new(Col
or3.fromRGB(255,255,255),Col
or3.fromRGB(255,255,255)),AcrylicNoise=0.96,TitleBarLine=Col
or3.fromRGB(160,160,160),Tab=Col
or3.fromRGB(90,90,90),Element=Col
or3.fromRGB(255,255,255),ElementB
order=Col
or3.fromRGB(180,180,180),InElementB
order=Col
or3.fromRGB(150,150,150),ElementTransparency=0.65,ToggleSlider=Col
or3.fromRGB(40,40,40),ToggleToggled=Col
or3.fromRGB(255,255,255),SliderRail=Col
or3.fromRGB(40,40,40),Drop
downFrame=Col
or3.fromRGB(200,200,200),Drop
downHolder=Col
or3.fromRGB(240,240,240),Drop
downB
order=Col
or3.fromRGB(200,200,200),Drop
downOption=Col
or3.fromRGB(150,150,150),Keybind=Col
or3.fromRGB(120,120,120),Input=Col
or3.fromRGB(200,200,200),InputFocused=Col
or3.fromRGB(100,100,100),InputIndicat
or=Col
or3.fromRGB(80,80,80),Dialog=Col
or3.fromRGB(255,255,255),DialogHolder=Col
or3.fromRGB(240,240,240),DialogHolderLine=Col
or3.fromRGB(228,228,228),DialogButton=Col
or3.fromRGB(255,255,255),DialogButtonB
order=Col
or3.fromRGB(190,190,190),DialogB
order=Col
or3.fromRGB(140,140,140),DialogInput=Col
or3.fromRGB(250,250,250),DialogInputLine=Col
or3.fromRGB(160,160,160),Text=Col
or3.fromRGB(0,0,0),SubText=Col
or3.fromRGB(40,40,40),Hover=Col
or3.fromRGB(50,50,50),HoverChange=0.16}

end,[53]=function()
local aa,ab,ac,ad,ae=b(53)
return{
Name='Rose',Accent=Col
or3.fromRGB(180,55,90),AcrylicMain=Col
or3.fromRGB(40,40,40),AcrylicB
order=Col
or3.fromRGB(130,90,110),AcrylicGradient=Col
orSequence.new(Col
or3.fromRGB(190,60,135),Col
or3.fromRGB(165,50,70)),AcrylicNoise=0.92,TitleBarLine=Col
or3.fromRGB(140,85,105),Tab=Col
or3.fromRGB(180,140,160),Element=Col
or3.fromRGB(200,120,170),ElementB
order=Col
or3.fromRGB(110,70,85),InElementB
order=Col
or3.fromRGB(120,90,90),ElementTransparency=0.86,ToggleSlider=Col
or3.fromRGB(200,120,170),ToggleToggled=Col
or3.fromRGB(0,0,0),SliderRail=Col
or3.fromRGB(200,120,170),Drop
downFrame=Col
or3.fromRGB(200,160,180),Drop
downHolder=Col
or3.fromRGB(120,50,75),Drop
downB
order=Col
or3.fromRGB(90,40,55),Drop
downOption=Col
or3.fromRGB(200,120,170),Keybind=Col
or3.fromRGB(200,120,170),Input=Col
or3.fromRGB(200,120,170),InputFocused=Col
or3.fromRGB(20,10,30),InputIndicat
or=Col
or3.fromRGB(170,150,190),Dialog=Col
or3.fromRGB(120,50,75),DialogHolder=Col
or3.fromRGB(95,40,60),DialogHolderLine=Col
or3.fromRGB(90,35,55),DialogButton=Col
or3.fromRGB(120,50,75),DialogButtonB
order=Col
or3.fromRGB(155,90,115),DialogB
order=Col
or3.fromRGB(100,70,90),DialogInput=Col
or3.fromRGB(135,55,80),DialogInputLine=Col
or3.fromRGB(190,160,180),Text=Col
or3.fromRGB(240,240,240),SubText=Col
or3.fromRGB(170,170,170),Hover=Col
or3.fromRGB(200,120,170),HoverChange=0.04}

end}

do 
local ab,ac,ad,ae,af,ag,ah,aj,c,e,f,g,h,i,j,k=task,setmetatable,err
or,newproxy,getmetatable,next,table,unpack,c
oroutine,script,type,require,pcall,getfenv,setfenv,rawget 
local l,m,n,o,p,s,t,u,v,w,x=ah.insert,ah.remove,ah.freeze 
or function(l)
return l 
end,ab and ab.defer 
or function(l,...)
local m=c.create(l)c.resume(m,...)
return m 
end,'0.0.0-venv',{
}
,{
}
,{
}
,{
}
,{
}
,{
}

local y,z={
GetChildren=function(y)
local z,A=x[y],{
}
f
or B in ag,z 
do l(A,B)
end 
return A 
end,FindFirstChild=function(y,z)
if
 
not z 
then ad('Argument 1 missing 
or 
nil',2)
end f
or A in ag,x[y]
do 
if
 A.Name==z 
then 
return A 
end 
end 
return 
end,GetFullName=function(y)
local z,A=y.Name,y.Parent 
while A 
do z=A.Name..'.'..z A=A.Parent 
end 
return'VirtualEnv.'..z 
end}
,{
}
f
or A,B in ag,y 
do z[A]=function(C,...)
if
 
not x[C]
then ad("Expected ':' 
not '.' calling member function "..A,1)
end 
return B(C,...)
end 
end 
local C=function(C,D,E)
local F,G,H,I,J=ac({
}
,{
__mode='k'}
),function(F)ad(F..' is 
not a valid (virtual) member of '..C..' "'..D..'"',1)
end,function(F)ad('Unable to assign (virtual) property '..F..'. Property is read only',1)
end,(ae(
true))
local K=af(I)K.__index=function(L,M)
if
 M=='ClassName'
then 
return C 
else

if
 M=='Name'
then 
return D 
else

if
 M=='Parent'
then 
return E 
else

if
 C=='StringValue'and M=='Value'
then 
return J 
else
 
local N=z[M]
if
 N 
then 
return N 
end 
end f
or N in ag,F 
do 
if
 N.Name==M 
then 
return N 
end 
end G(M)
end K.__newindex=function(L,M,N)
if
 M=='ClassName'
then H(M)
else

if
 M=='Name'
then D=N 
else

if
 M=='Parent'
then 
if
 N==I 
then 
return 
end 
if
 E~=
nil 
then x[E][I]=
nil 
end E=N 
if
 N~=
nil 
then x[N][I]=
true 
end 
else

if
 C=='StringValue'and M=='Value'
then J=N 
else
 G(M)
end 
end K.__tostring=function()
return D 
end x[I]=F 
if
 E~=
nil 
then x[E][I]=
true 
end 
return I 
end 
local function D(E,F)
local G,H,I,J=E[1],E[2],E[3],E[4]
local K=m(I,1)
local L=C(H,K,F)s[G]=L 
if
 I 
then f
or M,N in ag,I 
do L[M]=N 
end 
end 
if
 J 
then f
or M,N in ag,J 
do D(N,L)
end 
end 
return L 
end 
local E={
}
f
or F,G in ag,a 
do l(E,D(G))
end f
or H,I in ag,aa 
do 
local J=s[H]t[J]=I 
local K=J.ClassName 
if
 K=='LocalScript'
or K=='Script'
then l(v,J)
end 
end 
local J=function(J)
local K,L=J.ClassName,u[J]
if
 L and K=='ModuleScript'
then 
return aj(L)
end 
local M=t[J]
if
 
not M 
then 
return 
end 
if
 K=='LocalScript'
or K=='Script'
then M()
return 
else
 
local N={
M()}
u[J]=N 
return aj(N)
end 
end function b(K)
local L=s[K]
local M=t[L]
if
 
not M 
then 
return 
end 
local N,O,P,Q,R,S,T=
false,n{
Version=p,Script=e,Shared=w,GetScript=function()
return e 
end,GetShared=function()
return w 
end}
,L,function(N,...)
if
 x[N]and N.ClassName=='ModuleScript'and t[N]
then 
return J(N)
end 
return g(N,...)
end 
local U,V=function(U,...)
if
 
not N 
then T()
end 
if
 f(U)=='number'and U>=0 
then 
if
 U==0 
then 
return S 
else
 U=U+1 
local V,W=h(i,U)
if
 V and W==R 
then 
return S 
end 
end 
end 
return i(U,...)
end,function(U,V,...)
if
 
not N 
then T()
end 
if
 f(U)=='number'and U>=0 
then 
if
 U==0 
then 
return j(S,V)
else
 U=U+1 
local W,X=h(i,U)
if
 W and X==R 
then 
return j(S,V)
end 
end 
end 
return j(U,V,...)
end function T()R=i(0)
local W={
maui=O,script=P,require=Q,getfenv=U,setfenv=V}
S=ac({
}
,{
__index=function(X,Y)
local Z=k(S,Y)
if
 Z~=
nil 
then 
return Z 
end 
local _=W[Y]
if
 _~=
nil 
then 
return _ 
end 
return R[Y]
end}
)j(M,S)N=
true 
end 
return O,P,Q,U,V 
end f
or K,L in ag,v 
do o(J,L)
end 
do 
local M f
or N,O in ag,E 
do 
if
 O.ClassName=='ModuleScript'and O.Name=='MainModule'
then M=O 
break 
end 
end 
if
 M 
then 
return J(M)
end 
end 
end
