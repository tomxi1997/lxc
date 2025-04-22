meson setup build -Dprefix=/data/lxc \
                            -Dinit-script=sysvinit \
                            -Druntime-path=/data/local/tmp \
                            -Dstrip=true \
                            -Dd_lto=true \
                            -Dcapabilities=false \
                            -Dseccomp=false \
                            -Dselinux=false \
                            -Dapparmor=false \
                            -Dopenssl=false \
                            -Dlog-path=/data/lxc/var/log/lxc \
                            -Ddata-path=/data/lxc/lib/lxc \
                            --localstatedir=/data/lxc/var \
                            --buildtype release \
                            --cross-file ./cross.txt \
                            --wipe
          meson compile -C build
          sudo ninja -C build install