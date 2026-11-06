# Car LCD
A raspberry-pi based LCD that logs OBD data.

## Hardware Specifications
**Requirements**
- _Raspberry Pi 3b+_
- _Raspberry Pi Multi-System 3.5" Screen_
- _64GB Micro SD-Card_
- _Micro SD-Card Adapter_
- _OBDLink EX_

**Optional**
- _Magnetic Strip_: used to attach the Pi at a secure location within your vehicle

## Configuring LCD-Screen
Note, the follow instructions were made within a Linux environment, an alternative method may be necessary for Windows
1. [Download](https://www.sdcard.org/downloads/sd-memory-card-formatter-for-linux/) the SD Card Formatter to wipe any existing data for the imaging process.
   1. Use the `lsblk` command to discover the Micro SD-Card.
   2. Run `sudo <path to formatter> -l <volume-name> --overwrite /dev/sda<X>`
<br  /><br  />
2. [Download](https://www.raspberrypi.com/software/) the latest Raspberry Pi Imager to install the Raspberry Pi OS to your Raspberry Pi.
   1. Execute `sudo <path to imager>` to configure your Raspberry Pi with an appropriate OS.
<br  /><br  />
3. SSH to the Pi with the configured SD-Card
<br  /><br  />
4. Clone the necessary git repositories below. `lcd32` provides modern drivers for the `LCD-show` repository, you need both for the LCD to work properly.
    - https://github.com/goodtft/LCD-show.git
    - https://github.com/katzenjens/lcd32.git
<br  /><br  />
5. `cd LCD-show/` and find the executable for your screen. In this case it's `MHS35-show`.
   1. Run `sudo ./MHS35-show`
<br  /><br  />
6. If on reboot, the LCD continues to stay white or hangs at a service, the `lcd32` repository will need to be used.
   1. SSH back onto the Pi.
   2. `cd lcd32/`
   3. Execute the installer most appropriate to your build, in this case: `sudo ./install35.sh`
   4. Explicitly invoke a reboot, as it doesn't do so automatically, to apply the changes.


## Media Attributions
All the media that this project consumes is attributed to the following organisations or individuals, of which I also 
share much appreciation toward for creating free content for individuals like me to use freely.

   - _[Image]_ Andrean Prabowo's '[Settings free icon](https://www.flaticon.com/free-icon/settings_8956191?term=wrench&page=1&position=29&origin=search&related_id=8956191)'
   - _[Image]_ Magnific '[Musical Note free icon](https://www.flaticon.com/free-icon/musical-note_461146?term=note&page=1&position=8&origin=search&related_id=461146)'
   - _[Image]_ CreativeCons '[Shopping Bag free icon](https://www.flaticon.com/free-icon/shopping-bag_2956820?term=shopping%20basket&page=1&position=21&origin=search&related_id=2956820)'
   - _[Image]_ Gregor Cresnar '[Power free icon](https://www.flaticon.com/free-icon/power_159607?term=power&page=1&position=2&origin=search&related_id=159607)'
   - _[Image]_ Mayor Icons '[Power free icon](https://www.flaticon.com/free-icon/power_8205444?term=power&page=1&position=1&origin=search&related_id=8205444)'
   - _[Image]_ Slamlabs '[Scanner free icon](https://www.flaticon.com/free-icon/scanner_17682428?term=obd&page=1&position=3&origin=search&related_id=17682428)'
   - _[Image]_ Magnific '[Download Musical Theme Symbol Of A Music Note With An Arrow Pointing Down free icon](https://www.flaticon.com/free-icon/download-musical-theme-symbol-of-a-music-note-with-an-arrow-pointing-down_26867?term=music%20download&page=1&position=6&origin=search&related_id=26867)' 
   - _[Image]_ Magnific '[Music Player free icon](https://www.flaticon.com/free-icon/music-player_500148?term=music&page=1&position=2&origin=search&related_id=500148)'
   - _[Image]_ Magnific '[Save In Folder free icon](https://www.flaticon.com/free-icon/save-in-folder_62327?term=save%20in%20folder&page=1&position=5&origin=search&related_id=62327)'
   - _[Image]_ Magnific '[Magnifying Glass free icon](https://www.flaticon.com/search?author_id=1&style_id&type=standard&word=serach)'

   - _[Font **PERSONAL USE ONLY**]_ Style-7 '[Digital 7](https://www.dafont.com/digital-7.font)'
   - _[Font **PERSONAL USE ONLY**]_ Brøderbund Software '[Varsity](https://www.dafont.com/varsity-2.font)'