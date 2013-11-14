.class Lcom/android/server/content/SyncManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    # setter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$402(Lcom/android/server/content/SyncManager;Z)Z

    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_47

    if-nez v0, :cond_42

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "SyncManager"

    const-string v2, "Reconnection detected: clearing all backoffs"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v2

    monitor-enter v2

    :try_start_32
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncStorageEngine;->clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_48

    :cond_42
    iget-object v1, p0, Lcom/android/server/content/SyncManager$5;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$100(Lcom/android/server/content/SyncManager;)V

    :cond_47
    return-void

    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method
