.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v2}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_11
    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "fstrim"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dotrim"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_11 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v1

    const-string v2, "MountService"

    const-string v3, "Failed to run fstrim!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
