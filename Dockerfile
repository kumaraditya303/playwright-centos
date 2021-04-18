FROM centos

RUN yum update -y && yum install epel-release -y && yum install python38 -y
RUN python3 -m pip install playwright -U
RUN python3 -m playwright install

# Chromium

RUN yum update -y && \
    yum install -y alsa-lib-0:1.2.3.2-1.el8.x86_64 \
    at-spi2-atk-0:2.26.2-1.el8.x86_64  \
    at-spi2-core-0:2.28.0-1.el8.x86_64 \
    atk-0:2.28.1-1.el8.x86_64          \
    bash-0:4.4.19-12.el8.x86_64        \
    cairo-0:1.15.12-3.el8.x86_64       \
    cups-libs-1:2.2.6-38.el8.x86_64    \
    dbus-libs-1:1.12.8-12.el8_3.x86_64 \
    expat-0:2.2.5-4.el8.x86_64 \
    flac-libs-0:1.3.2-9.el8.x86_64 \
    gdk-pixbuf2-0:2.36.12-5.el8.x86_64 \
    glib2-0:2.56.4-8.el8.x86_64 \
    glibc-0:2.28-127.el8.x86_64 \
    gtk3-0:3.22.30-6.el8.x86_64 \
    libX11-0:1.6.8-3.el8.x86_64 \
    libXcomposite-0:0.4.4-14.el8.x86_64 \
    libXdamage-0:1.1.4-14.el8.x86_64 \
    libXext-0:1.3.4-1.el8.x86_64 \
    libXfixes-0:5.0.3-7.el8.x86_64 \
    libXrandr-0:1.5.2-1.el8.x86_64 \
    libXtst-0:1.2.3-7.el8.x86_64 \
    libcanberra-gtk3-0:0.30-16.el8.x86_64 \
    libdrm-0:2.4.101-1.el8.x86_64 \
    libgcc-0:8.3.1-5.1.el8.x86_64 \
    libstdc++-0:8.3.1-5.1.el8.x86_64 \
    libxcb-0:1.13.1-1.el8.x86_64 \
    libxkbcommon-0:0.9.1-1.el8.x86_64 \
    libxshmfence-0:1.3-2.el8.x86_64 \
    libxslt-0:1.1.32-5.el8.x86_64 \
    mesa-libgbm-0:20.1.4-1.el8.x86_64 \
    nspr-0:4.25.0-2.el8_2.x86_64 \
    nss-0:3.53.1-17.el8_3.x86_64 \
    nss-util-0:3.53.1-17.el8_3.x86_64 \
    pango-0:1.42.4-6.el8.x86_64 \
    policycoreutils-0:2.9-9.el8.x86_64 \
    policycoreutils-python-utils-0:2.9-9.el8.noarch \
    zlib-0:1.2.11-16.2.el8_3.x86_64

# Firefox

RUN yum update -y && \ 
    yum install -y atk-0:2.28.1-1.el8.x86_64 \
    bash-0:4.4.19-12.el8.x86_64 \
    cairo-0:1.15.12-3.el8.x86_64 \
    cairo-gobject-0:1.15.12-3.el8.x86_64 \
    centos-indexhtml-0:8.0-0.el8.noarch \
    dbus-glib-0:0.110-2.el8.x86_64 \
    dbus-libs-1:1.12.8-12.el8_3.x86_64 \
    fontconfig-0:2.13.1-3.el8.x86_64 \
    freetype-0:2.9.1-4.el8_3.1.x86_64 \
    gdk-pixbuf2-0:2.36.12-5.el8.x86_64 \
    glib2-0:2.56.4-8.el8.x86_64 \
    glibc-0:2.28-127.el8.x86_64 \
    gtk2-0:2.24.32-4.el8.x86_64 \
    gtk3-0:3.22.30-6.el8.x86_64 \
    libX11-0:1.6.8-3.el8.x86_64 \
    libX11-xcb-0:1.6.8-3.el8.x86_64 \
    libXcomposite-0:0.4.4-14.el8.x86_64 \
    libXcursor-0:1.1.15-3.el8.x86_64 \
    libXdamage-0:1.1.4-14.el8.x86_64 \
    libXext-0:1.3.4-1.el8.x86_64 \
    libXfixes-0:5.0.3-7.el8.x86_64 \
    libXi-0:1.7.10-1.el8.x86_64 \
    libXrender-0:0.9.10-7.el8.x86_64 \
    libXt-0:1.1.5-12.el8.x86_64 \
    liberation-fonts-common-1:2.00.3-7.el8.noarch \
    liberation-sans-fonts-1:2.00.3-7.el8.noarch \
    libffi-0:3.1-22.el8.x86_64 \
    libgcc-0:8.3.1-5.1.el8.x86_64 \
    libstdc++-0:8.3.1-5.1.el8.x86_64 \
    libxcb-0:1.13.1-1.el8.x86_64 \
    mozilla-filesystem-0:1.9-18.el8.x86_64 \
    nspr-0:4.25.0-2.el8_2.x86_64 \
    nss-0:3.53.1-17.el8_3.x86_64 \
    nss-util-0:3.53.1-17.el8_3.x86_64 \
    p11-kit-trust-0:0.23.14-5.el8_0.x86_64 \
    pango-0:1.42.4-6.el8.x86_64 \
    pipewire-libs-0:0.3.6-1.el8.x86_64 \
    zlib-0:1.2.11-16.2.el8_3.x86_64 

RUN yum update -y && \
    yum install -y harfbuzz-icu-1.7.5-3.el8.x86_64 \
    libvpx