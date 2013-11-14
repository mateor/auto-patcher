.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.usb.host"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Lcom/android/server/usb/UsbHostManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    :cond_30
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    :cond_44
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .registers 2
    .param p0    # Lcom/android/server/usb/UsbService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->setCurrentUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/usb/UsbService;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;
    .registers 2
    .param p0    # Lcom/android/server/usb/UsbService;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;
    .registers 6
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbSettingsManager;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1e
    monitor-exit v2

    return-object v0

    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private setCurrentUser(I)V
    .registers 4
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbHostManager;->setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V

    :cond_d
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 6
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearDefaults(Ljava/lang/String;)V

    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    return-void
.end method

.method public denyUsbDebugging()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    const-string v6, "UsbService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v1, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v4, "USB Manager State:"

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_1e
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/usb/UsbHostManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_27
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_69

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings for user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_2b .. :try_end_6a} :catchall_6e

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void

    :catchall_6e
    move-exception v4

    :try_start_6f
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v4
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 4
    .param p1    # Landroid/hardware/usb/UsbAccessory;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 4
    .param p1    # Landroid/hardware/usb/UsbDevice;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    return v1
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1    # Landroid/hardware/usb/UsbAccessory;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "USB device mode not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    return-void
.end method

.method public setMassStorageBackingFile(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setMassStorageBackingFile(Ljava/lang/String;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "USB device mode not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    :cond_12
    return-void
.end method
