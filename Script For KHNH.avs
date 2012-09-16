LoadPlugin("C:\Program Files (x86)\MeGUI\tools\dgindex\DGDecode.dll")
DGDecode_mpeg2source("C:\Users\Akash\Desktop\New folder (2)\VTS_02_1.d2v", cpu=4, info=3)
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

tfm(order=0).tdecimate(hybrid=3)
crop( 2, 62, -2, -58)


#denoise

ConvertToRGB32()
converttoyv12()
RemoveGrain(mode=2)
Tweak(hue=5,sat=1.4,bright=-1,cont=1)
FadeIn(50)


Try { 
Lanczos4Resize(720,304)
} 
Catch(Err_Msg) {
Lanczos4Resize(720,480)
} 