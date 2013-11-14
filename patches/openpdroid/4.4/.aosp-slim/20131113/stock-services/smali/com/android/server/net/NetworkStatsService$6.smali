.class Lcom/android/server/net/NetworkStatsService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v2, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_11
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_2a

    :try_start_1a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;I)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2d

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit v2

    goto :goto_9

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v1

    :catchall_2d
    move-exception v1

    :try_start_2e
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2a
.end method
