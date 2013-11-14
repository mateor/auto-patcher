.class Lcom/android/server/CommonTimeManagementService;
.super Landroid/os/Binder;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    }
.end annotation


# static fields
.field private static final ALLOW_WIFI:Z

.field private static final ALLOW_WIFI_PROP:Ljava/lang/String; = "ro.common_time.allow_wifi"

.field private static final AUTO_DISABLE:Z

.field private static final AUTO_DISABLE_PROP:Ljava/lang/String; = "ro.common_time.auto_disable"

.field private static final BASE_SERVER_PRIO:B

.field private static final IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

.field private static final NATIVE_SERVICE_RECONNECT_TIMEOUT:I = 0x1388

.field private static final NO_INTERFACE_TIMEOUT:I

.field private static final NO_INTERFACE_TIMEOUT_PROP:Ljava/lang/String; = "ro.common_time.no_iface_timeout"

.field private static final SERVER_PRIO_PROP:Ljava/lang/String; = "ro.common_time.server_prio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCTConfig:Landroid/os/CommonTimeConfig;

.field private mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurIface:Ljava/lang/String;

.field private mDetectedAtStartup:Z

.field private mEffectivePrio:B

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private mLock:Ljava/lang/Object;

.field private mNetMgr:Landroid/os/INetworkManagementService;

.field private mNoInterfaceHandler:Landroid/os/Handler;

.field private mNoInterfaceRunnable:Ljava/lang/Runnable;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mReconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v5, 0x1e

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-class v1, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "ro.common_time.auto_disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_53

    move v1, v2

    :goto_16
    sput-boolean v1, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    const-string v1, "ro.common_time.allow_wifi"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_55

    move v1, v2

    :goto_21
    sput-boolean v1, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    const-string v1, "ro.common_time.server_prio"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ro.common_time.no_iface_timeout"

    const v4, 0xea60

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ge v0, v2, :cond_57

    sput-byte v2, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    :goto_38
    sget-boolean v1, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v1, :cond_60

    new-array v1, v6, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    new-instance v4, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v5, "wlan"

    invoke-direct {v4, v5, v2}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v4, v1, v3

    new-instance v3, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v4, "eth"

    invoke-direct {v3, v4, v6}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    :goto_52
    return-void

    :cond_53
    move v1, v3

    goto :goto_16

    :cond_55
    move v1, v3

    goto :goto_21

    :cond_57
    if-le v0, v5, :cond_5c

    sput-byte v5, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_38

    :cond_5c
    int-to-byte v1, v0

    sput-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_38

    :cond_60
    new-array v1, v2, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    new-instance v2, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v4, "eth"

    invoke-direct {v2, v4, v6}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    goto :goto_52
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    new-instance v0, Lcom/android/server/CommonTimeManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$1;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    new-instance v0, Lcom/android/server/CommonTimeManagementService$2;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$2;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/CommonTimeManagementService$3;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$3;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    new-instance v0, Lcom/android/server/CommonTimeManagementService$4;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$4;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/CommonTimeManagementService$5;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$5;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1
    .param p0    # Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1
    .param p0    # Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1
    .param p0    # Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1
    .param p0    # Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V

    return-void
.end method

.method private cleanupTimeConfig()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    :cond_1a
    return-void
.end method

.method private connectToTimeConfig()V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    :try_start_3
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_40

    :try_start_6
    new-instance v1, Landroid/os/CommonTimeConfig;

    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->getInterfaceBinding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    sget-boolean v3, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setAutoDisable(Z)I

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v3, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v1, v3}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_3d

    :try_start_2b
    sget v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_39
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3c} :catch_40

    :goto_3c
    return-void

    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_40} :catch_40

    :catch_40
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    goto :goto_3c
.end method

.method private handleNoInterfaceTimeout()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "Timeout waiting for interface to come up.  Forcing networkless master mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x7

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->forceNetworklessMasterMode()I

    move-result v1

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    :cond_17
    return-void
.end method

