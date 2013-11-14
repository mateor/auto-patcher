.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field standalone:Z

.field start:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 4
    .param p1    # Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1    # Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    # getter for: Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$000()Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_11

    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    :cond_11
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const/4 v1, 0x1

    :cond_23
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2f

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    :cond_2f
    return v1
.end method

.method canHold(JJ)Z
    .registers 7
    .param p1    # J
    .param p3    # J

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_e

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_22

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    :goto_1e
    return v3

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method hasWakeups()Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_19

    const/4 v3, 0x1

    :goto_18
    return v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method

.method remove(I)Z
    .registers 11
    .param p1    # I

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_9
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3f

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, p1, :cond_2c

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_9

    :cond_2c
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_34

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :cond_34
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_3c

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3f
    if-eqz v1, :cond_45

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    :cond_45
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .registers 11
    .param p1    # Landroid/app/PendingIntent;

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_9
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3b

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_9

    :cond_28
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_30

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :cond_30
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_38

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3b
    if-eqz v1, :cond_41

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    :cond_41
    return v1
.end method

.method remove(Ljava/lang/String;)Z
    .registers 11
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_9
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3f

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_9

    :cond_2c
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_34

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :cond_34
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_3c

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3f
    if-eqz v1, :cond_45

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    :cond_45
    return v1
.end method

.method size()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-eqz v1, :cond_40

    const-string v1, " STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
