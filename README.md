# DCN v2 - PyTorch v1.11+ and v2+

* Deformable Convolutional Networks V2 [[Original Repo]](https://github.com/CharlesShang/DCNv2)
* This repo is customized for Microsoft Windows 10/11
* Changes were made based on [65472](https://github.com/pytorch/pytorch/pull/65472), [65492](https://github.com/pytorch/pytorch/pull/65492), [66391](https://github.com/pytorch/pytorch/pull/66391), and [69041](https://github.com/pytorch/pytorch/pull/69041)
* ⚠️ ***Checkout [`torch-legacy`](https://github.com/rathaROG/DCNv2_Windows/tree/torch-legacy) for PyTorch 1.10.x and older***

## Clone & Build

* Clone as `DCNv2`: 
    ```
    git clone --single-branch --branch "torch-1.11+" https://github.com/rathaROG/DCNv2_Windows.git DCNv2
    ```

* Build DCNv2 `_ext` with the smart `make_develop.bat`:
    ```
    cd DCNv2
    make_develop.bat
    ```
    <details><summary><ins>Click here to see an example!</ins></summary>

    <img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/new_finish.png"/>
    <img src="https://raw.githubusercontent.com/rathaROG/screenshot/master/DCNv2_Windows/new_start.png"/>

    </details>

* Or use the old `make_old.bat` under [developer command prompt](https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-160#developer_command_prompt_shortcuts)...

    <details><summary><ins>Click here to expand!</ins></summary>

    If you don't want to use [developer command prompt](https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-160#developer_command_prompt_shortcuts), simply set `cl.exe` path in your system path variable; for example, MS VS2019 Enterprise:
    ```
    C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.xx.xxxxx\bin\Hostx64\x64\
    ```
    Build DCNv2 `_ext`:
    ```
    cd DCNv2
    make_develop.bat
    ```
    </details>

## Credit to [origin repo](https://github.com/CharlesShang/DCNv2) & special thanks to:

- https://github.com/tteepe/DCNv2
- @[daiKratos](https://github.com/daiKratos)
- @[haruishi43](https://github.com/haruishi43)
