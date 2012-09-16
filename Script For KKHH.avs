LoadPlugin("C:\Program Files (x86)\MeGUI\tools\dgindex\DGDecode.dll")
DGDecode_mpeg2source("K:\VIDEO_TS\VTS_02_1.d2v", cpu=4, info=3)
LoadPlugin("C:\Program Files (x86)\MeGUI\tools\avisynth_plugin\ColorMatrix.dll")
ColorMatrix(hints=true, interlaced=true, threads=0)
LoadPlugin("C:\Program Files (x86)\MeGUI\tools\avisynth_plugin\TIVTC.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\Decomb.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\vsfilter.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\avsmon25a.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\ffmpegsource.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\RemoveGrain.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\repair.dll")
LoadPlugin("C:\Program Files (x86)\AVI2ISO\plugins\RemoveDirt.dll")
Import("C:\Program Files (x86)\AVI2ISO\plugins\RemoveDirt.avsi")
LoadVirtualDubPlugin("C:\Program Files (x86)\AVI2ISO\VirtualDubMod\plugins\msu_sharpen.vdf","MSUSmartSharpen",0)
Import("C:\Program Files (x86)\AVI2ISO\plugins\resize.avsi")

tfm(order=1).tdecimate()
crop( 6, 58, -6, -58)

#denoise

ConvertToRGB32()
converttoyv12()
RemoveGrain(mode=2)
#Deen("c2d", 2, 4, 6, 4, 6, 0.5, 9)
#aSharp(2,2,-1,false)
#Blockbuster(method="noise",detail_min=1,detail_max=10,variance=0.3,seed=2)
Tweak(hue=5,sat=1.2,bright=-1,cont=1)
FadeIn(50)


Try { 
Lanczos4Resize(720,304)
} 
Catch(Err_Msg) {
Lanczos4Resize(720,480)
} 