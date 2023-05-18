# RISC-V

x86, arm

Opensource
Reduce Instruction Set

arm     Raspberry PI
RISC-V  HiFive

20.04 LTS
sudo apt install qemu-system-misc opensbi u-boot-qemu qemu-utils

wget https://cdimage.ubuntu.com/releases/20.04.2/release/ubuntu-20.04.2-preinstalled-server-riscv64.img.xz

xz -dk ubuntu-20.04.2-preinstalled-server-riscv64.img.xz 

qemu-system-riscv64 -machine virt -nographic -m 2048 -smp 2 -bios /usr/lib/riscv64-linux-gnu/opensbi/generic/fw_jump.elf -kernel /usr/lib/u-boot/qemu-riscv64_smode/uboot.elf -device virtio-net-device,netdev=eth0 -netdev user,id=eth0 -drive file=ubuntu-20.04.2-preinstalled-server-riscv64.img,format=raw,if=virtio

software defined radio

Ctrl-a x
username: ubuntu

sudo apt install gcc-riscv64-linux-gnu
qemu-system-riscv64 \
    -machine virt -nographic -m 2048 -smp 4 \
    -bios /usr/lib/riscv64-linux-gnu/opensbi/generic/fw_jump.elf \
    -kernel /usr/lib/u-boot/qemu-riscv64_smode/uboot.elf \
    -device virtio-net-device,netdev=eth0 -netdev user,id=eth0 \
    -drive file=hello,format=raw,if=virtio


