.class public Lcom/android/server/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/android/server/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V
    .registers 5
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Lcom/android/server/content/SyncStorageEngine;
    .param p3    # Landroid/content/SyncAdaptersCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iput-object p3, p0, Lcom/android/server/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    return-void
.end method

.method private add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .registers 16
    .param p1    # Lcom/android/server/content/SyncOperation;
    .param p2    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget-object v12, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncOperation;

    if-eqz v9, :cond_27

    const/4 v8, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/content/SyncOperation;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_26

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->expedited:Z

    iput-boolean v0, v9, Lcom/android/server/content/SyncOperation;->expedited:Z

    iget-wide v0, v9, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iget-wide v2, p1, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexTime:J

    iput-wide v0, v9, Lcom/android/server/content/SyncOperation;->flexTime:J

    const/4 v8, 0x1

    :cond_26
    :goto_26
    return v8

    :cond_27
    iput-object p2, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    if-nez v0, :cond_64

    new-instance p2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Lcom/android/server/content/SyncOperation;->expedited:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0, p2}, Lcom/android/server/content/SyncStorageEngine;->insertIntoPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    if-nez p2, :cond_62

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error adding pending sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    iput-object p2, p1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    :cond_64
    iget-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v12, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    goto :goto_26
.end method


# virtual methods
.method public add(Lcom/android/server/content/SyncOperation;)Z
    .registers 3
    .param p1    # Lcom/android/server/content/SyncOperation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public addPendingOperations(I)V
    .registers 27
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v5}, Lcom/android/server/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_c
    :goto_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    move/from16 v0, p1

    if-ne v5, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    invoke-virtual {v5, v6, v7}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v23

    if-nez v23, :cond_7b

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing sync adapter info for authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_7b
    new-instance v4, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    if-eqz v20, :cond_eb

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v17, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J

    move-result-wide v17

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/SyncAdapterType;

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v19

    invoke-direct/range {v4 .. v19}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V

    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v5, v4, Lcom/android/server/content/SyncOperation;->expedited:Z

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_c

    :cond_eb
    const-wide/16 v15, 0x0

    goto :goto_a5

    :cond_ee
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .registers 10
    .param p1    # Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v4, "SyncQueue: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operation(s)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    cmp-long v4, v4, v1

    if-gtz v4, :cond_55

    const-string v4, "READY"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    const-string v4, " - "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_55
    iget-wide v4, v3, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_63
    return-void
.end method

.method public getOperations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/content/SyncOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V
    .registers 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # J

    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v1, Lcom/android/server/content/SyncOperation;->userId:I

    if-ne v2, p2, :cond_a

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_a

    :cond_34
    return-void
.end method

.method public onDelayUntilTimeChanged(Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 8
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-wide p3, v1, Lcom/android/server/content/SyncOperation;->delayUntil:J

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_a

    :cond_2c
    return-void
.end method

.method public remove(Landroid/accounts/Account;ILjava/lang/String;)V
    .registers 10
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    if-eqz p1, :cond_26

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_26
    if-eqz p3, :cond_30

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_30
    iget v4, v3, Lcom/android/server/content/SyncOperation;->userId:I

    if-ne p2, v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, v3, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find pending row for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_5f
    return-void
.end method

.method public remove(Lcom/android/server/content/SyncOperation;)V
    .registers 6
    .param p1    # Lcom/android/server/content/SyncOperation;

    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/server/content/SyncQueue;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public removeUser(I)V
    .registers 6
    .param p1    # I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    iget v3, v1, Lcom/android/server/content/SyncOperation;->userId:I

    if-ne v3, p1, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncQueue;->remove(Lcom/android/server/content/SyncOperation;)V

    goto :goto_27

    :cond_37
    return-void
.end method
