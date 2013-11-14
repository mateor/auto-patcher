.class Lcom/android/server/ConnectivityService$CheckMp;
.super Landroid/os/AsyncTask;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$CheckMp$CallBack;,
        Lcom/android/server/ConnectivityService$CheckMp$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/ConnectivityService$CheckMp$Params;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKMP_TAG:Ljava/lang/String; = "CheckMp"

.field public static final MAX_TIMEOUT_MS:I = 0xea60

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCs:Lcom/android/server/ConnectivityService;

.field private mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .registers 5
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 9
    .param p1    # [Ljava/net/InetAddress;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_1c

    aget-object v0, v1, v3

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private declared-synchronized isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .registers 41
    .param p1    # Lcom/android/server/ConnectivityService$CheckMp$Params;

    monitor-enter p0

    const/16 v34, 0x0

    :try_start_3
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4500(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    new-instance v27, Ljava/util/Random;

    invoke-direct/range {v27 .. v27}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->isNetworkSupported(I)Z

    move-result v34

    if-nez v34, :cond_50

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X not mobile capable result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_222

    move-object/from16 v34, v29

    :goto_4e
    monitor-exit p0

    return-object v34

    :cond_50
    :try_start_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v23, v34, v35

    check-cast v23, Landroid/net/MobileDataStateTracker;

    invoke-virtual/range {v23 .. v23}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v16

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: isDefaultProvisioning="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v34

    const/16 v35, 0x5

    aget-object v24, v34, v35

    check-cast v24, Landroid/net/MobileDataStateTracker;

    invoke-virtual/range {v24 .. v24}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v17

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: isHipriProvisioning="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    if-nez v16, :cond_b8

    if-eqz v17, :cond_e0

    :cond_b8
    const/16 v34, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X default || hipri is provisioning result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_50 .. :try_end_dc} :catchall_222

    move-object/from16 v34, v29

    goto/16 :goto_4e

    :cond_e0
    :try_start_e0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4600(Lcom/android/server/ConnectivityService$CheckMp$Params;)J

    move-result-wide v36

    add-long v11, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Z

    move-result v34

    if-nez v34, :cond_127

    const-string v34, "isMobileOk: mdst is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    :goto_ff
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_127

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/ConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Z

    move-result v34

    if-eqz v34, :cond_1cb

    const-string v34, "isMobileOk: mdst ready, enable fail fast of mobile data"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    :cond_127
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: start hipri url="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4500(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    :goto_14a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_179

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/ConnectivityService;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v30

    if-eqz v30, :cond_170

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_225

    :cond_170
    const-string v34, "isMobileOk: hipri started"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    :cond_179
    :goto_179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_17c
    .catchall {:try_start_e0 .. :try_end_17c} :catchall_1d2

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_76a

    :try_start_181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v34, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_232

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: not connected ni="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1c9} :catch_4fc
    .catchall {:try_start_181 .. :try_end_1c9} :catchall_1d2

    move-result-object v29

    goto :goto_179

    :cond_1cb
    const/16 v34, 0x1

    :try_start_1cd
    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_1d0
    .catchall {:try_start_1cd .. :try_end_1d0} :catchall_1d2

    goto/16 :goto_ff

    :catchall_1d2
    move-exception v34

    :try_start_1d3
    const-string v35, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    :cond_1fc
    :goto_1fc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_7c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_1fc

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_221
    .catchall {:try_start_1d3 .. :try_end_221} :catchall_222

    goto :goto_1fc

    :catchall_222
    move-exception v34

    monitor-exit p0

    throw v34

    :cond_225
    const/16 v34, 0x0

    :try_start_227
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_230
    .catchall {:try_start_227 .. :try_end_230} :catchall_1d2

    goto/16 :goto_14a

    :cond_232
    :try_start_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v34

    const/16 v35, 0x5

    aget-object v22, v34, v35

    check-cast v22, Landroid/net/MobileDataStateTracker;

    invoke-virtual/range {v22 .. v22}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v34

    if-eqz v34, :cond_2dd

    const/16 v34, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X isProvisioningNetwork result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_26c} :catch_4fc
    .catchall {:try_start_232 .. :try_end_26c} :catchall_1d2

    :try_start_26c
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    :cond_295
    :goto_295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_2bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_295

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_295

    :cond_2bb
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_2d9
    .catchall {:try_start_26c .. :try_end_2d9} :catchall_222

    move-object/from16 v34, v29

    goto/16 :goto_4e

    :cond_2dd
    :try_start_2dd
    const-string v34, "isMobileOk: isProvisioningNetwork is false, continue"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_2e6
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e6} :catch_4fc
    .catchall {:try_start_2dd .. :try_end_2e6} :catchall_1d2

    :try_start_2e6
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_2ed
    .catch Ljava/net/UnknownHostException; {:try_start_2e6 .. :try_end_2ed} :catch_379
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_2ed} :catch_4fc
    .catchall {:try_start_2e6 .. :try_end_2ed} :catchall_1d2

    move-result-object v7

    :try_start_2ee
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: addresses="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v19

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->hasIPv6Address()Z

    move-result v20

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: linkHasIpv4="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " linkHasIpv6="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    new-instance v33, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v7

    array-length v0, v8

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_35b
    move/from16 v0, v18

    if-ge v15, v0, :cond_40f

    aget-object v4, v8, v15

    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v34, v0

    if-eqz v34, :cond_369

    if-nez v19, :cond_371

    :cond_369
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v34, v0

    if-eqz v34, :cond_376

    if-eqz v20, :cond_376

    :cond_371
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_376
    add-int/lit8 v15, v15, 0x1

    goto :goto_35b

    :catch_379
    move-exception v10

    const/16 v34, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X UnknownHostException result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_39e
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_39e} :catch_4fc
    .catchall {:try_start_2ee .. :try_end_39e} :catchall_1d2

    :try_start_39e
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    :cond_3c7
    :goto_3c7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_3ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_3c7

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_3c7

    :cond_3ed
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_40b
    .catchall {:try_start_39e .. :try_end_40b} :catchall_222

    move-object/from16 v34, v29

    goto/16 :goto_4e

    :cond_40f
    :try_start_40f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_46a

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_41a
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_41a} :catch_4fc
    .catchall {:try_start_40f .. :try_end_41a} :catchall_1d2

    move-result-object v34

    :try_start_41b
    const-string v35, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    :cond_444
    :goto_444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_803

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_444

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_469
    .catchall {:try_start_41b .. :try_end_469} :catchall_222

    goto :goto_444

    :cond_46a
    const/4 v5, 0x0

    move v6, v5

    :goto_46c
    add-int/lit8 v5, v6, 0x1

    const/16 v34, 0x3

    move/from16 v0, v34

    if-lt v6, v0, :cond_4ea

    :try_start_474
    const-string v34, "too many loops tried - giving up"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    :goto_47d
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X loops|timed out result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_49b
    .catch Ljava/lang/Exception; {:try_start_474 .. :try_end_49b} :catch_4fc
    .catchall {:try_start_474 .. :try_end_49b} :catchall_1d2

    :try_start_49b
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    :cond_4c4
    :goto_4c4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_748

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_4c4

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_4e9
    .catchall {:try_start_49b .. :try_end_4e9} :catchall_222

    goto :goto_4c4

    :cond_4ea
    :try_start_4ea
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-ltz v34, :cond_51b

    const-string v34, "spend too much time - giving up"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_4fb
    .catch Ljava/lang/Exception; {:try_start_4ea .. :try_end_4fb} :catch_4fc
    .catchall {:try_start_4ea .. :try_end_4fb} :catchall_1d2

    goto :goto_47d

    :catch_4fc
    move-exception v10

    :try_start_4fd
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: Exception e="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_519
    .catchall {:try_start_4fd .. :try_end_519} :catchall_1d2

    goto/16 :goto_179

    :cond_51b
    :try_start_51b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v34

    if-eqz v34, :cond_6b7

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: wait to establish route to hostAddr="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    new-instance v25, Ljava/net/URL;

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "?q="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7fffffff

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: newUrl="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_5b9
    .catch Ljava/lang/Exception; {:try_start_51b .. :try_end_5b9} :catch_4fc
    .catchall {:try_start_51b .. :try_end_5b9} :catchall_1d2

    const/16 v32, 0x0

    :try_start_5bb
    sget-object v34, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v34

    move-object/from16 v0, v34

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v34, 0x1388

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v34, 0x1388

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v34, "Connection"

    const-string v35, "close"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: headers="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v32, 0x0

    const/16 v34, 0xcc

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_6f8

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X expected responseCode="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_668
    .catch Ljava/lang/Exception; {:try_start_5bb .. :try_end_668} :catch_71f
    .catchall {:try_start_5bb .. :try_end_668} :catchall_1d2

    :try_start_668
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    :cond_691
    :goto_691
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_6d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_691

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V
    :try_end_6b6
    .catchall {:try_start_668 .. :try_end_6b6} :catchall_222

    goto :goto_691

    :cond_6b7
    :try_start_6b7
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: could not establish route to hostAddr="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_6d3
    .catch Ljava/lang/Exception; {:try_start_6b7 .. :try_end_6d3} :catch_4fc
    .catchall {:try_start_6b7 .. :try_end_6d3} :catchall_1d2

    move v6, v5

    goto/16 :goto_46c

    :cond_6d6
    :try_start_6d6
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_6f4
    .catchall {:try_start_6d6 .. :try_end_6f4} :catchall_222

    move-object/from16 v34, v29

    goto/16 :goto_4e

    :cond_6f8
    :try_start_6f8
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: not expected responseCode="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v34, 0x4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_71b
    .catch Ljava/lang/Exception; {:try_start_6f8 .. :try_end_71b} :catch_71f
    .catchall {:try_start_6f8 .. :try_end_71b} :catchall_1d2

    move-result-object v29

    :cond_71c
    :goto_71c
    move v6, v5

    goto/16 :goto_46c

    :catch_71f
    move-exception v10

    :try_start_720
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: HttpURLConnection Exception e="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    if-eqz v32, :cond_71c

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_747
    .catch Ljava/lang/Exception; {:try_start_720 .. :try_end_747} :catch_4fc
    .catchall {:try_start_720 .. :try_end_747} :catchall_1d2

    goto :goto_71c

    :cond_748
    :try_start_748
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_766
    .catchall {:try_start_748 .. :try_end_766} :catchall_222

    move-object/from16 v34, v29

    goto/16 :goto_4e

    :cond_76a
    :try_start_76a
    const-string v34, "isMobileOk: timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_773
    .catchall {:try_start_76a .. :try_end_773} :catchall_1d2

    :try_start_773
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    :cond_79c
    :goto_79c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_7e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_79c

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/ConnectivityService$CheckMp;->sleep(I)V

    goto :goto_79c

    :cond_7c2
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    throw v34

    :cond_7e1
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v34, v29

    goto/16 :goto_4e

    :cond_803
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_821
    .catchall {:try_start_773 .. :try_end_821} :catchall_222

    goto/16 :goto_4e
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    const-string v0, "ConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CheckMp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private printNetworkInfo()V
    .registers 10

    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIccCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/ConnectivityService$CheckMp;->mCs:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_6f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ni.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v3, :cond_74

    aget-object v4, v0, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_6f
    const-string v7, "no network info ni=null"

    invoke-direct {p0, v7}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    :cond_74
    return-void
.end method

.method private static sleep(I)V
    .registers 4
    .param p0    # I

    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .registers 3
    .param p1    # [Lcom/android/server/ConnectivityService$CheckMp$Params;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->isMobileOk(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Lcom/android/server/ConnectivityService$CheckMp$Params;

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->doInBackground([Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "clients3.google.com"

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1    # Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4900(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp;->mParams:Lcom/android/server/ConnectivityService$CheckMp$Params;

    # getter for: Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$CheckMp$Params;->access$4900(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;->onComplete(Ljava/lang/Integer;)V

    :cond_2b
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$CheckMp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
