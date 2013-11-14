.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Landroid/content/Intent;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InFlight"
.end annotation


# instance fields
.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTarget:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .registers 9
    .param p1    # Lcom/android/server/AlarmManagerService;
    .param p2    # Landroid/app/PendingIntent;
    .param p3    # Landroid/os/WorkSource;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iput-object p2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_45

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1a
    iput-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    # invokes: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$FilterStats;

    if-nez v0, :cond_42

    new-instance v0, Lcom/android/server/AlarmManagerService$FilterStats;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-direct {v0, v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Landroid/util/Pair;)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    return-void

    :cond_45
    const/4 v2, 0x0

    goto :goto_1a
.end method
