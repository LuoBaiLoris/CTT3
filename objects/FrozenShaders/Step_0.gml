if live_call() return live_result
RGB.sep = max(0,RGB.sep-1,0)
var temp0 = irandom(3)
if temp0 == 0{
	RGB.shakex = RGB.xshake
	RGB.shakey = RGB.yshake
}
if temp0 == 1{
	RGB.shakex = -RGB.xshake
	RGB.shakey = RGB.yshake
}
if temp0 == 2{
	RGB.shakex = RGB.xshake
	RGB.shakey = -RGB.yshake
}
if temp0 == 3{
	RGB.shakex = -RGB.xshake
	RGB.shakey = -RGB.yshake
}
Obscure.Value = max(0,Obscure.Value)
Obscure.Value = min(1,Obscure.Value)