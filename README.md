## DCN V2 PyTorch 1.11+

- Made for Windows (10/11) 
- Works with **PyTorch 1.11+ and newer (1.13.0 tested!)**
- Changes were made based on [65472](https://github.com/pytorch/pytorch/pull/65472), [65492](https://github.com/pytorch/pytorch/pull/65492), [66391](https://github.com/pytorch/pytorch/pull/66391), and [69041](https://github.com/pytorch/pytorch/pull/69041)

**Note: Checkout branch [`PyTorch-1.10`](https://github.com/rathaROG/DCNv2_Windows/tree/PyTorch-1.10) instead if you use PyTorch 1.10.x or older.**


### Important

Make sure you already added the correct path of 'cl.exe' of VS2019 in system path variable before run the `make.bat`. For example, the path of VS2019 Enterprise: 
```
C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.2x.xxxxx\bin\Hostx64\x64\
```

### Clone & Build
```
git clone --single-branch --branch "PyTorch-1.11+" https://github.com/rathaROG/DCNv2_Windows.git DCNv2
cd DCNv2
make.bat
```
<img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/dcn_01_win11.png" width="750"/>
<img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/dcn_02_win11.png" width="750"/>

### Credit to [origin repo](https://github.com/CharlesShang/DCNv2) & special thanks to:
- https://github.com/tteepe/DCNv2
- @[daiKratos](https://github.com/daiKratos)
- @[haruishi43](https://github.com/haruishi43)
