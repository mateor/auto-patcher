.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .registers 156

    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v131

    if-eqz v131, :cond_4e

    invoke-virtual/range {v131 .. v131}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4e

    const/4 v7, 0x0

    move-object/from16 v0, v131

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_80f

    const/16 v125, 0x1

    :goto_35
    invoke-virtual/range {v131 .. v131}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_813

    const/4 v7, 0x1

    invoke-virtual/range {v131 .. v131}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v131

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v124

    :goto_47
    move/from16 v0, v125

    move-object/from16 v1, v124

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    :cond_4e
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    const-string v7, ""

    move-object/from16 v0, v99

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_817

    const/16 v98, 0x0

    :goto_60
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const/16 v104, 0x0

    const/16 v61, 0x0

    const/16 v78, 0x0

    const/16 v106, 0x0

    const/4 v4, 0x0

    const/16 v92, 0x0

    const/16 v68, 0x0

    const/16 v144, 0x0

    const/16 v63, 0x0

    const/16 v112, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v114, 0x0

    const/16 v74, 0x0

    const/16 v151, 0x0

    const/16 v149, 0x0

    const/16 v130, 0x0

    const/16 v120, 0x0

    const/4 v5, 0x0

    const/16 v153, 0x0

    const/16 v69, 0x0

    const/16 v93, 0x0

    const/16 v142, 0x0

    const/16 v128, 0x0

    const/16 v138, 0x0

    const/16 v140, 0x0

    const/16 v126, 0x0

    const/16 v116, 0x0

    const/16 v71, 0x0

    const/16 v103, 0x0

    const/16 v134, 0x0

    const/16 v76, 0x0

    new-instance v154, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v154

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v154 .. v154}, Landroid/os/HandlerThread;->start()V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v154 .. v154}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v24, 0x0

    const/16 v100, 0x0

    :try_start_d3
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/pm/Installer;

    invoke-direct/range {v105 .. v105}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_df
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_df} :catch_81d

    :try_start_df
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/pm/Installer;->ping()Z

    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v121, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v121 .. v121}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_ee
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_ee} :catch_c3d

    :try_start_ee
    const-string v7, "power"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v98 .. v98}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_ff
    .catch Ljava/lang/RuntimeException; {:try_start_ee .. :try_end_ff} :catch_c42

    move-result-object v5

    move-object/from16 v4, v121

    move-object/from16 v104, v105

    :goto_104
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v84

    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v85

    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    :try_start_13c
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_14a
    .catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_14a} :catch_bcf

    :try_start_14a
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v135, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_15e
    .catch Ljava/lang/RuntimeException; {:try_start_14a .. :try_end_15e} :catch_bdc

    :try_start_15e
    const-string v7, "telephony.registry"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_18b

    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18b
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v81

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_830

    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    :cond_1ab
    :goto_1ab
    if-eqz v98, :cond_845

    const/4 v7, 0x1

    :goto_1ae
    move-object/from16 v0, v104

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1b5
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_1b5} :catch_854

    move-result-object v120

    :try_start_1b6
    invoke-interface/range {v120 .. v120}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_1b9
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1b9} :catch_b5e
    .catch Ljava/lang/RuntimeException; {:try_start_1b6 .. :try_end_1b9} :catch_854

    move-result v100

    :goto_1ba
    :try_start_1ba
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1e6
    .catch Ljava/lang/RuntimeException; {:try_start_1ba .. :try_end_1e6} :catch_854

    :try_start_1e6
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v62, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_1e6 .. :try_end_1f4} :catch_848
    .catch Ljava/lang/RuntimeException; {:try_start_1e6 .. :try_end_1f4} :catch_854

    :try_start_1f4
    const-string v7, "account"

    move-object/from16 v0, v62

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1fb
    .catch Ljava/lang/Throwable; {:try_start_1f4 .. :try_end_1fb} :catch_c38
    .catch Ljava/lang/RuntimeException; {:try_start_1f4 .. :try_end_1fb} :catch_be7

    move-object/from16 v61, v62

    :goto_1fd
    :try_start_1fd
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v98

    if-ne v0, v7, :cond_871

    const/4 v7, 0x1

    :goto_20a
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v78

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_224
    .catch Ljava/lang/RuntimeException; {:try_start_1fd .. :try_end_224} :catch_854

    :try_start_224
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_230
    .catch Ljava/lang/RuntimeException; {:try_start_224 .. :try_end_230} :catch_bf6

    :try_start_230
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v145, Lcom/android/server/VibratorService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_243
    .catch Ljava/lang/RuntimeException; {:try_start_230 .. :try_end_243} :catch_c01

    :try_start_243
    const-string v7, "vibrator"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v77, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_258
    .catch Ljava/lang/RuntimeException; {:try_start_243 .. :try_end_258} :catch_c0a

    :try_start_258
    const-string v7, "consumer_ir"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_280
    .catch Ljava/lang/RuntimeException; {:try_start_258 .. :try_end_280} :catch_c15

    :try_start_280
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_2b7
    .catch Ljava/lang/RuntimeException; {:try_start_280 .. :try_end_2b7} :catch_c22

    :try_start_2b7
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move/from16 v0, v98

    if-eq v0, v7, :cond_874

    const/16 v22, 0x1

    :goto_2c5
    if-nez v100, :cond_878

    const/16 v23, 0x1

    :goto_2c9
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v153

    const-string v7, "window"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v153

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v153 .. v153}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, v153

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87c

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_315
    .catch Ljava/lang/RuntimeException; {:try_start_2b7 .. :try_end_315} :catch_88a

    :goto_315
    move-object/from16 v76, v77

    move-object/from16 v134, v135

    move-object/from16 v144, v145

    :goto_31b
    const/16 v82, 0x0

    const/16 v132, 0x0

    const/16 v101, 0x0

    const/16 v64, 0x0

    const/16 v118, 0x0

    const/16 v147, 0x0

    const/16 v107, 0x0

    const/16 v79, 0x0

    const/16 v136, 0x0

    const/16 v109, 0x0

    const/16 v95, 0x0

    const/16 v66, 0x0

    const/16 v122, 0x0

    const/4 v7, 0x1

    move/from16 v0, v98

    if-eq v0, v7, :cond_364

    :try_start_33a
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v102, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v102

    move-object/from16 v1, v153

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_34a
    .catch Ljava/lang/Throwable; {:try_start_33a .. :try_end_34a} :catch_8cb

    :try_start_34a
    const-string v7, "input_method"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_351
    .catch Ljava/lang/Throwable; {:try_start_34a .. :try_end_351} :catch_bca

    move-object/from16 v101, v102

    :goto_353
    :try_start_353
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_364
    .catch Ljava/lang/Throwable; {:try_start_353 .. :try_end_364} :catch_8d7

    :cond_364
    :goto_364
    :try_start_364
    invoke-virtual/range {v153 .. v153}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_367
    .catch Ljava/lang/Throwable; {:try_start_364 .. :try_end_367} :catch_8e3

    :goto_367
    :try_start_367
    invoke-interface/range {v120 .. v120}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_36a
    .catch Ljava/lang/Throwable; {:try_start_367 .. :try_end_36a} :catch_8ef

    :goto_36a
    :try_start_36a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040420

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_37d
    .catch Landroid/os/RemoteException; {:try_start_36a .. :try_end_37d} :catch_bc7

    :goto_37d
    const/4 v7, 0x1

    move/from16 v0, v98

    if-eq v0, v7, :cond_c4d

    if-nez v89, :cond_3a9

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a9

    :try_start_392
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/MountService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_3a0
    .catch Ljava/lang/Throwable; {:try_start_392 .. :try_end_3a0} :catch_8fb

    :try_start_3a0
    const-string v7, "mount"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a7
    .catch Ljava/lang/Throwable; {:try_start_3a0 .. :try_end_3a7} :catch_bc2

    move-object/from16 v112, v113

    :cond_3a9
    :goto_3a9
    if-nez v88, :cond_3d9

    :try_start_3ab
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v110, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v110

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_3b9
    .catch Ljava/lang/Throwable; {:try_start_3ab .. :try_end_3b9} :catch_907

    :try_start_3b9
    const-string v7, "lock_settings"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c0
    .catch Ljava/lang/Throwable; {:try_start_3b9 .. :try_end_3c0} :catch_bbd

    move-object/from16 v109, v110

    :goto_3c2
    :try_start_3c2
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v83, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d0
    .catch Ljava/lang/Throwable; {:try_start_3c2 .. :try_end_3d0} :catch_913

    :try_start_3d0
    const-string v7, "device_policy"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d7
    .catch Ljava/lang/Throwable; {:try_start_3d0 .. :try_end_3d7} :catch_bb8

    move-object/from16 v82, v83

    :cond_3d9
    :goto_3d9
    if-nez v90, :cond_3f4

    :try_start_3db
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v133, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v133

    move-object/from16 v1, v153

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3eb
    .catch Ljava/lang/Throwable; {:try_start_3db .. :try_end_3eb} :catch_91f

    :try_start_3eb
    const-string v7, "statusbar"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f2
    .catch Ljava/lang/Throwable; {:try_start_3eb .. :try_end_3f2} :catch_bb3

    move-object/from16 v132, v133

    :cond_3f4
    :goto_3f4
    if-nez v88, :cond_407

    :try_start_3f6
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_407
    .catch Ljava/lang/Throwable; {:try_start_3f6 .. :try_end_407} :catch_92b

    :cond_407
    :goto_407
    if-nez v87, :cond_41b

    :try_start_409
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41b
    .catch Ljava/lang/Throwable; {:try_start_409 .. :try_end_41b} :catch_937

    :cond_41b
    :goto_41b
    if-nez v88, :cond_434

    :try_start_41d
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v137, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42b
    .catch Ljava/lang/Throwable; {:try_start_41d .. :try_end_42b} :catch_943

    :try_start_42b
    const-string v7, "textservices"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_432
    .catch Ljava/lang/Throwable; {:try_start_42b .. :try_end_432} :catch_bae

    move-object/from16 v136, v137

    :cond_434
    :goto_434
    if-nez v87, :cond_c49

    :try_start_436
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v115, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v115

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_448
    .catch Ljava/lang/Throwable; {:try_start_436 .. :try_end_448} :catch_94f

    :try_start_448
    const-string v7, "netstats"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44f
    .catch Ljava/lang/Throwable; {:try_start_448 .. :try_end_44f} :catch_ba9

    move-object/from16 v29, v115

    :goto_451
    :try_start_451
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_465
    .catch Ljava/lang/Throwable; {:try_start_451 .. :try_end_465} :catch_95b

    :try_start_465
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46c
    .catch Ljava/lang/Throwable; {:try_start_465 .. :try_end_46c} :catch_ba6

    :goto_46c
    :try_start_46c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v152, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_47a
    .catch Ljava/lang/Throwable; {:try_start_46c .. :try_end_47a} :catch_969

    :try_start_47a
    const-string v7, "wifip2p"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_481
    .catch Ljava/lang/Throwable; {:try_start_47a .. :try_end_481} :catch_ba1

    move-object/from16 v151, v152

    :goto_483
    :try_start_483
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v150, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_491
    .catch Ljava/lang/Throwable; {:try_start_483 .. :try_end_491} :catch_975

    :try_start_491
    const-string v7, "wifi"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_498
    .catch Ljava/lang/Throwable; {:try_start_491 .. :try_end_498} :catch_b9c

    move-object/from16 v149, v150

    :goto_49a
    :try_start_49a
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v75

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_4ae
    .catch Ljava/lang/Throwable; {:try_start_49a .. :try_end_4ae} :catch_981

    :try_start_4ae
    const-string v7, "connectivity"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual/range {v151 .. v151}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    invoke-virtual/range {v149 .. v149}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_4c9
    .catch Ljava/lang/Throwable; {:try_start_4ae .. :try_end_4c9} :catch_b97

    move-object/from16 v74, v75

    :goto_4cb
    :try_start_4cb
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v130

    const-string v7, "servicediscovery"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4dd
    .catch Ljava/lang/Throwable; {:try_start_4cb .. :try_end_4dd} :catch_98d

    :goto_4dd
    if-nez v88, :cond_4f0

    :try_start_4df
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f0
    .catch Ljava/lang/Throwable; {:try_start_4df .. :try_end_4f0} :catch_999

    :cond_4f0
    :goto_4f0
    if-eqz v112, :cond_4f7

    if-nez v24, :cond_4f7

    invoke-virtual/range {v112 .. v112}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_4f7
    if-eqz v61, :cond_4fc

    :try_start_4f9
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_4fc
    .catch Ljava/lang/Throwable; {:try_start_4f9 .. :try_end_4fc} :catch_9a5

    :cond_4fc
    :goto_4fc
    if-eqz v78, :cond_501

    :try_start_4fe
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_501
    .catch Ljava/lang/Throwable; {:try_start_4fe .. :try_end_501} :catch_9b1

    :cond_501
    :goto_501
    :try_start_501
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v119, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v119

    move-object/from16 v1, v132

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_511
    .catch Ljava/lang/Throwable; {:try_start_501 .. :try_end_511} :catch_9bd

    :try_start_511
    const-string v7, "notification"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v119

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_51f
    .catch Ljava/lang/Throwable; {:try_start_511 .. :try_end_51f} :catch_b92

    move-object/from16 v118, v119

    :goto_521
    :try_start_521
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_532
    .catch Ljava/lang/Throwable; {:try_start_521 .. :try_end_532} :catch_9c9

    :goto_532
    if-nez v85, :cond_562

    :try_start_534
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v108, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_542
    .catch Ljava/lang/Throwable; {:try_start_534 .. :try_end_542} :catch_9d5

    :try_start_542
    const-string v7, "location"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_549
    .catch Ljava/lang/Throwable; {:try_start_542 .. :try_end_549} :catch_b8d

    move-object/from16 v107, v108

    :goto_54b
    :try_start_54b
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v80, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_559
    .catch Ljava/lang/Throwable; {:try_start_54b .. :try_end_559} :catch_9e1

    :try_start_559
    const-string v7, "country_detector"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_560
    .catch Ljava/lang/Throwable; {:try_start_559 .. :try_end_560} :catch_b88

    move-object/from16 v79, v80

    :cond_562
    :goto_562
    if-nez v88, :cond_575

    :try_start_564
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_575
    .catch Ljava/lang/Throwable; {:try_start_564 .. :try_end_575} :catch_9ed

    :cond_575
    :goto_575
    :try_start_575
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58d
    .catch Ljava/lang/Throwable; {:try_start_575 .. :try_end_58d} :catch_9f9

    :goto_58d
    if-nez v88, :cond_5b5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110033

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_5b5

    :try_start_59c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_5b5

    new-instance v148, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5ac
    .catch Ljava/lang/Throwable; {:try_start_59c .. :try_end_5ac} :catch_a05

    :try_start_5ac
    const-string v7, "wallpaper"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b3
    .catch Ljava/lang/Throwable; {:try_start_5ac .. :try_end_5b3} :catch_b83

    move-object/from16 v147, v148

    :cond_5b5
    :goto_5b5
    if-nez v86, :cond_5d6

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d6

    :try_start_5c5
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d6
    .catch Ljava/lang/Throwable; {:try_start_5c5 .. :try_end_5d6} :catch_a11

    :cond_5d6
    :goto_5d6
    if-nez v88, :cond_5e8

    :try_start_5d8
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v94, Lcom/android/server/DockObserver;

    move-object/from16 v0, v94

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_5e6
    .catch Ljava/lang/Throwable; {:try_start_5d8 .. :try_end_5e6} :catch_a1d

    move-object/from16 v93, v94

    :cond_5e8
    :goto_5e8
    if-nez v86, :cond_5fd

    :try_start_5ea
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_5fd
    .catch Ljava/lang/Throwable; {:try_start_5ea .. :try_end_5fd} :catch_a29

    :cond_5fd
    :goto_5fd
    if-nez v88, :cond_62d

    :try_start_5ff
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v143, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_60d
    .catch Ljava/lang/Throwable; {:try_start_5ff .. :try_end_60d} :catch_a35

    :try_start_60d
    const-string v7, "usb"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_614
    .catch Ljava/lang/Throwable; {:try_start_60d .. :try_end_614} :catch_b7e

    move-object/from16 v142, v143

    :goto_616
    :try_start_616
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v129, Lcom/android/server/SerialService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_624
    .catch Ljava/lang/Throwable; {:try_start_616 .. :try_end_624} :catch_a41

    :try_start_624
    const-string v7, "serial"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62b
    .catch Ljava/lang/Throwable; {:try_start_624 .. :try_end_62b} :catch_b79

    move-object/from16 v128, v129

    :cond_62d
    :goto_62d
    :try_start_62d
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v139, Lcom/android/server/TwilightService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_63b
    .catch Ljava/lang/Throwable; {:try_start_62d .. :try_end_63b} :catch_a4d

    move-object/from16 v138, v139

    :goto_63d
    :try_start_63d
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v141, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v141

    move-object/from16 v1, v138

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_64d
    .catch Ljava/lang/Throwable; {:try_start_63d .. :try_end_64d} :catch_a59

    move-object/from16 v140, v141

    :goto_64f
    if-nez v88, :cond_689

    :try_start_651
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_662
    .catch Ljava/lang/Throwable; {:try_start_651 .. :try_end_662} :catch_a65

    :goto_662
    :try_start_662
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v65, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_670
    .catch Ljava/lang/Throwable; {:try_start_662 .. :try_end_670} :catch_a71

    :try_start_670
    const-string v7, "appwidget"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_677
    .catch Ljava/lang/Throwable; {:try_start_670 .. :try_end_677} :catch_b74

    move-object/from16 v64, v65

    :goto_679
    :try_start_679
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_687
    .catch Ljava/lang/Throwable; {:try_start_679 .. :try_end_687} :catch_a7d

    move-object/from16 v126, v127

    :cond_689
    :goto_689
    :try_start_689
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69a
    .catch Ljava/lang/Throwable; {:try_start_689 .. :try_end_69a} :catch_a89

    :goto_69a
    :try_start_69a
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ab
    .catch Ljava/lang/Throwable; {:try_start_69a .. :try_end_6ab} :catch_a95

    :goto_6ab
    if-nez v87, :cond_6bd

    :try_start_6ad
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_6bb
    .catch Ljava/lang/Throwable; {:try_start_6ad .. :try_end_6bb} :catch_aa1

    move-object/from16 v116, v117

    :cond_6bd
    :goto_6bd
    if-nez v86, :cond_6d6

    :try_start_6bf
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_6cd
    .catch Ljava/lang/Throwable; {:try_start_6bf .. :try_end_6cd} :catch_aad

    :try_start_6cd
    const-string v7, "commontime_management"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d4
    .catch Ljava/lang/Throwable; {:try_start_6cd .. :try_end_6d4} :catch_b6f

    move-object/from16 v71, v72

    :cond_6d6
    :goto_6d6
    if-nez v87, :cond_6e4

    :try_start_6d8
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_6e4
    .catch Ljava/lang/Throwable; {:try_start_6d8 .. :try_end_6e4} :catch_ab9

    :cond_6e4
    :goto_6e4
    if-nez v88, :cond_70c

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_70c

    :try_start_6f3
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v96

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_703
    .catch Ljava/lang/Throwable; {:try_start_6f3 .. :try_end_703} :catch_ac5

    :try_start_703
    const-string v7, "dreams"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70a
    .catch Ljava/lang/Throwable; {:try_start_703 .. :try_end_70a} :catch_b6a

    move-object/from16 v95, v96

    :cond_70c
    :goto_70c
    if-nez v88, :cond_725

    :try_start_70e
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v67, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_71c
    .catch Ljava/lang/Throwable; {:try_start_70e .. :try_end_71c} :catch_ad1

    :try_start_71c
    const-string v7, "assetatlas"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_723
    .catch Ljava/lang/Throwable; {:try_start_71c .. :try_end_723} :catch_b65

    move-object/from16 v66, v67

    :cond_725
    :goto_725
    :try_start_725
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_731
    .catch Ljava/lang/Throwable; {:try_start_725 .. :try_end_731} :catch_add

    :goto_731
    :try_start_731
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v123, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_73f
    .catch Ljava/lang/Throwable; {:try_start_731 .. :try_end_73f} :catch_ae9

    :try_start_73f
    const-string v7, "print"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_746
    .catch Ljava/lang/Throwable; {:try_start_73f .. :try_end_746} :catch_b61

    move-object/from16 v122, v123

    :goto_748
    invoke-virtual/range {v153 .. v153}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    if-eqz v47, :cond_af5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_75f
    :try_start_75f
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_762
    .catch Ljava/lang/Throwable; {:try_start_75f .. :try_end_762} :catch_afe

    :goto_762
    if-eqz v109, :cond_767

    :try_start_764
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_767
    .catch Ljava/lang/Throwable; {:try_start_764 .. :try_end_767} :catch_b0a

    :cond_767
    :goto_767
    if-eqz v82, :cond_76c

    :try_start_769
    invoke-virtual/range {v82 .. v82}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_76c
    .catch Ljava/lang/Throwable; {:try_start_769 .. :try_end_76c} :catch_b16

    :cond_76c
    :goto_76c
    if-eqz v118, :cond_771

    :try_start_76e
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_771
    .catch Ljava/lang/Throwable; {:try_start_76e .. :try_end_771} :catch_b22

    :cond_771
    :goto_771
    :try_start_771
    invoke-virtual/range {v153 .. v153}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_774
    .catch Ljava/lang/Throwable; {:try_start_771 .. :try_end_774} :catch_b2e

    :goto_774
    if-eqz v47, :cond_77d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_77d
    invoke-virtual/range {v153 .. v153}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v73

    new-instance v111, Landroid/util/DisplayMetrics;

    invoke-direct/range {v111 .. v111}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/view/WindowManager;

    invoke-interface/range {v146 .. v146}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v111

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v73

    move-object/from16 v1, v111

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_7a2
    move-object/from16 v0, v138

    move-object/from16 v1, v95

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_7a9
    .catch Ljava/lang/Throwable; {:try_start_7a2 .. :try_end_7a9} :catch_b3a

    :goto_7a9
    :try_start_7a9
    invoke-interface/range {v120 .. v120}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_7ac
    .catch Ljava/lang/Throwable; {:try_start_7a9 .. :try_end_7ac} :catch_b46

    :goto_7ac
    :try_start_7ac
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_7b3
    .catch Ljava/lang/Throwable; {:try_start_7ac .. :try_end_7b3} :catch_b52

    :goto_7b3
    move-object/from16 v34, v5

    move-object/from16 v35, v112

    move-object/from16 v36, v8

    move-object/from16 v37, v30

    move-object/from16 v38, v29

    move-object/from16 v39, v25

    move-object/from16 v40, v74

    move-object/from16 v41, v93

    move-object/from16 v42, v142

    move-object/from16 v43, v138

    move-object/from16 v44, v140

    move-object/from16 v46, v64

    move-object/from16 v48, v147

    move-object/from16 v49, v101

    move-object/from16 v45, v126

    move-object/from16 v51, v107

    move-object/from16 v52, v79

    move-object/from16 v53, v116

    move-object/from16 v54, v71

    move-object/from16 v55, v136

    move-object/from16 v50, v132

    move-object/from16 v56, v95

    move-object/from16 v57, v66

    move-object/from16 v58, v20

    move-object/from16 v59, v134

    move-object/from16 v60, v122

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v60}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/print/PrintManagerService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_804

    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_804
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80f
    const/16 v125, 0x0

    goto/16 :goto_35

    :cond_813
    const/16 v124, 0x0

    goto/16 :goto_47

    :cond_817
    invoke-static/range {v99 .. v99}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v98

    goto/16 :goto_60

    :catch_81d
    move-exception v97

    :goto_81e
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v97

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_104

    :cond_830
    :try_start_830
    const-string v7, "1"

    move-object/from16 v0, v81

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ab

    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    goto/16 :goto_1ab

    :cond_845
    const/4 v7, 0x0

    goto/16 :goto_1ae

    :catch_848
    move-exception v97

    :goto_849
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v97

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_852
    .catch Ljava/lang/RuntimeException; {:try_start_830 .. :try_end_852} :catch_854

    goto/16 :goto_1fd

    :catch_854
    move-exception v97

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v8, v68

    move-object/from16 v6, v106

    :goto_85f
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v97

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31b

    :cond_871
    const/4 v7, 0x0

    goto/16 :goto_20a

    :cond_874
    const/16 v22, 0x0

    goto/16 :goto_2c5

    :cond_878
    const/16 v23, 0x0

    goto/16 :goto_2c9

    :cond_87c
    const/4 v7, 0x1

    move/from16 v0, v98

    if-ne v0, v7, :cond_892

    :try_start_881
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_315

    :catch_88a
    move-exception v97

    move-object/from16 v76, v77

    move-object/from16 v134, v135

    move-object/from16 v144, v145

    goto :goto_85f

    :cond_892
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8a7

    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_315

    :cond_8a7
    if-eqz v84, :cond_8b2

    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_315

    :cond_8b2
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8c0
    .catch Ljava/lang/RuntimeException; {:try_start_881 .. :try_end_8c0} :catch_88a

    :try_start_8c0
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c7
    .catch Ljava/lang/RuntimeException; {:try_start_8c0 .. :try_end_8c7} :catch_c2d

    move-object/from16 v69, v70

    goto/16 :goto_315

    :catch_8cb
    move-exception v97

    :goto_8cc
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_353

    :catch_8d7
    move-exception v97

    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_364

    :catch_8e3
    move-exception v97

    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_367

    :catch_8ef
    move-exception v97

    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36a

    :catch_8fb
    move-exception v97

    :goto_8fc
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a9

    :catch_907
    move-exception v97

    :goto_908
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c2

    :catch_913
    move-exception v97

    :goto_914
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d9

    :catch_91f
    move-exception v97

    :goto_920
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f4

    :catch_92b
    move-exception v97

    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_407

    :catch_937
    move-exception v97

    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41b

    :catch_943
    move-exception v97

    :goto_944
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_434

    :catch_94f
    move-exception v97

    :goto_950
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_451

    :catch_95b
    move-exception v97

    move-object/from16 v25, v114

    :goto_95e
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46c

    :catch_969
    move-exception v97

    :goto_96a
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_483

    :catch_975
    move-exception v97

    :goto_976
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49a

    :catch_981
    move-exception v97

    :goto_982
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4cb

    :catch_98d
    move-exception v97

    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4dd

    :catch_999
    move-exception v97

    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f0

    :catch_9a5
    move-exception v97

    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4fc

    :catch_9b1
    move-exception v97

    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_501

    :catch_9bd
    move-exception v97

    :goto_9be
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_521

    :catch_9c9
    move-exception v97

    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_532

    :catch_9d5
    move-exception v97

    :goto_9d6
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54b

    :catch_9e1
    move-exception v97

    :goto_9e2
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_562

    :catch_9ed
    move-exception v97

    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_575

    :catch_9f9
    move-exception v97

    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58d

    :catch_a05
    move-exception v97

    :goto_a06
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b5

    :catch_a11
    move-exception v97

    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d6

    :catch_a1d
    move-exception v97

    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e8

    :catch_a29
    move-exception v97

    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5fd

    :catch_a35
    move-exception v97

    :goto_a36
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_616

    :catch_a41
    move-exception v97

    :goto_a42
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v97

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_62d

    :catch_a4d
    move-exception v97

    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63d

    :catch_a59
    move-exception v97

    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64f

    :catch_a65
    move-exception v97

    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v97

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_662

    :catch_a71
    move-exception v97

    :goto_a72
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_679

    :catch_a7d
    move-exception v97

    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_689

    :catch_a89
    move-exception v97

    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69a

    :catch_a95
    move-exception v97

    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6ab

    :catch_aa1
    move-exception v97

    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6bd

    :catch_aad
    move-exception v97

    :goto_aae
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d6

    :catch_ab9
    move-exception v97

    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e4

    :catch_ac5
    move-exception v97

    :goto_ac6
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70c

    :catch_ad1
    move-exception v97

    :goto_ad2
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_725

    :catch_add
    move-exception v97

    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_731

    :catch_ae9
    move-exception v97

    :goto_aea
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_748

    :cond_af5
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_75f

    :catch_afe
    move-exception v97

    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_762

    :catch_b0a
    move-exception v97

    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_767

    :catch_b16
    move-exception v97

    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76c

    :catch_b22
    move-exception v97

    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_771

    :catch_b2e
    move-exception v97

    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_774

    :catch_b3a
    move-exception v97

    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a9

    :catch_b46
    move-exception v97

    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ac

    :catch_b52
    move-exception v97

    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7b3

    :catch_b5e
    move-exception v7

    goto/16 :goto_1ba

    :catch_b61
    move-exception v97

    move-object/from16 v122, v123

    goto :goto_aea

    :catch_b65
    move-exception v97

    move-object/from16 v66, v67

    goto/16 :goto_ad2

    :catch_b6a
    move-exception v97

    move-object/from16 v95, v96

    goto/16 :goto_ac6

    :catch_b6f
    move-exception v97

    move-object/from16 v71, v72

    goto/16 :goto_aae

    :catch_b74
    move-exception v97

    move-object/from16 v64, v65

    goto/16 :goto_a72

    :catch_b79
    move-exception v97

    move-object/from16 v128, v129

    goto/16 :goto_a42

    :catch_b7e
    move-exception v97

    move-object/from16 v142, v143

    goto/16 :goto_a36

    :catch_b83
    move-exception v97

    move-object/from16 v147, v148

    goto/16 :goto_a06

    :catch_b88
    move-exception v97

    move-object/from16 v79, v80

    goto/16 :goto_9e2

    :catch_b8d
    move-exception v97

    move-object/from16 v107, v108

    goto/16 :goto_9d6

    :catch_b92
    move-exception v97

    move-object/from16 v118, v119

    goto/16 :goto_9be

    :catch_b97
    move-exception v97

    move-object/from16 v74, v75

    goto/16 :goto_982

    :catch_b9c
    move-exception v97

    move-object/from16 v149, v150

    goto/16 :goto_976

    :catch_ba1
    move-exception v97

    move-object/from16 v151, v152

    goto/16 :goto_96a

    :catch_ba6
    move-exception v97

    goto/16 :goto_95e

    :catch_ba9
    move-exception v97

    move-object/from16 v29, v115

    goto/16 :goto_950

    :catch_bae
    move-exception v97

    move-object/from16 v136, v137

    goto/16 :goto_944

    :catch_bb3
    move-exception v97

    move-object/from16 v132, v133

    goto/16 :goto_920

    :catch_bb8
    move-exception v97

    move-object/from16 v82, v83

    goto/16 :goto_914

    :catch_bbd
    move-exception v97

    move-object/from16 v109, v110

    goto/16 :goto_908

    :catch_bc2
    move-exception v97

    move-object/from16 v112, v113

    goto/16 :goto_8fc

    :catch_bc7
    move-exception v7

    goto/16 :goto_37d

    :catch_bca
    move-exception v97

    move-object/from16 v101, v102

    goto/16 :goto_8cc

    :catch_bcf
    move-exception v97

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v8, v68

    move-object/from16 v11, v92

    move-object/from16 v6, v106

    goto/16 :goto_85f

    :catch_bdc
    move-exception v97

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v8, v68

    move-object/from16 v6, v106

    goto/16 :goto_85f

    :catch_be7
    move-exception v97

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v8, v68

    move-object/from16 v6, v106

    move-object/from16 v61, v62

    goto/16 :goto_85f

    :catch_bf6
    move-exception v97

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v8, v68

    goto/16 :goto_85f

    :catch_c01
    move-exception v97

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    goto/16 :goto_85f

    :catch_c0a
    move-exception v97

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v144, v145

    goto/16 :goto_85f

    :catch_c15
    move-exception v97

    move-object/from16 v76, v77

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v16, v63

    move-object/from16 v144, v145

    goto/16 :goto_85f

    :catch_c22
    move-exception v97

    move-object/from16 v76, v77

    move-object/from16 v134, v135

    move-object/from16 v20, v103

    move-object/from16 v144, v145

    goto/16 :goto_85f

    :catch_c2d
    move-exception v97

    move-object/from16 v76, v77

    move-object/from16 v134, v135

    move-object/from16 v69, v70

    move-object/from16 v144, v145

    goto/16 :goto_85f

    :catch_c38
    move-exception v97

    move-object/from16 v61, v62

    goto/16 :goto_849

    :catch_c3d
    move-exception v97

    move-object/from16 v104, v105

    goto/16 :goto_81e

    :catch_c42
    move-exception v97

    move-object/from16 v4, v121

    move-object/from16 v104, v105

    goto/16 :goto_81e

    :cond_c49
    move-object/from16 v25, v114

    goto/16 :goto_4dd

    :cond_c4d
    move-object/from16 v25, v114

    goto/16 :goto_748
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
