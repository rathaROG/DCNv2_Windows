## DCN V2 with Pytorch 1.8 for Windows

- Made for Windows (10) 
- Tested & worked with **cuda 11.1.1** & **pytorch 1.8.0** 


### Important

Make sure you already added the correct path of 'cl.exe' of VS2019 in system path variable before run the `make.bat`. For example, the path of VS2019 Enterprise: 
```
C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.28.29910\bin\Hostx64\x64\
```

### Clone & Build
```
git clone https://github.com/rathaROG/DCNv2_Windows.git DCNv2
cd DCNv2
make.bat
```
<img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/dcn_01.PNG" width="750"/>
<img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/dcn_02.PNG" width="750"/>

### Credit to [origin repo](https://github.com/CharlesShang/DCNv2) & special thanks to:
- https://github.com/tteepe/DCNv2
- @[daiKratos](https://github.com/daiKratos)
- @[haruishi43](https://github.com/haruishi43)