.method private reevaluateServiceState()V
    .registers 26

    const/4 v5, 0x0

    const/4 v4, -0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_59

    move-object v2, v12

    array-length v13, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_12
    if-ge v10, v13, :cond_59

    aget-object v11, v2, v10

    const/16 v18, -0x1

    sget-object v3, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    array-length v14, v3

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v14, :cond_34

    aget-object v16, v3, v9

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3c

    move-object/from16 v0, v16

    iget-byte v0, v0, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    move/from16 v18, v0

    :cond_34
    move/from16 v0, v18

    if-gt v0, v4, :cond_3f

    :cond_38
    :goto_38
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_12

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->isActive()Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_50} :catch_57

    move-result v19

    if-eqz v19, :cond_38

    move-object v5, v11

    move/from16 v4, v18

    goto :goto_38

    :catch_57
    move-exception v8

    const/4 v5, 0x0

    :cond_59
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    if-eqz v5, :cond_d1

    :try_start_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_d1

    sget-object v19, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v21, "Binding common time service to %s."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    :goto_8a
    monitor-exit v20
    :try_end_8b
    .catchall {:try_start_63 .. :try_end_8b} :catchall_ef

    if-eqz v7, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d0

    if-lez v4, :cond_138

    sget-byte v19, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    mul-int v19, v19, v4

    move/from16 v0, v19

    int-to-byte v15, v0

    :goto_9e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v15, v0, :cond_bb

    move-object/from16 v0, p0

    iput-byte v15, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/CommonTimeConfig;->setNetworkBinding(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_13c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    :cond_d0
    :goto_d0
    return-void

    :cond_d1
    if-nez v5, :cond_f2

    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f2

    sget-object v19, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v21, "Unbinding common time service."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_8a

    :catchall_ef
    move-exception v19

    monitor-exit v20
    :try_end_f1
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_ef

    throw v19

    :cond_f2
    if-eqz v5, :cond_135

    :try_start_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_135

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_135

    sget-object v19, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v21, "Switching common time service binding from %s to %s."

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v5, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_133
    .catchall {:try_start_f4 .. :try_end_133} :catchall_ef

    goto/16 :goto_8a

    :cond_135
    const/4 v7, 0x0

    goto/16 :goto_8a

    :cond_138
    sget-byte v15, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto/16 :goto_9e

    :cond_13c
    sget v19, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v19, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    sget v21, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d0
.end method

.method private scheduleTimeConfigReconnect()V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "Native service died, will reconnect in %d mSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "Permission Denial: can\'t dump CommonTimeManagement service from from pid=%d, uid=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2c
    return-void

    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    if-nez v0, :cond_37

    const-string v0, "Native Common Time service was not detected at startup.  Service is unavailable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    :cond_37
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    const-string v0, "Current Common Time Management Service Config:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Native service     : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-nez v0, :cond_c3

    const-string v0, "reconnecting"

    :goto_4b
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Bound interface    : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v0, :cond_c6

    const-string v0, "unbound"

    :goto_60
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Allow WiFi         : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v0, :cond_c9

    const-string v0, "yes"

    :goto_75
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Allow Auto Disable : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    if-eqz v0, :cond_cc

    const-string v0, "yes"

    :goto_8a
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Server Priority    : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-byte v4, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  No iface timeout   : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_2c

    :catchall_c0
    move-exception v0

    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_3a .. :try_end_c2} :catchall_c0

    throw v0

    :cond_c3
    :try_start_c3
    const-string v0, "alive"

    goto :goto_4b

    :cond_c6
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_60

    :cond_c9
    const-string v0, "no"

    goto :goto_75

    :cond_cc
    const-string v0, "no"
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_c0

    goto :goto_8a
.end method

.method systemRunning()V
    .registers 5

    const-string v2, "common_time.config"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v3, "No common time service detected on this platform.  Common time services will be unavailable."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void

    :cond_10
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_3b

    :goto_26
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    goto :goto_f

    :catch_3b
    move-exception v2

    goto :goto_26
.end method
