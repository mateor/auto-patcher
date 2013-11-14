.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mSendUmsConnectedOnBoot:Z

.field private volatile mSystemReady:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    iput-boolean v1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    iput-object v4, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/MountService$3;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_72
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_10a

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    new-instance v10, Landroid/os/HandlerThread;

    const-string v0, "MountService"

    invoke-direct {v10, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v13, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v11

    if-eqz v11, :cond_c9

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_c9
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    new-instance v4, Lcom/android/server/NativeDaemonConnector;

    const-string v6, "vold"

    const/16 v7, 0x1f4

    const-string v8, "VoldConnector"

    const/16 v9, 0x19

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v12, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v12, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_10a
    move-exception v0

    :try_start_10b
    monitor-exit v1
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .registers 5
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;)V
    .registers 1
    .param p0    # Lcom/android/server/MountService;

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 3
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Landroid/os/storage/StorageVolume;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Lcom/android/internal/app/IMediaContainerService;

    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Lcom/android/server/MountService$ObbState;

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)V
    .registers 1
    .param p0    # Lcom/android/server/MountService;

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .registers 1
    .param p0    # Lcom/android/server/MountService;

    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Landroid/os/UserHandle;

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/MountService;

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .registers 2
    .param p0    # Lcom/android/server/MountService;
    .param p1    # Landroid/os/storage/StorageVolume;

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .param p1    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_48
    move-exception v1

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 6
    .param p1    # Landroid/os/storage/StorageVolume;

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_52

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Z

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    :goto_7
    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_31
    const-string v2, "Android/obb"

    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_68

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_57
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31

    :cond_68
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_7d
    if-eqz p2, :cond_8e

    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    :cond_8e
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .registers 8
    .param p1    # Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_30

    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 10
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_13
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_13} :catch_14

    :goto_13
    return v2

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_1f

    const/4 v2, -0x2

    goto :goto_13

    :cond_1f
    const/16 v2, 0x193

    if-ne v0, v2, :cond_25

    const/4 v2, -0x4

    goto :goto_13

    :cond_25
    const/4 v2, -0x1

    goto :goto_13
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_16
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_16} :catch_2a

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_29

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    :cond_29
    :goto_29
    return v2

    :catch_2a
    move-exception v1

    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 12
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_20

    :try_start_d
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_1f} :catch_23

    :cond_1f
    :goto_1f
    return v3

    :catchall_20
    move-exception v5

    :try_start_21
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v5

    :catch_23
    move-exception v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    const/16 v5, 0x191

    if-ne v1, v5, :cond_36

    const/4 v3, -0x2

    :goto_2e
    if-eqz v0, :cond_1f

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_1f

    :cond_36
    const/16 v5, 0x192

    if-ne v1, v5, :cond_43

    const-string v5, "nofs"

    invoke-direct {p0, v4, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_NOFS"

    const/4 v3, -0x3

    goto :goto_2e

    :cond_43
    const/16 v5, 0x193

    if-ne v1, v5, :cond_50

    const-string v5, "unmountable"

    invoke-direct {p0, v4, v5}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    const/4 v3, -0x4

    goto :goto_2e

    :cond_50
    const/4 v3, -0x1

    goto :goto_2e
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_32

    const-string v1, "share"

    :goto_26
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :goto_31
    return-void

    :cond_32
    const-string v1, "unshare"
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_34} :catch_35

    goto :goto_26

    :catch_35
    move-exception v0

    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .registers 13
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z

    const/16 v3, 0x194

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    :goto_f
    return v3

    :cond_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    :try_start_1c
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_45

    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_35
    :goto_35
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_3d} :catch_4d

    :try_start_3d
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_56

    move v3, v4

    goto :goto_f

    :cond_45
    if-eqz p2, :cond_35

    :try_start_47
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_4c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_35

    :catch_4d
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    if-ne v1, v3, :cond_59

    const/4 v3, -0x5

    goto :goto_f

    :catchall_56
    move-exception v4

    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw v4
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_58 .. :try_end_59} :catch_4d

    :cond_59
    const/16 v3, 0x195

    if-ne v1, v3, :cond_5f

    const/4 v3, -0x7

    goto :goto_f

    :cond_5f
    const/4 v3, -0x1

    goto :goto_f
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .registers 5

    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_9

    monitor-exit v3

    :goto_22
    return-object v1

    :cond_23
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_22

    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method

