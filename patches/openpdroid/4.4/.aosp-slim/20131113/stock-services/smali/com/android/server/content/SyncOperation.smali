.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final allowParallelSyncs:Z

.field public final authority:Ljava/lang/String;

.field public backoff:Ljava/lang/Long;

.field public delayUntil:J

.field public effectiveRunTime:J

.field public expedited:Z

.field public extras:Landroid/os/Bundle;

.field public flexTime:J

.field public final key:Ljava/lang/String;

.field public latestRunTime:J

.field public pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

.field public final reason:I

.field public final service:Landroid/content/ComponentName;

.field public syncSource:I

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DataSettingsChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AccountsUpdated"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ServiceChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Periodic"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IsSyncable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AutoSync"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MasterSyncAuto"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UserStart"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V
    .registers 22
    .param p1    # Landroid/accounts/Account;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/os/Bundle;
    .param p7    # J
    .param p9    # J
    .param p11    # J
    .param p13    # J
    .param p15    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iput-object p5, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    iput p3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iput p4, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncOperation;->cleanBundle(Landroid/os/Bundle;)V

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-ltz v4, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_3a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    iput-wide v2, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    :goto_43
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    return-void

    :cond_4d
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    add-long v4, v2, p7

    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iput-wide p9, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    goto :goto_43
.end method

.method constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .registers 4
    .param p1    # Lcom/android/server/content/SyncOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->userId:I

    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->expedited:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    return-void
.end method

.method private cleanBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;

    const-string v0, "upload"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "force"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "ignore_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "ignore_backoff"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "do_not_retry"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "discard_deletions"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "expedited"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "deletions_override"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "disallow_metered"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v0, "expected_upload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "expected_download"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p0    # Landroid/os/Bundle;
    .param p1    # Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_31
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .registers 7
    .param p0    # Landroid/content/pm/PackageManager;
    .param p1    # I

    if-ltz p1, :cond_22

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    const/4 v3, 0x0

    aget-object v1, v2, v3

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_22
    neg-int v3, p1

    add-int/lit8 v0, v3, -0x1

    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_2f

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_2f
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    aget-object v1, v3, v0

    goto :goto_11
.end method

.method private removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private toKey()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    if-nez v1, :cond_5d

    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4e
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5d
    const-string v1, "service {package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 15
    .param p1    # Ljava/lang/Object;

    const-wide/16 v11, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    move-object v0, p1

    check-cast v0, Lcom/android/server/content/SyncOperation;

    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eq v7, v8, :cond_14

    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v7, :cond_12

    :cond_11
    :goto_11
    return v5

    :cond_12
    move v5, v6

    goto :goto_11

    :cond_14
    iget-wide v7, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    iget-wide v9, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v7, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    iget-wide v9, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v7, v3, v1

    if-ltz v7, :cond_11

    cmp-long v5, v1, v3

    if-gez v5, :cond_30

    move v5, v6

    goto :goto_11

    :cond_30
    const/4 v5, 0x0

    goto :goto_11
.end method

.method public dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .registers 7
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latestRunTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v1, :cond_5e

    const-string v1, ", EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_84

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ignoreBackoff()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isExpedited()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "expedited"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isInitialization()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMeteredDisallowed()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "disallow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEffectiveRunTime()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    :goto_8
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    return-void

    :cond_b
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8
.end method
