mkdir twrp
cd twrp
mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo
sudo apt-get install python-is-python3
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync
git clone https://github.com/takumi021/android_device_realme_r5x-twrp device/realme/r5x
. b*/e* && lunch twrp_r5x-eng && make recoveryimage