.method private getUmsEnabling()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private handleSystemReady()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5
    new-instance v4, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_4f

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "unmounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_15

    const-string v7, "MountService"

    const-string v8, "Boot-time mount failed (%d)"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catchall_4f
    move-exception v7

    :try_start_50
    monitor-exit v8
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v7

    :cond_52
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-direct {p0, v7, v2, v11, v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_15

    :cond_60
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_63
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_69
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_69

    const-string v7, "mounted"

    invoke-direct {p0, v6, v7}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_69

    :catchall_81
    move-exception v7

    monitor-exit v8
    :try_end_83
    .catchall {:try_start_63 .. :try_end_83} :catchall_81

    throw v7

    :cond_84
    :try_start_84
    monitor-exit v8
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_81

    iget-boolean v7, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v7, :cond_8e

    invoke-direct {p0, v12}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    iput-boolean v11, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    :cond_8e
    return-void
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    goto :goto_6

    :cond_b
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method public static maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/io/File;
    .param p2    # [Ljava/io/File;

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_c

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Paths must be 1:1 mapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5d
    :goto_5d
    return-object p0

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_61
    const/4 p0, 0x0

    goto :goto_5d
.end method

.method private notifyShareAvailabilityChange(Z)V
    .registers 11
    .param p1    # Z

    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_d
    if-ltz v2, :cond_39

    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2d

    :try_start_17
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_30
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    :goto_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :catch_1f
    move-exception v5

    :try_start_20
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    :catchall_2d
    move-exception v6

    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v6

    :catch_30
    move-exception v1

    :try_start_31
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_39
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2d

    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_69

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    :goto_42
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    if-nez p1, :cond_68

    if-eqz v4, :cond_68

    const-string v6, "shared"

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/server/MountService$6;

    const-string v7, "MountService#AvailabilityChange"

    invoke-direct {v6, p0, v7, v3}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$6;->start()V

    :cond_68
    return-void

    :cond_69
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_42
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    const/4 v5, 0x7

    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_28

    const/4 v0, 0x0

    if-ne p3, v5, :cond_1d

    if-eq p4, p3, :cond_1d

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    :cond_1d
    const/4 v3, -0x1

    if-ne p4, v3, :cond_2b

    :cond_20
    :goto_20
    if-eqz v0, :cond_27

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v3

    :cond_2b
    if-eqz p4, :cond_20

    const/4 v3, 0x1

    if-ne p4, v3, :cond_56

    const-string v3, "bad_removal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "nofs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "unmountable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_20

    :cond_56
    const/4 v3, 0x2

    if-eq p4, v3, :cond_20

    const/4 v3, 0x3

    if-ne p4, v3, :cond_64

    const-string v3, "checking"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_20

    :cond_64
    const/4 v3, 0x4

    if-ne p4, v3, :cond_6f

    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto :goto_20

    :cond_6f
    const/4 v3, 0x5

    if-ne p4, v3, :cond_75

    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto :goto_20

    :cond_75
    const/4 v3, 0x6

    if-eq p4, v3, :cond_20

    if-ne p4, v5, :cond_8e

    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    const-string v3, "shared"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_SHARED"

    goto :goto_20

    :cond_8e
    const/16 v3, 0x8

    if-ne p4, v3, :cond_9a

    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_9a
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20
.end method

.method private readStorageListLocked()V
    .registers 32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v19, 0x10f0010

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    :try_start_25
    const-string v3, "StorageList"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_32} :catch_158
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_19e
    .catchall {:try_start_25 .. :try_end_32} :catchall_161

    move-result-object v17

    if-nez v17, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_1d4

    const/16 v20, 0x1

    :goto_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_45
    :goto_45
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1cd

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_45

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    goto :goto_45

    :cond_61
    :try_start_61
    const-string v3, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/4 v3, 0x5

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x400

    mul-long v27, v27, v29

    const-wide/16 v29, 0x400

    mul-long v10, v27, v29

    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "got storage path: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " description: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " primary: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " removable: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " emulated: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " mtpReserve: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " allowMassStorage: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, " maxFileSize: "

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_18e

    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v26

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_142
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_157
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_157} :catch_158
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_157} :catch_19e
    .catchall {:try_start_61 .. :try_end_157} :catchall_161

    goto :goto_142

    :catch_158
    move-exception v16

    :try_start_159
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_161
    .catchall {:try_start_159 .. :try_end_161} :catchall_161

    :catchall_161
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_1d1

    const/16 v20, 0x1

    :goto_16a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_172
    :goto_172
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_172

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    goto :goto_172

    :cond_18e
    if-eqz v23, :cond_192

    if-nez v15, :cond_1a7

    :cond_192
    :try_start_192
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_199
    :goto_199
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_19c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_192 .. :try_end_19c} :catch_158
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_19c} :catch_19e
    .catchall {:try_start_192 .. :try_end_19c} :catchall_161

    goto/16 :goto_2c

    :catch_19e
    move-exception v16

    :try_start_19f
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1a7
    .catchall {:try_start_19f .. :try_end_1a7} :catchall_161

    :cond_1a7
    :try_start_1a7
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v27, "unmounted"

    move-object/from16 v0, v27

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a7 .. :try_end_1c8} :catch_158
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1c8} :catch_19e
    .catchall {:try_start_1a7 .. :try_end_1c8} :catchall_161

    goto :goto_199

    :cond_1c9
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    :cond_1cd
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :cond_1d1
    const/16 v20, 0x0

    goto :goto_16a

    :cond_1d4
    const/16 v20, 0x0

    goto/16 :goto_3d
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .param p1    # Lcom/android/server/MountService$ObbState;

    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_22

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1    # Landroid/os/storage/StorageVolume;

    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/storage/StorageVolume;
    .param p3    # Landroid/os/UserHandle;

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_11

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_8
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_11
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_8
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .registers 14
    .param p1    # Landroid/os/storage/StorageVolume;
    .param p2    # Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v7
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void

    :catchall_2e
    move-exception v6

    :try_start_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v6

    :cond_31
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_88

    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_88
    :goto_88
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_8b
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_93
    if-ltz v2, :cond_cd

    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_c1

    :try_start_9d
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_c4
    .catchall {:try_start_9d .. :try_end_a2} :catchall_c1

    :goto_a2
    add-int/lit8 v2, v2, -0x1

    goto :goto_93

    :cond_a5
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_88

    :catch_b3
    move-exception v5

    :try_start_b4
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a2

    :catchall_c1
    move-exception v6

    monitor-exit v7
    :try_end_c3
    .catchall {:try_start_b4 .. :try_end_c3} :catchall_c1

    throw v6

    :catch_c4
    move-exception v1

    :try_start_c5
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2

    :cond_cd
    monitor-exit v7
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_c1

    goto/16 :goto_2d
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .param p1    # Ljava/util/concurrent/CountDownLatch;

    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_0

    :catch_32
    move-exception v0

    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    :try_start_7
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_1f

    move-result v0

    :goto_15
    if-nez v0, :cond_1e

    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void

    :catch_1f
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_39} :catch_3b

    move-result v2

    :goto_3a
    return v2

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_3a
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Z

    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_c
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_4a

    const-string v2, "1"

    :goto_39
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_3e} :catch_4d

    :goto_3e
    if-nez v1, :cond_49

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_43
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_50

    :cond_49
    return v1

    :cond_4a
    :try_start_4a
    const-string v2, "0"
    :try_end_4c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4a .. :try_end_4c} :catch_4d

    goto :goto_39

    :catch_4d
    move-exception v0

    const/4 v1, -0x1

    goto :goto_3e

    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_48

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$7;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return v0

    :catch_49
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_48
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    const/4 v3, 0x0

    :try_start_13
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2c

    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_2c
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_31} :catch_45

    :goto_31
    if-nez v3, :cond_44

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_36
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_52

    :cond_44
    return v3

    :catch_45
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    const/16 v4, 0x195

    if-ne v1, v4, :cond_50

    const/4 v3, -0x7

    goto :goto_31

    :cond_50
    const/4 v3, -0x1

    goto :goto_31

    :catchall_52
    move-exception v4

    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_43

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " without permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_42
    return-void

    :cond_43
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v14

    :try_start_48
    const-string v13, "  mObbMounts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const-string v13, "    Key="

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/IBinder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_87
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    const-string v13, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_87

    :catchall_a4
    move-exception v13

    monitor-exit v14
    :try_end_a6
    .catchall {:try_start_48 .. :try_end_a6} :catchall_a4

    throw v13

    :cond_a7
    :try_start_a7
    const-string v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v13, "  mObbPathToStateMap:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    const-string v13, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, " -> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v13}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c1

    :cond_f6
    monitor-exit v14
    :try_end_f7
    .catchall {:try_start_a7 .. :try_end_f7} :catchall_a4

    const-string v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_103
    const-string v13, "  mVolumes:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_113
    if-ge v7, v3, :cond_15a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    const-string v13, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      state="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_113

    :cond_15a
    monitor-exit v14
    :try_end_15b
    .catchall {:try_start_103 .. :try_end_15b} :catchall_174

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v13, "  mConnection:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_42

    :catchall_174
    move-exception v13

    :try_start_175
    monitor-exit v14
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    throw v13
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 9
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_37
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_37} :catch_38

    :goto_37
    return v1

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_37
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .param p1    # Ljava/lang/String;

    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    const/4 v1, -0x1

    goto :goto_1b
