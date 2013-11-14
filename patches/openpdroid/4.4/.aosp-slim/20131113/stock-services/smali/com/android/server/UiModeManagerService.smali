.class final Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# static fields
.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private final mDefaultUiModeType:I

.field private final mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private final mTwilightService:Lcom/android/server/TwilightService;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    .registers 9
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/TwilightService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mTwilightService:Lcom/android/server/TwilightService;

    const-string v0, "uimode"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x1a

    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_d6

    move v0, v1

    :goto_a1
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0018

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_d8

    :goto_b0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ui_night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightService:Lcom/android/server/TwilightService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    return-void

    :cond_d6
    move v0, v2

    goto :goto_a1

    :cond_d8
    move v1, v2

    goto :goto_b0
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0    # Lcom/android/server/UiModeManagerService;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/UiModeManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/UiModeManagerService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)Z
    .registers 2
    .param p0    # Lcom/android/server/UiModeManagerService;

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;II)V
    .registers 3
    .param p0    # Lcom/android/server/UiModeManagerService;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateTwilight()V

    return-void
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 12

    const/4 v4, 0x0

    const v10, 0x10404cf

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_15
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_7e

    const/high16 v0, 0x80000

    :goto_21
    invoke-virtual {v3, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_24
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_34
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_7d

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_80

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    const v0, 0x10805b7

    iput v0, v6, Landroid/app/Notification;->icon:I

    const/4 v0, 0x4

    iput v0, v6, Landroid/app/Notification;->defaults:I

    const/4 v0, 0x2

    iput v0, v6, Landroid/app/Notification;->flags:I

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10404d0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v10, v6, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    move v0, v1

    goto :goto_21

    :cond_80
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v10, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_7d
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .registers 2
    .param p0    # I

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isDoingNightModeLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 17
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    const/4 v12, 0x0

    if-eqz p1, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_27} :catch_5e

    move-result v14

    if-ltz v14, :cond_38

    const/4 v12, 0x1

    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    if-eqz p1, :cond_37

    if-nez v12, :cond_37

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    :cond_37
    return-void

    :cond_38
    const/4 v0, -0x1

    if-eq v14, v0, :cond_2b

    :try_start_3b
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start dock app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startActivityWithConfig result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5d} :catch_5e

    goto :goto_2b

    :catch_5e
    move-exception v13

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start dock app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method private sendConfigurationLocked()V
    .registers 4

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private setCarModeLocked(Z)V
    .registers 3
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    :cond_6
    return-void
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    const-string v0, "android.intent.category.CAR_DOCK"

    :cond_f
    :goto_f
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    return-void

    :cond_13
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_f

    :cond_22
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_f

    const-string v0, "android.intent.category.HOME"

    goto :goto_f
.end method

.method private updateComputedNightModeLocked()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightService:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    :cond_e
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 3

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_27

    const/4 v0, 0x4

    :goto_5
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_2a

    const/4 v0, 0x3

    :cond_a
    :goto_a
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_3d

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_37

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_34

    const/16 v1, 0x20

    :goto_1b
    or-int/2addr v0, v1

    :goto_1c
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    :cond_26
    return-void

    :cond_27
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    goto :goto_5

    :cond_2a
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x2

    goto :goto_a

    :cond_34
    const/16 v1, 0x10

    goto :goto_1b

    :cond_37
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_1c

    :cond_3d
    and-int/lit8 v1, v0, -0x31

    or-int/lit8 v0, v1, 0x10

    goto :goto_1c
.end method

.method private updateDockState(I)V
    .registers 7
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_1c

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    :goto_10
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_1c
    monitor-exit v2

    return-void

    :cond_1e
    move v0, v1

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private updateLocked(II)V
    .registers 16
    .param p1    # I
    .param p2    # I

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_76

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    :cond_c
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_81

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v12, :cond_26

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_26
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    :cond_2b
    :goto_2b
    if-eqz v9, :cond_ab

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    :goto_50
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-nez v0, :cond_65

    :cond_5c
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d0

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v0, :cond_d0

    :cond_65
    const/4 v11, 0x1

    :goto_66
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq v11, v0, :cond_75

    if-eqz v11, :cond_d2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_75
    :goto_75
    return-void

    :cond_76
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_c

    :cond_81
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz v12, :cond_9f

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_9f
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_2b

    :cond_a6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move-object v9, v12

    goto :goto_2b

    :cond_ab
    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_ba

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b6

    const-string v10, "android.intent.category.CAR_DOCK"

    :cond_b6
    :goto_b6
    invoke-direct {p0, v10}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto :goto_50

    :cond_ba
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_c9

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b6

    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_b6

    :cond_c9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b6

    const-string v10, "android.intent.category.HOME"

    goto :goto_b6

    :cond_d0
    const/4 v11, 0x0

    goto :goto_66

    :cond_d2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_75
.end method

.method private updateTwilight()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_15
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 6
    .param p1    # I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b

    const/4 v2, 0x0

    :try_start_8
    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_36
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDockState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastBroadcastState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mComputedNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mTwilightService.getCurrentState()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightService:Lcom/android/server/TwilightService;

    invoke-virtual {v0}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_32

    :catchall_ad
    move-exception v0

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_36 .. :try_end_af} :catchall_ad

    throw v0
.end method

.method public enableCarMode(I)V
    .registers 6
    .param p1    # I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b

    const/4 v2, 0x1

    :try_start_8
    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    :try_start_7
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v2, v2, 0xf

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_10
    move-exception v2

    :try_start_11
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v2
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightMode()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setNightMode(I)V
    .registers 7
    .param p1    # I

    packed-switch p1, :pswitch_data_4c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_20
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_47

    :try_start_23
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightModeLocked()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_3f

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_44

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method systemReady()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_6
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    monitor-exit v2

    return-void

    :cond_19
    move v0, v1

    goto :goto_d

    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0
.end method
