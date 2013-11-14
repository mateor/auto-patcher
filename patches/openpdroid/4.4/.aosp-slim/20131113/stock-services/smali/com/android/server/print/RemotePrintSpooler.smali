.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$1;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J = 0x2710L

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/print/IPrintSpooler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field private final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$1;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.printspooler"

    const-string v3, "com.android.printspooler.PrintSpoolerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;
    .param p1    # Landroid/print/IPrintSpooler;

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .registers 2
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .registers 2
    .param p0    # Lcom/android/server/print/RemotePrintSpooler;
    .param p1    # Landroid/print/PrintJobInfo;

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method private bindLocked()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v6, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v10, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :goto_15
    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v6, :cond_21

    iput-boolean v10, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    const-wide/16 v6, 0x2710

    sub-long v2, v6, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_39

    new-instance v6, Ljava/util/concurrent/TimeoutException;

    const-string v7, "Cannot get spooler!"

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_39
    :try_start_39
    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_15

    :catch_3f
    move-exception v6

    goto :goto_15
.end method

.method private clearClientLocked()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error clearing print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v1

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v1

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private onAllPrintJobsHandled()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 3
    .param p1    # Landroid/print/PrintJobInfo;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method private setClientLocked()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error setting print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private unbindLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v0, :cond_a

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_1c

    :cond_a
    :goto_a
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_4

    :catch_1c
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 7
    .param p1    # Landroid/print/PrintJobInfo;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_24
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_3c
    .catchall {:try_start_d .. :try_end_14} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_65

    :goto_20
    return-void

    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    :catch_24
    move-exception v0

    :try_start_25
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error creating print job."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_30
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_20

    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_39

    throw v2

    :catch_3c
    move-exception v1

    :try_start_3d
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error creating print job."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_48
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_20

    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_51

    throw v2

    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_59
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_62

    throw v2

    :catchall_62
    move-exception v2

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v2

    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public final destroy()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "destroyed="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "bound="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_47

    const-string v0, "true"

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_4a

    :try_start_34
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v0

    invoke-interface {v0}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {v0, p1, v2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_45} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_45} :catch_4d
    .catchall {:try_start_34 .. :try_end_45} :catchall_4a

    :goto_45
    :try_start_45
    monitor-exit v1

    return-void

    :cond_47
    const-string v0, "false"

    goto :goto_2a

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v0

    :catch_4d
    move-exception v0

    goto :goto_45

    :catch_4f
    move-exception v0

    goto :goto_45
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 8
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # I

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    :try_start_d
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_3d
    .catchall {:try_start_d .. :try_end_16} :catchall_55

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_69

    :goto_23
    return-object v2

    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    :catch_27
    move-exception v0

    :try_start_28
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print job info."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_55

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_66

    :goto_3b
    const/4 v2, 0x0

    goto :goto_23

    :catch_3d
    move-exception v1

    :try_start_3e
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print job info."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_55

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_49
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_3b

    :catchall_52
    move-exception v2

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_52

    throw v2

    :catchall_55
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_5a
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_63

    throw v2

    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2

    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    :try_start_d
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_3d
    .catchall {:try_start_d .. :try_end_16} :catchall_55

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_1b
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_69

    :goto_23
    return-object v2

    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    :catch_27
    move-exception v0

    :try_start_28
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print jobs."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_55

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_66

    :goto_3b
    const/4 v2, 0x0

    goto :goto_23

    :catch_3d
    move-exception v1

    :try_start_3e
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error getting print jobs."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_55

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_49
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_3b

    :catchall_52
    move-exception v2

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_52

    throw v2

    :catchall_55
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_5a
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_63

    throw v2

    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2

    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final removeObsoletePrintJobs()V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_24
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_3c
    .catchall {:try_start_d .. :try_end_14} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_65

    :goto_20
    return-void

    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    :catch_24
    move-exception v0

    :try_start_25
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_30
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_20

    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_39

    throw v2

    :catch_3c
    move-exception v1

    :try_start_3d
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_48
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_20

    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_51

    throw v2

    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_59
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_62

    throw v2

    :catchall_62
    move-exception v2

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v2

    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 8
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # Z

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_24
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_3c
    .catchall {:try_start_d .. :try_end_14} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_65

    :goto_20
    return-void

    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2

    :catch_24
    move-exception v0

    :try_start_25
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error setting print job cancelling."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_30
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_20

    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_39

    throw v2

    :catch_3c
    move-exception v1

    :try_start_3d
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error setting print job cancelling."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_54

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_48
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_20

    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_51

    throw v2

    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_59
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_62

    throw v2

    :catchall_62
    move-exception v2

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v2

    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 9
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    :try_start_e
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_40
    .catchall {:try_start_e .. :try_end_17} :catchall_58

    move-result v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_69

    :goto_24
    return v2

    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    :catch_28
    move-exception v0

    :try_start_29
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job state."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_58

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_34
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_24

    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v2

    :catch_40
    move-exception v1

    :try_start_41
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job state."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_58

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_4c
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_24

    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v2

    :catchall_58
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_5d
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_66

    throw v2

    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 8
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_25

    :try_start_e
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_40
    .catchall {:try_start_e .. :try_end_17} :catchall_58

    move-result v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_69

    :goto_24
    return v2

    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2

    :catch_28
    move-exception v0

    :try_start_29
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job tag."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_58

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_34
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_24

    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v2

    :catch_40
    move-exception v1

    :try_start_41
    const-string v3, "RemotePrintSpooler"

    const-string v4, "Error setting print job tag."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_58

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_4c
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_24

    :catchall_55
    move-exception v2

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v2

    :catchall_58
    move-exception v2

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_5d
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_66

    throw v2

    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 8
    .param p1    # Landroid/os/ParcelFileDescriptor;
    .param p2    # Landroid/print/PrintJobId;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_24

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_42
    .catchall {:try_start_d .. :try_end_14} :catchall_5d

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_1b
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_71

    :goto_23
    return-void

    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    :catch_27
    move-exception v0

    :try_start_28
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error writing print job data."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_5d

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_36
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_23

    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_3f

    throw v2

    :catch_42
    move-exception v1

    :try_start_43
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error writing print job data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5d

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_51
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_23

    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw v2

    :catchall_5d
    move-exception v2

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_65
    iput-boolean v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6e

    throw v2

    :catchall_6e
    move-exception v2

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v2

    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method
