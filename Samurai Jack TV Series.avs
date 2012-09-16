AVISource("C:\Users\Akash\Desktop\New Folder 4\Samurai Jack - S04E05 - XLIV The Princess and the Bounty Hunters.avi", audio=false)

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
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\fft3dfilter.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\Convolution3DYV12.dll")
LoadPlugin("I:\Encoding Software\MeGUI\Latest Plugins\FluxSmooth.dll")
Import("I:\Encoding Software\MeGUI\Latest Plugins\LSFmod.v1.8.avsi")



ConvertToRGB32()
converttoyv12()







#deinterlace


#resize
#denoise
