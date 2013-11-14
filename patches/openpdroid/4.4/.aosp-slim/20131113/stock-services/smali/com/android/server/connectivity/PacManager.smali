.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private mHasDownloaded:Z

.field private mHasSentBroadcast:Z

.field private mLastPort:I

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private mPacUrl:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;
    .param p3    # I

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;
    .param p1    # Lcom/android/net/IProxyService;

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)I
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;I)I
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;
    .param p1    # I

    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Lcom/android/server/connectivity/PacManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0    # Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0    # Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0    # Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/PacManager;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bind()V
    .registers 5

    const v3, 0x40000005

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_f

    const-string v1, "PacManager"

    const-string v2, "No context for binding"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_3d

    iget v1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    new-instance v1, Landroid/net/ProxyProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v1, v2, v3}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyProperties;)V

    goto :goto_e

    :cond_35
    const-string v1, "PacManager"

    const-string v2, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_3d
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_e
.end method

.method private static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .registers 5
    .param p1    # I

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_14

    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_13
    return-wide v1

    :cond_14
    const-wide/16 v1, 0x0

    goto :goto_13
.end method

.method private getNextDelay(I)I
    .registers 3
    .param p1    # I

    const/4 v0, 0x3

    add-int/lit8 p1, p1, 0x1

    if-le p1, v0, :cond_6

    move p1, v0

    :cond_6
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "conn.pac_change_delay"

    const-string v4, "8 32 120 14400 43200"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pac_change_delay"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    :goto_16
    return-object v1

    :cond_17
    move-object v1, v2

    goto :goto_16
.end method

.method private longSchedule()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    return-void
.end method

.method private reschedule()V
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyProperties;)V
    .registers 5
    .param p1    # Landroid/net/ProxyProperties;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_a

    new-instance v0, Landroid/net/ProxyProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyProperties;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    goto :goto_a

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_d

    const-string v1, "PacManager"

    const-string v2, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_c
    return v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    :goto_14
    const/4 v1, 0x1

    goto :goto_c

    :catch_16
    move-exception v0

    const-string v1, "PacManager"

    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method private setDownloadIn(I)V
    .registers 10
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v2, v4, v6

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private unbind()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    :cond_e
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    :cond_1b
    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return-void
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyProperties;)Z
    .registers 7
    .param p1    # Landroid/net/ProxyProperties;

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_44

    move-result v2

    if-lez v2, :cond_20

    :goto_1e
    monitor-exit p0

    return v1

    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_44

    :try_start_23
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_41

    const/4 v1, 0x0

    :try_start_2b
    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_44

    const/4 v1, 0x1

    goto :goto_1e

    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_47
    :try_start_47
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_44

    const/4 v3, 0x0

    :try_start_54
    iput-object v3, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_67

    if-eqz v3, :cond_65

    :try_start_5d
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v3}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_6a
    .catchall {:try_start_5d .. :try_end_62} :catchall_76

    :try_start_62
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    :cond_65
    :goto_65
    monitor-exit v2

    goto :goto_1e

    :catchall_67
    move-exception v1

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    :try_start_69
    throw v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_44

    :catch_6a
    move-exception v0

    :try_start_6b
    const-string v3, "PacManager"

    const-string v4, "Failed to stop PAC service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_76

    :try_start_72
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    goto :goto_65

    :catchall_76
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    throw v1
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_67
.end method
