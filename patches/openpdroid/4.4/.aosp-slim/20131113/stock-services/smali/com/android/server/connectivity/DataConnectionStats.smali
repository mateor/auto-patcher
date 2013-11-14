.class public Lcom/android/server/connectivity/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/DataConnectionStats$1;-><init>(Lcom/android/server/connectivity/DataConnectionStats;)V

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1    # Landroid/telephony/SignalStrength;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1    # Landroid/telephony/ServiceState;

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DataConnectionStats;)V
    .registers 1
    .param p0    # Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .registers 2
    .param p0    # Lcom/android/server/connectivity/DataConnectionStats;
    .param p1    # I

    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    return p1
.end method

.method private hasService()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v0, :cond_17

    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isCdma()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private notePhoneDataConnectionState()V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v5, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v6, :cond_13

    iget-object v5, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_3c

    :cond_13
    move v2, v3

    :goto_14
    if-nez v2, :cond_1c

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_3e

    :cond_1c
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->hasService()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget v5, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3e

    :goto_27
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    :try_start_2d
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, v1, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_6

    :catch_33
    move-exception v0

    const-string v4, "DataConnectionStats"

    const-string v5, "Error noting data connection state"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_3c
    move v2, v4

    goto :goto_14

    :cond_3e
    move v3, v4

    goto :goto_27
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .registers 5
    .param p1    # Landroid/content/Intent;

    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_12
    return-void

    :cond_13
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_12

    :cond_20
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_12

    :cond_3b
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_12

    :cond_48
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_12

    :cond_4d
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_12
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_23
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    goto :goto_12
.end method

.method public startMonitoring()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x1c1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
