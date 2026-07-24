SUMMARY = "A script that allows Google internal tools to recognize the host VM as a Trout device."

LICENSE = "Apache-2.0"

inherit allarch

SRC_URI = " \
    file://getprop \
"

do_install() {
    install -d ${D}${prefix}/local/bin
    install -m 0755 ${WORKDIR}/getprop ${D}${prefix}/local/bin
}

FILES_${PN} += "${prefix}/local/bin/getprop"
