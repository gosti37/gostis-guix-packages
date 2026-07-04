(define-module (gostis-package-list libglibutil)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module (gnu packages commencement)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages glib))

(define-public libglibutil
  (package
    (name "libglibutil")
    (version "1.0.82")
    (source
     (origin
        (method git-fetch)
        (uri (git-reference
        	(url "https://github.com/gosti37/better-libglibutil")
        	(commit (string-append "v" version))))
        (sha256
          (base32
            "11gaw5b9i7f55m1hq7a1bhkqlqjgmml3m5j5z377apazmimwq6wx"))))
    (build-system meson-build-system)	
    (native-inputs
      (list pkg-config))
    (inputs
      (list glib))
    (synopsis "Library of GLib utilities")
    (description
      "Libglibutil is a library providing utility functions built on GLib, now provided with the Meson build system for easier setup process and ISO C99 support for general compatibility")
    (home-page "https://github.com/sailfishos/libglibutil")
    (license license:bsd-3)))
libglibutil
