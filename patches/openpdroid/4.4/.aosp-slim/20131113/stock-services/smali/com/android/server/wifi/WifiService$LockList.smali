.class Lcom/android/server/wifi/WifiService$LockList;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/wifi/WifiService;
    .param p2    # Lcom/android/server/wifi/WifiService$1;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$LockList;-><init>(Lcom/android/server/wifi/WifiService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiService$LockList;Lcom/android/server/wifi/WifiService$WifiLock;)V
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiService$LockList;
    .param p1    # Lcom/android/server/wifi/WifiService$WifiLock;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$LockList;->addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)I
    .registers 3
    .param p0    # Lcom/android/server/wifi/WifiService$LockList;
    .param p1    # Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiService$LockList;)Ljava/util/List;
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiService$LockList;

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    .registers 3
    .param p0    # Lcom/android/server/wifi/WifiService$LockList;
    .param p1    # Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiService$LockList;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0    # Lcom/android/server/wifi/WifiService$LockList;
    .param p1    # Ljava/io/PrintWriter;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .registers 3
    .param p1    # Lcom/android/server/wifi/WifiService$WifiLock;

    iget-object v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1    # Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$WifiLock;

    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1b
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .registers 5
    .param p1    # Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$WifiLock;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService$WifiLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_17

    :goto_16
    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    .registers 5
    .param p1    # Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$WifiLock;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$WifiLock;->unlinkDeathRecipient()V

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method


# virtual methods
.method declared-synchronized getStrongestLockMode()I
    .registers 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2c

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$800(Lcom/android/server/wifi/WifiService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)I

    move-result v2

    if-le v1, v2, :cond_1c

    const/4 v0, 0x3

    goto :goto_a

    :cond_1c
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$1000(Lcom/android/server/wifi/WifiService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1100(Lcom/android/server/wifi/WifiService;)I
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2c

    move-result v2

    if-gt v1, v2, :cond_a

    const/4 v0, 0x2

    goto :goto_a

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasLocks()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateWorkSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1    # Landroid/os/WorkSource;

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$LockList;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method
