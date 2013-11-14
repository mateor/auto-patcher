.class public final Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "ContentProviderConnection.java"


# instance fields
.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final createTime:J

.field public dead:Z

.field public numStableIncs:I

.field public numUnstableIncs:I

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public stableCount:I

.field public unstableCount:I

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1    # Lcom/android/server/am/ContentProviderRecord;
    .param p2    # Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    return-void
.end method


# virtual methods
.method public toClientString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toClientString(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->stableCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->numStableIncs:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->unstableCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->numUnstableIncs:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v2, :cond_3a

    const-string v2, " WAITING"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    if-eqz v2, :cond_43

    const-string v2, " DEAD"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1    # Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentProviderConnection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
