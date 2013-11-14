.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .param p2    # Lcom/android/internal/net/VpnConfig;
    .param p3    # [Ljava/lang/String;
    .param p4    # [Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v2, "LegacyVpnRunner"

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    # setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->access$802(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "racoon"

    aput-object v3, v2, v4

    const-string v3, "mtpd"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    new-array v2, v7, [[Ljava/lang/String;

    aput-object p3, v2, v4

    aput-object p4, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    :try_start_43
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_66

    :goto_52
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_66
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_52
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private checkpoint(Z)V
    .registers 10
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_13
    return-void

    :cond_14
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_27

    if-eqz p1, :cond_23

    const-wide/16 v2, 0xc8

    :cond_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_13

    :cond_27
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .registers 32

    const/4 v15, 0x0

    const/16 v26, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_12
    move/from16 v0, v16

    if-ge v13, v0, :cond_6d

    aget-object v9, v7, v13

    :goto_18
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6a

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28
    .catchall {:try_start_3 .. :try_end_27} :catchall_89

    goto :goto_18

    :catch_28
    move-exception v11

    :try_start_29
    const-string v26, "LegacyVpnRunner"

    const-string v27, "Aborting"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_89

    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_61c
    .catchall {:try_start_34 .. :try_end_51} :catchall_89

    :goto_51
    :try_start_51
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_89

    if-nez v15, :cond_5b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_5e
    move/from16 v0, v16

    if-ge v13, v0, :cond_5b0

    aget-object v9, v7, v13

    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5e

    :cond_6a
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_6d
    :try_start_6d
    new-instance v22, Ljava/io/File;

    const-string v26, "/data/misc/vpn/state"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_a0

    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Cannot delete the state"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_89} :catch_28
    .catchall {:try_start_6d .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v26

    if-nez v15, :cond_587

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_94
    move/from16 v0, v16

    if-ge v13, v0, :cond_587

    aget-object v9, v7, v13

    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_94

    :cond_a0
    :try_start_a0
    new-instance v26, Ljava/io/File;

    const-string v27, "/data/misc/vpn/abort"

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    const/4 v15, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_b5
    move/from16 v0, v16

    if-ge v13, v0, :cond_c7

    aget-object v6, v7, v13

    if-nez v20, :cond_bf

    if-eqz v6, :cond_c4

    :cond_bf
    const/16 v20, 0x1

    :goto_c1
    add-int/lit8 v13, v13, 0x1

    goto :goto_b5

    :cond_c4
    const/16 v20, 0x0

    goto :goto_c1

    :cond_c7
    if-nez v20, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v28, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_d6} :catch_28
    .catchall {:try_start_a0 .. :try_end_d6} :catchall_89

    if-nez v15, :cond_5d6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_e0
    move/from16 v0, v16

    if-ge v13, v0, :cond_5d6

    aget-object v9, v7, v13

    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_e0

    :cond_ec
    :try_start_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v28, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_206

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v6, v26, v12

    if-nez v6, :cond_116

    :cond_113
    add-int/lit8 v12, v12, 0x1

    goto :goto_fa

    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v9, v26, v12

    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :goto_121
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_131

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_121

    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v26, v0

    new-instance v27, Landroid/net/LocalSocket;

    invoke-direct/range {v27 .. v27}, Landroid/net/LocalSocket;-><init>()V

    aput-object v27, v26, v12

    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v26, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v26

    invoke-direct {v4, v9, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_147} :catch_28
    .catchall {:try_start_ec .. :try_end_147} :catchall_89

    :goto_147
    :try_start_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_154} :catch_194
    .catchall {:try_start_147 .. :try_end_154} :catchall_89

    :try_start_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    const/16 v27, 0x1f4

    invoke-virtual/range {v26 .. v27}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    invoke-virtual/range {v26 .. v26}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    move-object v7, v6

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_172
    move/from16 v0, v16

    if-ge v13, v0, :cond_1c6

    aget-object v5, v7, v13

    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v0, v8

    move/from16 v26, v0

    const v27, 0xffff

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_19f

    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "Argument is too large"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    :catch_194
    move-exception v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_147

    :cond_19f
    array-length v0, v8

    move/from16 v26, v0

    shr-int/lit8 v26, v26, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    array-length v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_172

    :cond_1c6
    const/16 v26, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v26, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    invoke-virtual/range {v26 .. v26}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_1e6} :catch_28
    .catchall {:try_start_154 .. :try_end_1e6} :catchall_89

    move-result-object v14

    :goto_1e7
    :try_start_1e7
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ea} :catch_5ad
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_89

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_113

    :goto_1f3
    const/16 v26, 0x1

    :try_start_1f5
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_1e7

    :cond_1fd
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    :cond_206
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_252

    const/4 v12, 0x0

    :goto_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v9, v26, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    if-eqz v26, :cond_24f

    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_24f

    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is dead"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_24f
    add-int/lit8 v12, v12, 0x1

    goto :goto_20d

    :cond_252
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "\n"

    const/16 v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_27d

    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Cannot parse the state"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v19, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_2df

    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    const/16 v27, 0x2

    aget-object v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_307

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_331

    :cond_307
    const/16 v26, 0x3

    aget-object v26, v19, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_331

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-nez v26, :cond_385

    :cond_359
    const/16 v26, 0x4

    aget-object v26, v19, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_385

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    const-string v27, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_388
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_388} :catch_28
    .catchall {:try_start_1f5 .. :try_end_388} :catchall_89

    move-result-wide v23

    :try_start_389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3d3
    .catchall {:try_start_389 .. :try_end_3d3} :catchall_44a

    :try_start_3d3
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_3d3 .. :try_end_3dd} :catch_28
    .catchall {:try_start_3d3 .. :try_end_3dd} :catchall_89

    :try_start_3dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_44f

    new-instance v26, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is gone"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    :catchall_447
    move-exception v26

    monitor-exit v27
    :try_end_449
    .catchall {:try_start_3dd .. :try_end_449} :catchall_447

    :try_start_449
    throw v26

    :catchall_44a
    move-exception v26

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_44f
    .catch Ljava/lang/Exception; {:try_start_449 .. :try_end_44f} :catch_28
    .catchall {:try_start_449 .. :try_end_44f} :catchall_89

    :cond_44f
    :try_start_44f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    new-instance v28, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_481
    .catchall {:try_start_44f .. :try_end_481} :catchall_447

    move-result-wide v23

    :try_start_482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mUserId:I
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    # invokes: Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_4d8
    .catchall {:try_start_482 .. :try_end_4d8} :catchall_54a

    :try_start_4d8
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4ec
    .catchall {:try_start_4d8 .. :try_end_4ec} :catchall_447

    move-result-wide v23

    :try_start_4ed
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4f5
    :goto_4f5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_54f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_504
    .catchall {:try_start_4ed .. :try_end_504} :catchall_545

    move-result v26

    if-eqz v26, :cond_4f5

    :try_start_507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    # invokes: Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_51a
    .catch Ljava/lang/Exception; {:try_start_507 .. :try_end_51a} :catch_51b
    .catchall {:try_start_507 .. :try_end_51a} :catchall_545

    goto :goto_4f5

    :catch_51b
    move-exception v11

    :try_start_51c
    const-string v26, "LegacyVpnRunner"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to add user "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " to owner\'s VPN"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_544
    .catchall {:try_start_51c .. :try_end_544} :catchall_545

    goto :goto_4f5

    :catchall_545
    move-exception v26

    :try_start_546
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    :catchall_54a
    move-exception v26

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    :cond_54f
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v26, "LegacyVpnRunner"

    const-string v28, "Connected!"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    monitor-exit v27
    :try_end_571
    .catchall {:try_start_546 .. :try_end_571} :catchall_447

    if-nez v15, :cond_5f9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_57b
    move/from16 v0, v16

    if-ge v13, v0, :cond_5f9

    aget-object v9, v7, v13

    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_57b

    :cond_587
    if-eqz v15, :cond_59f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5ac

    :cond_59f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :cond_5ac
    throw v26

    :catch_5ad
    move-exception v26

    goto/16 :goto_1f3

    :cond_5b0
    if-eqz v15, :cond_5c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5d5

    :cond_5c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v28, "execute"

    :goto_5d2
    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :cond_5d5
    return-void

    :cond_5d6
    if-eqz v15, :cond_5ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5d5

    :cond_5ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v28, "execute"

    goto :goto_5d2

    :cond_5f9
    if-eqz v15, :cond_611

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5d5

    :cond_611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v28, "execute"

    goto :goto_5d2

    :catch_61c
    move-exception v26

    goto/16 :goto_51
.end method

.method private monitorDaemons()V
    .registers 11

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_d

    :goto_c
    return-void

    :cond_d
    const-wide/16 v6, 0x7d0

    :try_start_f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const/4 v3, 0x0

    :goto_13
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_d

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_25} :catch_39
    .catchall {:try_start_f .. :try_end_25} :catchall_59

    move-result v6

    if-eqz v6, :cond_36

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v5, :cond_72

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :catch_39
    move-exception v2

    :try_start_3a
    const-string v6, "LegacyVpnRunner"

    const-string v7, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_59

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v5, :cond_68

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_4f
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    throw v6

    :catchall_59
    move-exception v6

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v5, :cond_4f

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_68
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "babysit"

    :goto_6e
    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_c

    :cond_72
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "babysit"

    goto :goto_6e
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    :cond_23
    return-void
.end method

.method public exit()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "exit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v4

    goto :goto_25
.end method

.method public run()V
    .registers 4

    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    :try_start_a
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v0
.end method
