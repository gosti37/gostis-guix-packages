# Gosti's Guix Packages

This repository is created by gosti37 for software that doesn't exist on the official Guix channel yet.

## Licensing

The package definitions (Guile Scheme code) included in this repository are open to use for anyone under the **GPLv3** license.

Individual software packages included here by these definitions are subject to their own respective upstream licences, which are explicitly declared within the package definitions.

## Setup

In order to use this repository on your Guix machine, you can follow these steps:

    1 - Open your channels.scm file
    
        ```bash
        nano ~/.config/guix/channels.scm
        ```
           
    2 - Add the repository

        ```scheme
        (cons* (channel
		    (name 'gostis-package-list)
		    (url "https://github.com/gosti37/gostis-guix-packages"))
        %default-channels)
        ```

    3 - Run a Guix pull to update your channels

        ```bash
        guix pull
        ```

    4 - Enjoy
