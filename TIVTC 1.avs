LoadPlugin("C:\Program Files (x86)\MeGUI\tools\dgindex\DGDecode.dll")
DGDecode_mpeg2source("K:\VIDEO_TS\VTS_01_1.d2v", cpu=4, info=3)
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
Import("I:\Encoding Software\MeGUI\Latest Plugins\GrainFactory3.avsi")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\AddGrainC.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\MT.dll")
Import("I:\Encoding Software\MeGUI\Latest Plugins\GradFunkMirror.avs")
Import("I:\Encoding Software\MeGUI\Latest Plugins\SeeSaw.avs")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\degrainmedian.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\VagueDenoiser.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\mt_masktools-26.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\gradfun2db.dll")
Import("I:\Encoding Software\MeGUI\Latest Plugins\MCTemporalDenoise.v1.3.00.avsi")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\FFT3DFilter.dll")
#LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\fftw3.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\Convolution3DYV12.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\FluxSmooth.dll")
Import("I:\Encoding Software\MeGUI\Latest Plugins\LSFmod.v1.8.avsi")


tfm(order=1).tdecimate(hybrid=3)
crop( 2, 60, 0, -58)

ConvertToRGB32()
converttoyv12()
RemoveGrain(mode=2)
#Deen("c2d", 2, 4, 6, 4, 6, 0.5, 9)
#aSharp(2,2,-1,false)
#Blockbuster(method="noise",detail_min=1,detail_max=10,variance=0.3,seed=2)
Tweak(hue=5,sat=1.3,bright=-1,cont=1)
Convolution3D(preset="movieHQ")
fluxsmoothT(3)
#MCTemporalDenoise(settings="high")
LSFMod(Strength=10, Smode=5)
#Grainfactory3(1,1,1)
#a= last
#b=a.degrainmedian(limitY=3, limitUV=5,mode=0).VagueDenoiser(threshold=1.2, method=1, nsteps=6, chromaT=0.8)
#SeeSaw(a,b, NRlimit=3, NRlimit2=4, Sstr=1.5, Slimit=5, Spower=5, Sdamplo=6, Szp=16, sootheS=20)
#GradFunkMirror()
FadeIn(50)

LanczosResize(720,304) # Lanczos (Sharp)
#denoise

__film = last
__t0 = __film.trim(0, 50000)
__t0


__film = last
__t0 = __film.trim(5642, 42666)
__t0

