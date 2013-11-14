.class Lcom/android/server/connectivity/Vpn$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 12
    .param p1    # Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v6, p1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_b8

    move-result-wide v3

    :try_start_1b
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v6, :cond_62

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_62

    const/4 v0, 0x1

    :goto_3e
    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v2, :cond_64

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v5, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v6, v5}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_62
    const/4 v0, 0x0

    goto :goto_3e

    :cond_64
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V
    :try_end_82
    .catchall {:try_start_1b .. :try_end_82} :catchall_b3

    :try_start_82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Vpn;->access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "interfaceRemoved"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v6, v8, v9}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    monitor-exit v7

    return-void

    :catchall_b3
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catchall_b8
    move-exception v6

    monitor-exit v7
    :try_end_ba
    .catchall {:try_start_82 .. :try_end_ba} :catchall_b8

    throw v6

    :cond_bb
    :try_start_bb
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v6

    if-eqz v6, :cond_b1

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v6, v8}, Lcom/android/server/connectivity/Vpn;->access$402(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_d2
    .catchall {:try_start_bb .. :try_end_d2} :catchall_b8

    goto :goto_b1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1

    if-nez p2, :cond_16

    :try_start_5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method