.end method

.method public finishMediaUpdate()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    :goto_25
    return v1

    :catch_26
    move-exception v0

    const/4 v1, -0x1

    goto :goto_25
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;

    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .registers 9

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    :goto_25
    return v2

    :catch_26
    move-exception v0

    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catch_2f
    move-exception v0

    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_11
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_35

    if-nez v3, :cond_38

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return-object v4

    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_55} :catch_57

    move-result-object v4

    goto :goto_34

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v5, 0x196

    if-eq v0, v5, :cond_34

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1    # Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_28} :catch_2a

    move-result-object v3

    :goto_29
    return-object v3

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v3, 0x196

    if-ne v0, v3, :cond_44

    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_29

    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    :try_start_c
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_21} :catch_23

    move-result-object v1

    :goto_22
    return-object v1

    :catch_23
    move-exception v0

    new-array v1, v6, [Ljava/lang/String;

    goto :goto_22
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1    # Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_28} :catch_2a

    move-result-object v3

    :goto_29
    return-object v3

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v3, 0x196

    if-ne v0, v3, :cond_44

    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_29

    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 14
    .param p1    # Ljava/lang/String;

    const/4 v11, 0x0

    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    new-array v0, v6, [I

    const/4 v2, 0x0

    :goto_26
    array-length v6, v4

    if-ge v2, v6, :cond_55

    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_30} :catch_56

    move-result-object v5

    const/4 v6, 0x0

    :try_start_32
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_32 .. :try_end_3a} :catch_56

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :catch_3d
    move-exception v3

    :try_start_3e
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3e .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    return-object v0

    :catch_56
    move-exception v1

    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v0, v11, [I

    goto :goto_55
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 14

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_4a

    move v0, v7

    :goto_19
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1c
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4c

    :cond_3e
    move v5, v7

    :goto_3f
    if-nez v0, :cond_43

    if-eqz v5, :cond_26

    :cond_43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_47
    move-exception v7

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_47

    throw v7

    :cond_4a
    move v0, v8

    goto :goto_19

    :cond_4c
    move v5, v8

    goto :goto_3f

    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_47

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_39

    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    const-string v0, "removed"

    :cond_39
    monitor-exit v2

    return-object v0

    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;

    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;

    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_e
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ums"

    invoke-direct {p0, v1, v2}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :try_start_1f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_64

    move-result-object p2

    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_43
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    :try_start_51
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_51 .. :try_end_63} :catch_89

    :goto_63
    return v5

    :catch_64
    move-exception v1

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_63

    :catch_89
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_63

    :cond_8f
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b6

    :try_start_9d
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_af
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9d .. :try_end_af} :catch_b0

    goto :goto_63

    :catch_b0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_63

    :cond_b6
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public monitor()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    :cond_9
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/storage/IObbActionListener;
    .param p5    # I

    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v2, -0x6

    monitor-exit v4

    :cond_18
    :goto_18
    return v2

    :cond_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4b

    const/4 v2, 0x0

    :try_start_1b
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_3c} :catch_4e

    :cond_3c
    :goto_3c
    if-nez v2, :cond_18

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_41
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_18

    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_48

    throw v3

    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v3, 0x195

    if-eq v0, v3, :cond_3c

    const/4 v2, -0x1

    goto :goto_3c
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;

    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    new-instance v0, Lcom/android/server/MountService$4;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$4;->start()V

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 20
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    const/16 v11, 0x25d

    move/from16 v0, p1

    if-ne v0, v11, :cond_22

    const/4 v11, 0x2

    aget-object v11, p3, v11

    const/4 v12, 0x3

    aget-object v12, p3, v12

    const/4 v13, 0x7

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xa

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_20
    :goto_20
    const/4 v11, 0x1

    :goto_21
    return v11

    :cond_22
    const/16 v11, 0x276

    move/from16 v0, p1

    if-eq v0, v11, :cond_34

    const/16 v11, 0x277

    move/from16 v0, p1

    if-eq v0, v11, :cond_34

    const/16 v11, 0x278

    move/from16 v0, p1

    if-ne v0, v11, :cond_11a

    :cond_34
    const/4 v1, 0x0

    const/4 v11, 0x2

    aget-object v5, p3, v11

    const/4 v11, 0x3

    aget-object v8, p3, v11

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v11, 0x6

    :try_start_3e
    aget-object v11, p3, v11

    const/4 v12, 0x1

    const/4 v13, 0x6

    aget-object v13, p3, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_61} :catch_98

    move-result v7

    :goto_62
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_67
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    monitor-exit v12
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_a1

    const/16 v11, 0x276

    move/from16 v0, p1

    if-ne v0, v11, :cond_a4

    new-instance v11, Lcom/android/server/MountService$5;

    const-string v12, "MountService#VolumeDiskInserted"

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12, v8}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/MountService$5;->start()V

    :goto_8e
    if-eqz v1, :cond_20

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_20

    :catch_98
    move-exception v4

    const-string v11, "MountService"

    const-string v12, "Failed to parse major/minor"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    :catchall_a1
    move-exception v11

    :try_start_a2
    monitor-exit v12
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v11

    :cond_a4
    const/16 v11, 0x277

    move/from16 v0, p1

    if-ne v0, v11, :cond_d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "bad_removal"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bb

    const/4 v11, 0x1

    goto/16 :goto_21

    :cond_bb
    const-string v11, "unmounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v11, "unmounted"

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v12}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    const-string v11, "removed"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    goto :goto_8e

    :cond_d5
    const/16 v11, 0x278

    move/from16 v0, p1

    if-ne v0, v11, :cond_f5

    const-string v11, "unmounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v11, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v12}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    const-string v11, "bad_removal"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto :goto_8e

    :cond_f5
    const/16 v11, 0x2bc

    move/from16 v0, p1

    if-ne v0, v11, :cond_103

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto :goto_8e

    :cond_103
    const-string v11, "MountService"

    const-string v12, "Unknown code {%d}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    :cond_11a
    const/4 v11, 0x0

    goto/16 :goto_21
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .param p1    # Landroid/os/storage/IMountServiceListener;

    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    :try_start_8
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17
    .catchall {:try_start_8 .. :try_end_15} :catchall_20

    :goto_15
    :try_start_15
    monitor-exit v3

    return-void

    :catch_17
    move-exception v1

    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1e
    const/4 v1, -0x6

    monitor-exit v3

    :goto_20
    return v1

    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_3c

    const/4 v1, 0x0

    :try_start_23
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_20

    :catch_39
    move-exception v0

    const/4 v1, -0x1

    goto :goto_20

    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 10
    .param p1    # Z

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    const-string v5, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ums"

    if-eqz p1, :cond_3b

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v3, p0, v1, v0, v7}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    :cond_3b
    if-nez p1, :cond_f

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after disabling share method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 14
    .param p1    # Landroid/os/storage/IMountShutdownObserver;

    const-string v8, "android.permission.SHUTDOWN"

    invoke-direct {p0, v8}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    const-string v8, "MountService"

    const-string v9, "Shutting down"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_f
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    :cond_39
    :goto_39
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    new-instance v7, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v7, p0, v3, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    iget-object v8, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19

    :catchall_53
    move-exception v8

    monitor-exit v9
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_53

    throw v8

    :cond_56
    :try_start_56
    const-string v8, "checking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/16 v4, 0x1e

    move v5, v4

    :goto_61
    const-string v8, "checking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_53

    move-result v8

    if-eqz v8, :cond_9c

    add-int/lit8 v4, v5, -0x1

    if-ltz v5, :cond_80

    const-wide/16 v10, 0x3e8

    :try_start_6f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_78
    .catchall {:try_start_6f .. :try_end_72} :catchall_53

    :try_start_72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    move v5, v4

    goto :goto_61

    :catch_78
    move-exception v2

    const-string v8, "MountService"

    const-string v10, "Interrupted while waiting for media"

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_80
    :goto_80
    if-nez v4, :cond_39

    const-string v8, "MountService"

    const-string v10, "Timed out waiting for media to check"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_53

    goto :goto_39

    :cond_8a
    if-eqz p1, :cond_19

    const/4 v8, 0x0

    :try_start_8d
    invoke-interface {p1, v8}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_90} :catch_91
    .catchall {:try_start_8d .. :try_end_90} :catchall_53

    goto :goto_19

    :catch_91
    move-exception v0

    :try_start_92
    const-string v8, "MountService"

    const-string v10, "RemoteException when shutting down"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_9a
    monitor-exit v9
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_53

    return-void

    :cond_9c
    move v4, v5

    goto :goto_80
.end method

.method public systemReady()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Landroid/os/storage/IObbActionListener;
    .param p4    # I

    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_34

    if-eqz v8, :cond_37

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_33
    return-void

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    :cond_37
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_e
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v3, -0x5

    monitor-exit v5

    :cond_18
    :goto_18
    return v3

    :cond_19
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4f

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    const/4 v3, 0x0

    :try_start_22
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3b

    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_3b
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_40} :catch_52

    :goto_40
    if-nez v3, :cond_18

    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_45
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_18

    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw v4

    :catchall_4f
    move-exception v4

    :try_start_50
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v4

    :catch_52
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    const/16 v4, 0x195

    if-ne v1, v4, :cond_5d

    const/4 v3, -0x7

    goto :goto_40

    :cond_5d
    const/4 v3, -0x1

    goto :goto_40
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z

    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .param p1    # Landroid/os/storage/IMountServiceListener;

    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_9

    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v3

    :goto_2d
    return-void

    :cond_2e
    monitor-exit v3

    goto :goto_2d

    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    :try_start_2a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2a .. :try_end_65} :catch_67

    move-result v2

    :goto_66
    return v2

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_66
.end method

.method waitForAsecScan()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
