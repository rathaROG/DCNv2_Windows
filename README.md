## DCN V2 PyTorch 1.10.x & earlier

- Made for Windows (10/11) 
- Only works with **PyTorch 1.10.x and older**
- Be noted that the official build of PyTorch 1.10.2 also supports **cuda 11.3.x** which means everything will work on your latest NVIDIA graphic card(s). You can install by using this: 
```
pip install torch==1.10.2+cu113 torchvision==0.11.3+cu113 torchaudio===0.10.2 -f https://download.pytorch.org/whl/torch_stable.html
```

**Note: Checkout branch [`PyTorch-1.11+`](https://github.com/rathaROG/DCNv2_Windows/tree/PyTorch-1.11+) for PyTorch 1.11+**


### Important

Make sure you already added the correct path of 'cl.exe' of VS2019 in system path variable before run the `make.bat`. For example, the path of VS2019 Enterprise: 
```
C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.2x.xxxxx\bin\Hostx64\x64\
```

### Clone & Build
```
git clone --single-branch --branch "PyTorch-1.10" https://github.com/rathaROG/DCNv2_Windows.git DCNv2
cd DCNv2
make.bat
```
<img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/dcn_01_win11.png" width="750"/>
<img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/dcn_02_win11.png" width="750"/>

### Credit to [origin repo](https://github.com/CharlesShang/DCNv2) & special thanks to:
- https://github.com/tteepe/DCNv2
- @[daiKratos](https://github.com/daiKratos)
- @[haruishi43](https://github.com/haruishi43)
