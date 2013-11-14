.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# static fields
.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field private static final TAG:Ljava/lang/String; = "Nat464Xlat"


# instance fields
.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mIsStarted:Z

.field private mLP:Landroid/net/LinkProperties;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mTracker:Landroid/net/NetworkStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/INetworkManagementService;
    .param p3    # Landroid/net/IConnectivityManager;
    .param p4    # Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mConnService:Landroid/net/IConnectivityManager;

    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    return-void
.end method

.method public static isRunningClat(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p0    # Landroid/net/LinkProperties;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "clat4"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/lang/String;

    const-string v5, "clat4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface clat4 added, mIsRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    :try_start_2b
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->clear()V

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/LinkAddress;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v3, v5, v6, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v5, v0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    iget-object v6, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-interface {v5, v6}, Landroid/net/NetworkStateTracker;->addStackedLink(Landroid/net/LinkProperties;)V

    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding stacked link. tracker LP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_7f} :catch_aa

    :goto_7f
    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mHandler:Landroid/os/Handler;

    const v6, 0x70001

    iget-object v7, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending message to ConnectivityService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_a9
    return-void

    :catch_aa
    move-exception v2

    const-string v5, "Nat464Xlat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting link properties: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    const-string v0, "clat4"

    if-ne p1, v0, :cond_57

    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    if-eqz v0, :cond_e

    const-string v0, "clat4"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    :cond_e
    const-string v0, "Nat464Xlat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface clat4 removed, mIsRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-interface {v0, v1}, Landroid/net/NetworkStateTracker;->removeStackedLink(Landroid/net/LinkProperties;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    const-string v0, "Nat464Xlat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    return v0
.end method

.method public requiresClat(ILandroid/net/NetworkStateTracker;)Z
    .registers 7
    .param p1    # I
    .param p2    # Landroid/net/NetworkStateTracker;

    invoke-interface {p2}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requiresClat: netType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasIPv4Address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_34

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public startClat(Landroid/net/NetworkStateTracker;)V
    .registers 8
    .param p1    # Landroid/net/NetworkStateTracker;

    iget-boolean v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    if-eqz v3, :cond_c

    const-string v3, "Nat464Xlat"

    const-string v4, "startClat: already started"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Nat464Xlat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting clatd on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3a
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_43

    :goto_3f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    goto :goto_b

    :catch_43
    move-exception v0

    const-string v3, "Nat464Xlat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error starting clat daemon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public stopClat()V
    .registers 6

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    if-eqz v1, :cond_38

    const-string v1, "Nat464Xlat"

    const-string v2, "Stopping clatd"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_c
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopClatd()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_1e

    :goto_11
    iput-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsStarted:Z

    iput-boolean v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIsRunning:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mTracker:Landroid/net/NetworkStateTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mLP:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string v1, "Nat464Xlat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clat daemon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_38
    const-string v1, "Nat464Xlat"

    const-string v2, "stopClat: already stopped"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
