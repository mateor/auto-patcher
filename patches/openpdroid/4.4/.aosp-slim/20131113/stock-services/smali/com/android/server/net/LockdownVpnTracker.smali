.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .registers 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/INetworkManagementService;
    .param p3    # Lcom/android/server/ConnectivityService;
    .param p4    # Lcom/android/server/connectivity/Vpn;
    .param p5    # Lcom/android/internal/net/VpnProfile;

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.net.vpn.PICK_LOCKDOWN"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private clearSourceRulesLocked()V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    :cond_f
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_19

    :catch_30
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_39
    const/4 v3, 0x0

    :try_start_3a
    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3c} :catch_30

    :cond_3c
    return-void
.end method

.method private handleStateChangedLocked()V
    .registers 16

    const-string v12, "LockdownVpnTracker"

    const-string v13, "handleStateChanged()"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v12}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v4

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v12}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v10

    if-eqz v4, :cond_2d

    sget-object v12, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    :cond_2d
    const/4 v3, 0x1

    :goto_2e
    if-eqz v5, :cond_3c

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_54

    :cond_3c
    const/4 v2, 0x1

    :goto_3d
    if-nez v3, :cond_41

    if-eqz v2, :cond_4c

    :cond_41
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    :cond_4c
    if-eqz v3, :cond_56

    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    :cond_51
    :goto_51
    return-void

    :cond_52
    const/4 v3, 0x0

    goto :goto_2e

    :cond_54
    const/4 v2, 0x0

    goto :goto_3d

    :cond_56
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_65

    invoke-static {v6}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    :cond_65
    iget v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    const/4 v13, 0x4

    if-le v12, v13, :cond_74

    const v12, 0x10404c9

    const v13, 0x10806b1

    invoke-direct {p0, v12, v13}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto :goto_51

    :cond_74
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_d4

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v12

    if-nez v12, :cond_d4

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v12}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v12

    if-eqz v12, :cond_c2

    const-string v12, "LockdownVpnTracker"

    const-string v13, "Active network connected; starting VPN"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    const v12, 0x10404c7

    const v13, 0x10806b1

    invoke-direct {p0, v12, v13}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    :try_start_a1
    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v13, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v5}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_a1 .. :try_end_ac} :catch_ad

    goto :goto_51

    :catch_ad
    move-exception v1

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    const-string v12, "LockdownVpnTracker"

    const-string v13, "Failed to start VPN"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v12, 0x10404c9

    const v13, 0x10806b1

    invoke-direct {p0, v12, v13}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto :goto_51

    :cond_c2
    const-string v12, "LockdownVpnTracker"

    const-string v13, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v12, 0x10404c9

    const v13, 0x10806b1

    invoke-direct {p0, v12, v13}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_51

    :cond_d4
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_51

    if-eqz v10, :cond_51

    iget-object v8, v10, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iget-object v9, v10, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f0

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    :cond_f0
    const-string v12, "LockdownVpnTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VPN connected using iface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", sourceAddr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    const v12, 0x10404c8

    const v13, 0x10806b0

    invoke-direct {p0, v12, v13}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    :try_start_122
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v13, 0x1

    invoke-interface {v12, v8, v13}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_145} :catch_146

    goto :goto_12f

    :catch_146
    move-exception v1

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Problem setting firewall rules"

    invoke-direct {v12, v13, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_14f
    const/4 v12, 0x0

    :try_start_150
    iput v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    iput-object v8, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_156} :catch_146

    iget-object v12, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {p0, v4}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_51
.end method

.method private hideNotification()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "LockdownVpnTracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private initLocked()V
    .registers 7

    const/4 v4, 0x0

    const-string v2, "LockdownVpnTracker"

    const-string v3, "initLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/Vpn;->setEnableNotifications(Z)V

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_23
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x1194

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v4, 0x6a5

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_47} :catch_4f

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_58

    return-void

    :catch_4f
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem setting firewall rules"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public static isEnabled()Z
    .registers 2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showNotification(II)V
    .registers 8
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v2, 0x10404ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x1080360

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v3, 0x10404cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "LockdownVpnTracker"

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private shutdownLocked()V
    .registers 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v1, "LockdownVpnTracker"

    const-string v2, "shutdownLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    :try_start_13
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1194

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x6a5

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_37} :catch_4f

    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, v5}, Lcom/android/server/connectivity/Vpn;->setEnableNotifications(Z)V

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, v5}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    return-void

    :catch_4f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem setting firewall rules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 7
    .param p1    # Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1e
    return-object p1
.end method

.method public init()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onNetworkInfoChanged(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1    # Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1    # Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    :cond_e
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public reset()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public shutdown()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
