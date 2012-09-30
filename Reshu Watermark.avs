DirectShowSource("G:\Pendrive Backp\Custom Resolution\People\Bday\Reshu\Reshu 2012\Akash Collection\VID_00000007.mp4", fps=25.000, audio=false, convertfps=true)
#deinterlace
#crop
LanczosResize(1280,720) # Lanczos (Sharp)
#denoise


img=ImageSource("k:\logo1.png", pixel_type="RGB32")
Overlay(img, x=1150, y=670, mask=img.showAlpha(), opacity=0.65)