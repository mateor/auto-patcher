.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V
    .registers 3
    .param p1    # Lcom/android/server/print/UserState;
    .param p2    # Lcom/android/server/print/UserState$1;

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .registers 2
    .param p0    # Lcom/android/server/print/UserState$PrintJobForAppCache;

    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    const-string v7, "  "

    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_6a

    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "appId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_49
    if-ge v4, v6, :cond_67

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_6a
    monitor-exit v9

    return-void

    :catchall_6c
    move-exception v8

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw v8
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 10
    .param p1    # Landroid/print/PrintJobId;
    .param p2    # I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_8
    iget-object v6, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_15

    monitor-exit v5

    move-object v1, v4

    :goto_14
    return-object v1

    :cond_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_34

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    monitor-exit v5

    goto :goto_14

    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v4

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_34
    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2e

    move-object v1, v4

    goto :goto_14
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .registers 9
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v3, 0x0

    const/4 v5, -0x2

    if-ne p1, v5, :cond_30

    :try_start_b
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_46

    move-result v1

    const/4 v2, 0x0

    move-object v4, v3

    :goto_13
    if-ge v2, v1, :cond_2b

    :try_start_15
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v4, :cond_53

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_50

    :goto_24
    :try_start_24
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    goto :goto_13

    :cond_2b
    move-object v3, v4

    :cond_2c
    :goto_2c
    if-eqz v3, :cond_49

    monitor-exit v6

    :goto_2f
    return-object v3

    :cond_30
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2c

    if-nez v3, :cond_42

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    :cond_42
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2c

    :catchall_46
    move-exception v5

    :goto_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_46

    throw v5

    :cond_49
    :try_start_49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    move-object v3, v5

    goto :goto_2f

    :catchall_50
    move-exception v5

    move-object v3, v4

    goto :goto_47

    :cond_53
    move-object v3, v4

    goto :goto_24
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .registers 9
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # Landroid/print/PrintJobInfo;

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2b

    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_11
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_25
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    const/4 v2, 0x1

    :goto_2a
    return v2

    :catch_2b
    move-exception v1

    goto :goto_2a

    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 9
    .param p1    # Landroid/print/PrintJobInfo;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_17

    monitor-exit v5

    :goto_16
    return-void

    :cond_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_38

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_38
    monitor-exit v5

    goto :goto_16

    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw v4
.end method
