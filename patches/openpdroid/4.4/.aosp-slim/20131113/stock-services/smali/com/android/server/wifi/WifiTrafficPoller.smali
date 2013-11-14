.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1    # Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .registers 1
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .registers 3
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .registers 1
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private evaluateTrafficStatsPolling()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :goto_1f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    :cond_23
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_1f
.end method

.method private notifyOnDataActivity()V
    .registers 15

    iget-wide v6, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    const/4 v1, 0x0

    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gtz v12, :cond_21

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_6a

    :cond_21
    iget-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    sub-long v10, v12, v6

    iget-wide v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    sub-long v8, v12, v4

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_31

    or-int/lit8 v1, v1, 0x2

    :cond_31
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_39

    or-int/lit8 v1, v1, 0x1

    :cond_39
    iget v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    if-eq v1, v12, :cond_6a

    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_6a

    iput v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    iget-object v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v12, 0x1

    iput v12, v3, Landroid/os/Message;->what:I

    iget v12, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    iput v12, v3, Landroid/os/Message;->arg1:I

    :try_start_64
    invoke-virtual {v0, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_4d

    :catch_68
    move-exception v12

    goto :goto_4d

    :cond_6a
    return-void
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .registers 4
    .param p1    # Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method removeClient(Landroid/os/Messenger;)V
    .registers 4
    .param p1    # Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
