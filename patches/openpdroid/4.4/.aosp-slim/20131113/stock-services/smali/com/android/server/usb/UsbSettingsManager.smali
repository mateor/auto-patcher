.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbSettingsManager$1;,
        Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbSettingsManager"

.field private static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    invoke-direct {v1, p0, v5}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$1;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    :try_start_2e
    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_37} :catch_74

    iput-object p1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "usb_device_manager.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5c
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->upgradeSingleUserLocked()V

    :cond_67
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->readSettingsLocked()V

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_7d

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void

    :catch_74
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .registers 2
    .param p0    # Lcom/android/server/usb/UsbSettingsManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_b

    :cond_24
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_b

    :cond_24
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .registers 8
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v1, 0x0

    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_31

    aget-object v2, v3, v1

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_31
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v1, 0x0

    :goto_44
    array-length v4, v3

    if-ge v1, v4, :cond_5e

    aget-object v2, v3, v1

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_5e
    monitor-exit v5

    return v0

    :catchall_60
    move-exception v4

    monitor-exit v5
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v4
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2b

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, p1}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2b
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2b

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, p1, v6}, Lcom/android/server/usb/UsbSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2b
    return-object v2
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .registers 11
    .param p1    # Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v1, 0x0

    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x81

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_12
    .catchall {:try_start_4 .. :try_end_b} :catchall_2d

    move-result-object v4

    :try_start_c
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_30

    monitor-exit v6

    :goto_11
    return-void

    :catch_12
    move-exception v2

    const-string v5, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePackageUpdate could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v6

    goto :goto_11

    :catchall_2d
    move-exception v5

    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v5

    :cond_30
    const/4 v3, 0x0

    :goto_31
    :try_start_31
    array-length v5, v0

    if-ge v3, v5, :cond_4d

    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/usb/UsbSettingsManager;->handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_4d
    if-eqz v1, :cond_52

    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_2d

    goto :goto_11
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/pm/ActivityInfo;
    .param p3    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_36
    .catchall {:try_start_2 .. :try_end_7} :catchall_6e

    move-result-object v3

    if-nez v3, :cond_11

    const/4 v5, 0x0

    if-eqz v3, :cond_10

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_10
    :goto_10
    return v5

    :cond_11
    :try_start_11
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_75

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v0, 0x1

    :cond_32
    :goto_32
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36
    .catchall {:try_start_11 .. :try_end_35} :catchall_6e

    goto :goto_14

    :catch_36
    move-exception v1

    :try_start_37
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_6e

    if-eqz v3, :cond_58

    :goto_55
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_58
    move v5, v0

    goto :goto_10

    :cond_5a
    :try_start_5a
    const-string v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/usb/UsbSettingsManager;->clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_36
    .catchall {:try_start_5a .. :try_end_69} :catchall_6e

    move-result v5

    if-eqz v5, :cond_32

    const/4 v0, 0x1

    goto :goto_32

    :catchall_6e
    move-exception v5

    if-eqz v3, :cond_74

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_74
    throw v5

    :cond_75
    if-eqz v3, :cond_58

    goto :goto_55
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 14
    .param p1    # Landroid/content/pm/ResolveInfo;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/hardware/usb/UsbDevice;
    .param p4    # Landroid/hardware/usb/UsbAccessory;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    :try_start_5
    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-nez v3, :cond_2b

    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_72
    .catchall {:try_start_5 .. :try_end_25} :catchall_92

    if-eqz v3, :cond_2a

    :goto_27
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2a
    :goto_2a
    return v5

    :cond_2b
    :try_start_2b
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v6, :cond_99

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_53

    const-string v7, "usb-device"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_72
    .catchall {:try_start_2b .. :try_end_49} :catchall_92

    move-result v7

    if-eqz v7, :cond_6e

    if-eqz v3, :cond_51

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_51
    move v5, v6

    goto :goto_2a

    :cond_53
    if-eqz p4, :cond_6e

    :try_start_55
    const-string v7, "usb-accessory"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_64} :catch_72
    .catchall {:try_start_55 .. :try_end_64} :catchall_92

    move-result v7

    if-eqz v7, :cond_6e

    if-eqz v3, :cond_6c

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6c
    move v5, v6

    goto :goto_2a

    :cond_6e
    :try_start_6e
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_92

    goto :goto_2e

    :catch_72
    move-exception v1

    :try_start_73
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_92

    if-eqz v3, :cond_2a

    goto :goto_27

    :catchall_92
    move-exception v5

    if-eqz v3, :cond_98

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_98
    throw v5

    :cond_99
    if-eqz v3, :cond_2a

    goto :goto_27
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_18

    const-string v4, "package"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_18
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v4, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_37
    const-string v4, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method private readSettingsLocked()V
    .registers 7

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    :try_start_b
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1c
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "preference"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_32} :catch_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_32} :catch_3c
    .catchall {:try_start_b .. :try_end_32} :catchall_4a

    goto :goto_1c

    :catch_33
    move-exception v4

    :cond_34
    :goto_34
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_38
    :try_start_38
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_33
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_4a

    goto :goto_1c

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string v4, "UsbSettingsManager"

    const-string v5, "error reading settings file, deleting to start fresh"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4a

    goto :goto_34

    :catchall_4a
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1    # Landroid/content/Intent;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    :try_start_4
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v4, :cond_52

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_32} :catch_32

    :catch_32
    move-exception v1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "package"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.UID"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_71
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_78
    .catch Landroid/content/ActivityNotFoundException; {:try_start_71 .. :try_end_78} :catch_7c
    .catchall {:try_start_71 .. :try_end_78} :catchall_85

    :goto_78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_7c
    move-exception v1

    :try_start_7d
    const-string v5, "UsbSettingsManager"

    const-string v6, "unable to start UsbPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_85

    goto :goto_78

    :catchall_85
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 18
    .param p1    # Landroid/content/Intent;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/hardware/usb/UsbDevice;
    .param p5    # Landroid/hardware/usb/UsbAccessory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_42

    if-eqz p5, :cond_38

    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_38

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_38

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "uri"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_31
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v4

    const-string v9, "UsbSettingsManager"

    const-string v10, "unable to start UsbAccessoryUriActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_42
    const/4 v2, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_64

    if-nez p3, :cond_64

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_64

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_64

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_64

    move-object v2, v6

    :cond_64
    if-nez v2, :cond_80

    if-eqz p3, :cond_80

    const/4 v5, 0x0

    :goto_69
    if-ge v5, v1, :cond_80

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_b0

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    move-object v2, v6

    :cond_80
    if-eqz v2, :cond_c1

    if-eqz p4, :cond_b3

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    :cond_8f
    :goto_8f
    :try_start_8f
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, p1, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8f .. :try_end_a6} :catch_a7

    goto :goto_38

    :catch_a7
    move-exception v4

    const-string v9, "UsbSettingsManager"

    const-string v10, "startActivity failed"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :cond_b0
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_b3
    if-eqz p5, :cond_8f

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v9}, Lcom/android/server/usb/UsbSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    goto :goto_8f

    :cond_c1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x10000000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v9, 0x1

    if-ne v1, v9, :cond_116

    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "rinfo"

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p4, :cond_10e

    const-string v9, "device"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_ea
    :try_start_ea
    iget-object v9, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/usb/UsbSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ea .. :try_end_f1} :catch_f3

    goto/16 :goto_38

    :catch_f3
    move-exception v4

    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    :cond_10e
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_ea

    :cond_116
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "rlist"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_ea
.end method

