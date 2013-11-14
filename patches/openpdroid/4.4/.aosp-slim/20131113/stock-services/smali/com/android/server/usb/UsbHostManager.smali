.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1
    .param p0    # Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .registers 3

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isBlackListed(III)Z
    .registers 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    if-eq p2, v0, :cond_5

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .registers 41
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # [I
    .param p8    # [I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_47

    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v31

    goto :goto_14

    :catchall_44
    move-exception v4

    monitor-exit v31
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_44

    throw v4

    :cond_47
    :try_start_47
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v30, v4, 0x5

    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_44

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move/from16 v27, v26

    :goto_5a
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_ca

    add-int/lit8 v26, v27, 0x1

    :try_start_62
    aget v5, p7, v27
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_64} :catch_bd
    .catchall {:try_start_62 .. :try_end_64} :catchall_44

    add-int/lit8 v27, v26, 0x1

    :try_start_66
    aget v6, p7, v26
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_68} :catch_ee
    .catchall {:try_start_66 .. :try_end_68} :catchall_44

    add-int/lit8 v26, v27, 0x1

    :try_start_6a
    aget v7, p7, v27
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6c} :catch_bd
    .catchall {:try_start_6a .. :try_end_6c} :catchall_44

    add-int/lit8 v27, v26, 0x1

    :try_start_6e
    aget v8, p7, v26
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_70} :catch_ee
    .catchall {:try_start_6e .. :try_end_70} :catchall_44

    add-int/lit8 v26, v27, 0x1

    :try_start_72
    aget v29, p7, v27

    move/from16 v0, v29

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    const/16 v21, 0x0

    move/from16 v23, v22

    :goto_7c
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_a4

    add-int/lit8 v22, v23, 0x1

    aget v18, p8, v23
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_86} :catch_bd
    .catchall {:try_start_72 .. :try_end_86} :catchall_44

    add-int/lit8 v23, v22, 0x1

    :try_start_88
    aget v19, p8, v22
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_f2
    .catchall {:try_start_88 .. :try_end_8a} :catchall_44

    add-int/lit8 v22, v23, 0x1

    :try_start_8c
    aget v28, p8, v23
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8e} :catch_bd
    .catchall {:try_start_8c .. :try_end_8e} :catchall_44

    add-int/lit8 v23, v22, 0x1

    :try_start_90
    aget v24, p8, v22

    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_7c

    :cond_a4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a9} :catch_f2
    .catchall {:try_start_90 .. :try_end_a9} :catchall_44

    move-result v4

    if-eqz v4, :cond_af

    :try_start_ac
    monitor-exit v31
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_44

    goto/16 :goto_14

    :cond_af
    :try_start_af
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v25
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_f2
    .catchall {:try_start_af .. :try_end_b6} :catchall_44

    add-int/lit8 v25, v25, 0x1

    move/from16 v22, v23

    move/from16 v27, v26

    goto :goto_5a

    :catch_bd
    move-exception v20

    :goto_be
    :try_start_be
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v31

    goto/16 :goto_14

    :cond_ca
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    monitor-exit v31
    :try_end_ec
    .catchall {:try_start_be .. :try_end_ec} :catchall_44

    goto/16 :goto_14

    :catch_ee
    move-exception v20

    move/from16 v26, v27

    goto :goto_be

    :catch_f2
    move-exception v20

    move/from16 v22, v23

    goto :goto_be
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    :cond_14
    monitor-exit v2

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    const-string v2, "  USB Host State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :catchall_45
    move-exception v2

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2

    :cond_28
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_3d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_11

    return-object v1
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 4
    .param p1    # Lcom/android/server/usb/UsbSettingsManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public systemReady()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-exit v2

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
