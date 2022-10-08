# lure-os
használat:
    telepísd a dockert.
    telepísd fel a qemut
    készísd el a docker környezetet:
        docker build buildenv -t myos-buildenv
    
    lépj bele:
        windows:
            docker run --rm -it -v "%cd%":/root/env myos-buildenv

        linux/mac:
            docker run --rm -it -v "$(pwd)":/root/env myos-buildenv

    készísd el az isot:
        make build-x86_64

    indísd el a rendszer:
        qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso