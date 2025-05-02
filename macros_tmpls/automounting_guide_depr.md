!!! warning "Deprecation notice"

    {# TODO: Write section explaining partition labeling requirements and procedure #}
    If you are using the latest version of Bazzite, this procedure is no longer needed. [`ublue-os-media-automount-udev`](https://github.com/ublue-os/packages/tree/main/packages/ublue-os-media-automount-udev) will handle automounting in non-removable devices.

    Only **labeled** partitions with the **ext4** or **BTRFS** filesystem will be automounted.
    
    Partitions will be mounted under `/run/media/system/PARTITION_LABEL`.
    You can place a custom named shortcut to the partition with:

    ```sh
    sudo ln -s /run/media/system/PARTITION_LABEL /mnt/CUSTOM_NAME
    ```
