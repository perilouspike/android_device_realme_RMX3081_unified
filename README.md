# Realme 8 pro
                                                 
The Realme 8 pro (codenamed _'RMX3081'_) is a mid-range smartphone from OPPO's sub-brand Realme launched in March, 2021.

## Device specifications

| Device                  | Realme 8 Pro                                                |
| ----------------------- | :---------------------------------------------------------- |
| SoC                     | Qualcomm SM7125 Snapdragon 720G                             |
| CPU                     | Qualcomm® Kryo™ 465, 2x Gold @ 2.3GHz & 6x Silver @ 1.8GHz  |
| GPU                     | Adreno 618                                                  |
| Memory                  | 6/8 GB RAM (LPDDR4X)                                        |
| Shipped Android version | Android 11                                                  |
| Storage                 | 128GB UFS 2.1 flash storage                                 |
| MicroSD                 | Up to 512 GB                                                |
| Battery                 | Non-removable Li-Ion 4500 mAh                               |
| Dimensions              | 160.6 x 73.9 x 8.1 mm                                       |
| Display                 | 1080 x 2400 (20:9), 6.4 inches                              |
| Rear camera 1           | 108 MP, f/1.9, 26mm (wide), 1/1.52", 0.7µm, PDAF            |
| Rear camera 2           | 8 MP, f/2.3, 119˚, 16mm (ultrawide), 1/4.0", 1.12µm         |
| Rear camera 3           | 2 MP, f/2.4, (macro)                                        |
| Rear camera 4           | 2 MP, f/2.4, (depth)                                        |
| Front camera            | 16 MP, f/2.5, (wide), 1/3.0", 1.0µm                         |

## Realme 8 Pro

![image](https://www.91-img.com/gallery_images_uploads/4/1/41eb2738ac8112d23712d93ac0031742eeba6390.JPG?tr=h-550,w-0,c-at_max)![image](https://www.91-img.com/gallery_images_uploads/9/5/959e7298ff9a0ae1ed73fd2bc115e5fc95586a86.JPG?tr=h-550,w-0,c-at_max)

## Getting Started
To get started with AOSP sources to build TWRP, you'll need to get familiar
with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the AOSP trees to build TWRP, use a command like this:
```bash
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
```
Then to sync up:
```bash
repo sync
# Recomended save more time and disk space
repo sync -j$(nproc --ignore=1) --no-tags -c -s
```

Clone this repo
```bash
mkdir -p device/reame
git clone https://github.com/perilouspike/android_device_realme_RMX3081_unified.git -b android-12.1 devices/realme/RMX3081
```

Build:
```bash
 export ALLOW_MISSING_DEPENDENCIES=true
 . build/envsetup.sh
 lunch twrp_RMX3081-eng
 mka recoveryimage
```
