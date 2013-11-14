.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$1;,
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x60000

.field private static final CMD_TO_STRING_COUNT:I = 0x13

.field private static final DBG:Z = true

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private INVALID_ID:I

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

.field private mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "DISCOVER"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "STOP-DISCOVER"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "REGISTER"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "UNREGISTER"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "RESOLVE"

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    iput v1, p0, Lcom/android/server/NsdService;->mUniqueId:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    const-string v2, "mdns"

    const/16 v3, 0xa

    const-string v4, "mDnsConnector"

    const/16 v5, 0x19

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    const-string v1, "NsdService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    new-instance v6, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "mDnsConnector"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 2
    .param p0    # I

    invoke-static {p0}, Lcom/android/server/NsdService;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NsdService;)Z
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/NsdService;)Z
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    invoke-direct {p0}, Lcom/android/server/NsdService;->startMDnsDaemon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/NsdService;)Z
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    invoke-direct {p0}, Lcom/android/server/NsdService;->stopMDnsDaemon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    iget-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/NsdService;)I
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 4
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .registers 4
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # Landroid/os/Message;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .registers 3
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # Landroid/os/Message;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 4
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I
    .param p2    # Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 4
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I
    .param p2    # Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 4
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/NsdService;I)Z
    .registers 3
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/NsdService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NsdService;)Landroid/content/Context;
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .registers 2
    .param p0    # Lcom/android/server/NsdService;

    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .registers 4
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # Landroid/os/Message;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NsdService;Z)V
    .registers 2
    .param p0    # Lcom/android/server/NsdService;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method private static cmdToString(I)Ljava/lang/String;
    .registers 2
    .param p0    # I

    const/high16 v0, 0x60000

    sub-int/2addr p0, v0

    if-ltz p0, :cond_f

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_f

    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .registers 3
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/NsdService;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-object v0
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .registers 11
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverServices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_24
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "discover"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_3d} :catch_3e

    :goto_3d
    return v1

    :catch_3e
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to discoverServices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_3d
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .registers 11
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdddrInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getaddrinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_33} :catch_34

    :goto_33
    return v1

    :catch_34
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAddrInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_33
.end method

.method private getUniqueId()I
    .registers 3

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    iget v1, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    goto :goto_10
.end method

.method private isNsdEnabled()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "nsd_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_24

    :goto_b
    const-string v1, "NsdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network service discovery enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p1    # Landroid/os/Message;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 11
    .param p1    # I
    .param p2    # Landroid/net/nsd/NsdServiceInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_24
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "register"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_53} :catch_54

    :goto_53
    return v1

    :catch_54
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute registerService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_53
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .registers 5
    .param p1    # Landroid/os/Message;
    .param p2    # I

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .registers 6
    .param p1    # Landroid/os/Message;
    .param p2    # I
    .param p3    # I

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 6
    .param p1    # Landroid/os/Message;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_4
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 11
    .param p1    # I
    .param p2    # Landroid/net/nsd/NsdServiceInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_24
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "resolve"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "local."

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_4d} :catch_4e

    :goto_4d
    return v1

    :catch_4e
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolveService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_4d
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .registers 5
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_1c

    const-string v1, "nsd_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_14
    iget-object v1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1c
    const-string v1, "nsd_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14
.end method

.method private startMDnsDaemon()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    const-string v4, "startMDnsDaemon"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "start-service"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    :goto_18
    return v1

    :catch_19
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start daemon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_18
.end method

.method private stopGetAddrInfo(I)Z
    .registers 10
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopGetAdddrInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-getaddrinfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_30} :catch_31

    :goto_30
    return v1

    :catch_31
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stopGetAddrInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_30
.end method

.method private stopMDnsDaemon()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    const-string v4, "stopMDnsDaemon"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-service"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_18
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_18} :catch_19

    :goto_18
    return v1

    :catch_19
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start daemon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_18
.end method

.method private stopResolveService(I)Z
    .registers 10
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopResolveService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-resolve"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_30} :catch_31

    :goto_30
    return v1

    :catch_31
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stop resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_30
.end method

.method private stopServiceDiscovery(I)Z
    .registers 10
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopServiceDiscovery: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-discover"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_30} :catch_31

    :goto_30
    return v1

    :catch_31
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stopServiceDiscovery "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_30
.end method

.method private unregisterService(I)Z
    .registers 10
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "stop-register"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_30} :catch_31

    :goto_30
    return v1

    :catch_31
    move-exception v0

    const-string v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute unregisterService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_30
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .registers 11
    .param p1    # I
    .param p2    # Landroid/net/nsd/DnsSdTxtRecord;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_27

    :goto_26
    return v1

    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "mdnssd"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "update"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_4f} :catch_51

    move v1, v2

    goto :goto_26

    :catch_51
    move-exception v0

    const-string v2, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to updateServices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ServiceDiscoverService from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v2, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    const-string v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_52
    iget-object v2, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_32
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 4

    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "nsd_on"

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    const v1, 0x60018

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    const v1, 0x60019

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    goto :goto_1d
.end method
