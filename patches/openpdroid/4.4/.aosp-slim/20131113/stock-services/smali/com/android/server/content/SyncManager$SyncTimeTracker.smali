.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .registers 3
    .param p1    # Lcom/android/server/content/SyncManager;
    .param p2    # Lcom/android/server/content/SyncManager$1;

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v2, :cond_9

    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    :goto_7
    monitor-exit p0

    return-wide v2

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_7

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v0, 0x1

    :goto_c
    iget-boolean v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    if-ne v0, v3, :cond_14

    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_c

    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-eqz v0, :cond_22

    iput-wide v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    :goto_1c
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_10

    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_22
    :try_start_22
    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_1f

    goto :goto_1c
.end method