.method private upgradeSingleUserLocked()V
    .registers 8

    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1a} :catch_6c
    .catchall {:try_start_13 .. :try_end_1a} :catchall_5f

    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_25
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_64

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "preference"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3b} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_3b} :catch_55
    .catchall {:try_start_1a .. :try_end_3b} :catchall_69

    goto :goto_25

    :catch_3c
    move-exception v0

    move-object v1, v2

    :goto_3e
    :try_start_3e
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to read single-user settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_5f

    :goto_45
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_48
    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    sget-object v5, Lcom/android/server/usb/UsbSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_50
    return-void

    :cond_51
    :try_start_51
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_69

    goto :goto_25

    :catch_55
    move-exception v0

    move-object v1, v2

    :goto_57
    :try_start_57
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to read single-user settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_45

    :catchall_5f
    move-exception v5

    :goto_60
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_64
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    goto :goto_48

    :catchall_69
    move-exception v5

    move-object v1, v2

    goto :goto_60

    :catch_6c
    move-exception v0

    goto :goto_57

    :catch_6e
    move-exception v0

    goto :goto_3e
.end method

.method private writeSettingsLocked()V
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v5, "utf-8"

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const-string v6, "settings"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "package"

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_59} :catch_5a

    goto :goto_30

    :catch_5a
    move-exception v0

    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to write settings"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_69

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    :try_start_6a
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "package"

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v5, 0x0

    const-string v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_74

    :cond_9e
    const/4 v5, 0x0

    const-string v6, "settings"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_ac} :catch_5a

    goto :goto_69
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 8
    .param p1    # Landroid/hardware/usb/UsbAccessory;

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    return-void

    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1    # Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1    # Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1    # Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->clearPackageDefaultsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 8
    .param p1    # Landroid/hardware/usb/UsbDevice;

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "device"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_32

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    return-void

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1    # Landroid/hardware/usb/UsbDevice;

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 13
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;

    iget-object v8, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    const-string v7, "  Device permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_47
    if-ge v4, v1, :cond_6a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_6a
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :catchall_70
    move-exception v7

    monitor-exit v8
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v7

    :cond_73
    :try_start_73
    const-string v7, "  Accessory permissions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_b7
    if-ge v4, v1, :cond_da

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    :cond_da
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_82

    :cond_e0
    const-string v7, "  Device preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ef
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_124

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ef

    :cond_124
    const-string v7, "  Accessory preferences:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_133
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_168

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_133

    :cond_168
    monitor-exit v8
    :try_end_169
    .catchall {:try_start_73 .. :try_end_169} :catchall_70

    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # I

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_18

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # I

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1c

    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3

    return-void

    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    monitor-exit v1

    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    monitor-exit v1

    goto :goto_11

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    goto :goto_11
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 6
    .param p1    # Landroid/hardware/usb/UsbAccessory;

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_e

    const/4 v2, 0x1

    monitor-exit v3

    :goto_d
    return v2

    :cond_e
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1e

    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_d

    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2

    :cond_1e
    :try_start_1e
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b

    goto :goto_d
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbDevice;

    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_e

    const/4 v2, 0x1

    monitor-exit v3

    :goto_d
    return v2

    :cond_e
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_22

    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_d

    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v2

    :cond_22
    :try_start_22
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    goto :goto_d
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "permission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_16
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_26

    :goto_1c
    return-void

    :cond_1d
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c

    :catch_26
    move-exception v1

    goto :goto_1c
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "permission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_16
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_26

    :goto_1c
    return-void

    :cond_1d
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/usb/UsbSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1c

    :catch_26
    move-exception v1

    goto :goto_1c
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .registers 9
    .param p1    # Landroid/hardware/usb/UsbAccessory;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-nez p2, :cond_1f

    :try_start_d
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    move v0, v2

    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    :cond_1b
    monitor-exit v4

    return-void

    :cond_1d
    move v0, v3

    goto :goto_16

    :cond_1f
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move v0, v2

    :goto_2c
    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    move v0, v3

    goto :goto_2c
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 9
    .param p1    # Landroid/hardware/usb/UsbDevice;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-nez p2, :cond_1f

    :try_start_d
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    move v0, v2

    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/usb/UsbSettingsManager;->writeSettingsLocked()V

    :cond_1b
    monitor-exit v4

    return-void

    :cond_1d
    move v0, v3

    goto :goto_16

    :cond_1f
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move v0, v2

    :goto_2c
    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :catchall_34
    move-exception v2

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    move v0, v3

    goto :goto_2c
.end method
