.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$NotificationLedValues;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;,
        Lcom/android/server/NotificationManagerService$Archive;,
        Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final ENABLED_NOTIFICATION_LISTENERS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field private static final ENABLE_BLOCKED_TOASTS:Z = true

.field private static final JUNK_SCORE:I = -0x3e8

.field private static final LONG_DELAY:I = 0xdac

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field private static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field private static final SCORE_ONGOING_HIGHER:Z = false

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field mArchive:Lcom/android/server/NotificationManagerService$Archive;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisabledNotifications:I

.field private mEnabledListenerPackageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledListenersForCurrentUser:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseCustomLedValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NotificationManagerService$NotificationLedValues;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field private mPackageNameMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mScorers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/notification/NotificationScorer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWasScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .registers 24
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/StatusBarManagerService;
    .param p3    # Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    new-instance v17, Landroid/os/Binder;

    invoke-direct/range {v17 .. v17}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NotificationManagerService;->mWasScreenOn:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/NotificationManagerService;->mInCall:Z

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;

    new-instance v17, Lcom/android/server/NotificationManagerService$Archive;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/NotificationManagerService$Archive;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    new-instance v17, Lcom/android/server/NotificationManagerService$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService$4;-><init>(Lcom/android/server/NotificationManagerService;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    new-instance v17, Lcom/android/server/NotificationManagerService$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService$5;-><init>(Lcom/android/server/NotificationManagerService;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v17, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    const-string v17, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    new-instance v17, Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const-string v17, "appops"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->importOldBlockDb()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    const/16 v17, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/16 v17, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v17, 0x106006f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    const v17, 0x10e0021

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    const v17, 0x10e0022

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    const v17, 0x1070028

    const/16 v18, 0x11

    sget-object v19, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J

    const v17, 0x1070029

    const/16 v18, 0x11

    sget-object v19, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    const v17, 0x1070033

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v6, 0x0

    :goto_1c7
    if-ge v6, v7, :cond_1e7

    aget-object v9, v3, v6

    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v8, v18

    const/16 v19, 0x1

    aget-object v19, v8, v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c7

    :cond_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "device_provisioned"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_203

    const/high16 v17, 0x40000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    :cond_203
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v17, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v17, "package"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct/range {v16 .. v17}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v17, Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    const v17, 0x107002b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    array-length v7, v3

    const/4 v6, 0x0

    :goto_2cf
    if-ge v6, v7, :cond_374

    aget-object v15, v3, v6

    :try_start_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/notification/NotificationScorer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lcom/android/internal/notification/NotificationScorer;->initialize(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2ff
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d3 .. :try_end_2ff} :catch_302
    .catch Ljava/lang/InstantiationException; {:try_start_2d3 .. :try_end_2ff} :catch_328
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d3 .. :try_end_2ff} :catch_34e

    :goto_2ff
    add-int/lit8 v6, v6, 0x1

    goto :goto_2cf

    :catch_302
    move-exception v4

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find scorer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ff

    :catch_328
    move-exception v4

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t instantiate scorer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ff

    :catch_34e
    move-exception v4

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem accessing scorer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2ff

    :cond_374
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/NotificationManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mWasScreenOn:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/NotificationManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/NotificationManagerService;)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/NotificationManagerService;I)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # I

    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/NotificationManagerService;)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;I)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # I

    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService;)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/NotificationManagerService;I)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # I

    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->parseNotificationPulseCustomValuesString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$ToastRecord;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$2900(III)I
    .registers 4
    .param p0    # I
    .param p1    # I
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->clamp(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Landroid/app/Notification;
    .param p2    # Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/NotificationManagerService;)Z
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/NotificationManagerService;)[J
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/NotificationManagerService;)[J
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .registers 3
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/NotificationManagerService;I)I
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # I

    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .registers 8
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .param p7    # I

    invoke-direct/range {p0 .. p7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2
    .param p0    # Lcom/android/server/NotificationManagerService;
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .registers 18
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .param p7    # I

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/NotificationManagerService$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move/from16 v5, p7

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/NotificationManagerService$7;-><init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;ILjava/lang/String;IIIZ)V

    invoke-virtual {v9, v0}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .registers 11
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p2    # Z

    const/4 v7, 0x0

    if-eqz p2, :cond_14

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_14

    :try_start_b
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_14
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_b .. :try_end_14} :catch_6c

    :cond_14
    :goto_14
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_2f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_20
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_8c

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    :cond_2f
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_47

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_39
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_9b
    .catchall {:try_start_39 .. :try_end_44} :catchall_91

    :cond_44
    :goto_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_47
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_59

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_51
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_96

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_59
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_64

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_64
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    return-void

    :catch_6c
    move-exception v0

    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catchall_8c
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_91
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_96
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_9b
    move-exception v4

    goto :goto_44
.end method

.method private cancelToastLocked(I)V
    .registers 7
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    :try_start_8
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_23

    :goto_d
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    :cond_22
    return-void

    :catch_23
    move-exception v0

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    .registers 9
    .param p1    # Landroid/service/notification/INotificationListener;

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_21

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v4, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v4}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed call from unknown listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final clamp(III)I
    .registers 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private getLedValuesForNotification(Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationLedValues;
    .registers 5
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v1, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->mapPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationLedValues;

    return-object v1
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0    # Landroid/content/res/Resources;
    .param p1    # I
    .param p2    # I
    .param p3    # [J

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p3

    :cond_7
    array-length v4, v0

    if-le v4, p2, :cond_18

    move v2, p2

    :goto_b
    new-array v3, v2, [J

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_1a

    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    array-length v2, v0

    goto :goto_b

    :cond_1a
    move-object p3, v3

    goto :goto_6
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1    # Lcom/android/server/NotificationManagerService$ToastRecord;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    :cond_10
    monitor-exit v2

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_11

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :try_start_c
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_f} :catch_16

    move-result-object v3

    :goto_10
    return-object v3

    :catch_11
    move-exception v1

    move-object v0, p0

    goto :goto_8

    :cond_14
    move-object v0, p0

    goto :goto_8

    :catch_16
    move-exception v1

    const-string v3, "<name unknown>"

    goto :goto_10
.end method

.method private importOldBlockDb()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->loadBlockDb()V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_1d
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/NotificationManagerService;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_f

    :catch_2a
    move-exception v4

    goto :goto_f

    :cond_2c
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    :cond_3a
    return-void
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_44

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v3, p4}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, p3, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    if-nez p2, :cond_37

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    :cond_2a
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_36
    return v0

    :cond_37
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_1d

    :cond_44
    const/4 v0, -0x1

    goto :goto_36
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/app/ITransientNotification;

    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_27

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_24

    :goto_23
    return v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    const/4 v1, -0x1

    goto :goto_23
.end method

.method private keepProcessAliveLocked(I)V
    .registers 10
    .param p1    # I

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    iget v5, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_16

    add-int/lit8 v4, v4, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    :try_start_19
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_24

    const/4 v5, 0x1

    :goto_20
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_26

    :goto_23
    return-void

    :cond_24
    const/4 v5, 0x0

    goto :goto_20

    :catch_26
    move-exception v5

    goto :goto_23
.end method

.method private loadBlockDb()V
    .registers 13

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_4
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_7e

    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_98

    const/4 v2, 0x0

    :try_start_23
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_32
    :goto_32
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_b8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_32

    const-string v7, "notification-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    const/4 v7, 0x0

    const-string v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_32

    :cond_53
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    :cond_5b
    :goto_5b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_32

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_79} :catch_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_79} :catch_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_79} :catch_a7
    .catchall {:try_start_23 .. :try_end_79} :catchall_b3

    goto :goto_5b

    :catch_7a
    move-exception v7

    :try_start_7b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_7e
    :goto_7e
    monitor-exit v8
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_98

    return-void

    :cond_80
    :try_start_80
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_85} :catch_7a
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_85} :catch_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_85} :catch_a7
    .catchall {:try_start_80 .. :try_end_85} :catchall_b3

    move-result v7

    if-eqz v7, :cond_5b

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5b

    goto :goto_32

    :catch_8c
    move-exception v1

    :try_start_8d
    const-string v7, "NotificationService"

    const-string v9, "Unable to read blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_b3

    :try_start_94
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7e

    :catchall_98
    move-exception v7

    monitor-exit v8
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_98

    throw v7

    :catch_9b
    move-exception v1

    :try_start_9c
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_b3

    :try_start_a3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_98

    goto :goto_7e

    :catch_a7
    move-exception v1

    :try_start_a8
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b3

    :try_start_af
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7e

    :catchall_b3
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :cond_b8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_98

    goto :goto_7e
.end method

.method private mapPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mPackageNameMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    goto :goto_8
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z
    .registers 5
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;
    .param p2    # I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 7
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_23
    return-void
.end method

.method private notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 7
    .param p1    # Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/NotificationManagerService$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/NotificationManagerService$3;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_23
    return-void
.end method

.method private parseNotificationPulseCustomValuesString(Ljava/lang/String;)V
    .registers 14
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    return-void

    :cond_7
    const-string v9, "\\|"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v2

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_27

    const-string v9, "NotificationService"

    const-string v10, "Error parsing custom led values for unknown package"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_27
    const/4 v9, 0x0

    aget-object v5, v6, v9

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5d

    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing custom led values \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5d
    new-instance v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;

    invoke-direct {v3, p0}, Lcom/android/server/NotificationManagerService$NotificationLedValues;-><init>(Lcom/android/server/NotificationManagerService;)V

    const/4 v9, 0x0

    :try_start_63
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->color:I

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->onMS:I

    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->offMS:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7d} :catch_83

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :catch_83
    move-exception v1

    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing custom led values \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24
.end method

.method private registerListenerService(Landroid/content/ComponentName;I)V
    .registers 15
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    monitor-exit v7

    :goto_2a
    return-void

    :cond_2b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_38
    if-ltz v2, :cond_61

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v6, p2, :cond_5e

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :cond_61
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.service.notification.NotificationListenerService"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.client_label"

    const v8, 0x10404c1

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.client_intent"

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_87
    .catchall {:try_start_6 .. :try_end_87} :catchall_ba

    :try_start_87
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v8, p0, v5, p2}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)V

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v8, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_d9

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_b7} :catch_bd
    .catchall {:try_start_87 .. :try_end_b7} :catchall_ba

    :try_start_b7
    monitor-exit v7

    goto/16 :goto_2a

    :catchall_ba
    move-exception v6

    monitor-exit v7
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_ba

    throw v6

    :catch_bd
    move-exception v1

    :try_start_be
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v7

    goto/16 :goto_2a

    :cond_d9
    monitor-exit v7
    :try_end_da
    .catchall {:try_start_be .. :try_end_da} :catchall_ba

    goto/16 :goto_2a
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 7
    .param p1    # Lcom/android/server/NotificationManagerService$ToastRecord;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const-wide/16 v0, 0xdac

    :goto_13
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_19
    const-wide/16 v0, 0x7d0

    goto :goto_13
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1    # Landroid/app/Notification;
    .param p2    # Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    :goto_c
    return-void

    :cond_d
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_c
.end method

.method private showNextToastLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    :goto_9
    if-eqz v2, :cond_13

    :try_start_b
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception v0

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_48

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_48
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    goto :goto_9

    :cond_5e
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private unregisterListenerService(Landroid/content/ComponentName;I)V
    .registers 11
    .param p1    # Landroid/content/ComponentName;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_6
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_e
    if-ltz v2, :cond_5e

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v4, p2, :cond_34

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_5b

    if-eqz v4, :cond_34

    :try_start_2d
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_34} :catch_37
    .catchall {:try_start_2d .. :try_end_34} :catchall_5b

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :catch_37
    move-exception v1

    :try_start_38
    const-string v4, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be unbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_5b
    move-exception v4

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_5b

    throw v4

    :cond_5e
    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    return-void
.end method

.method private updateLightsLocked()V
    .registers 9

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v6, :cond_18

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_18
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v6, :cond_24

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-nez v6, :cond_24

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-eqz v6, :cond_2a

    :cond_24
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->turnOff()V

    :goto_29
    return-void

    :cond_2a
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v6, v6, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v6}, Lcom/android/server/NotificationManagerService;->getLedValuesForNotification(Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationLedValues;

    move-result-object v3

    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    iget v2, v4, Landroid/app/Notification;->ledOnMS:I

    iget v1, v4, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_62

    iget v6, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->color:I

    if-eqz v6, :cond_59

    iget v0, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->color:I

    :goto_46
    iget v6, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->onMS:I

    if-ltz v6, :cond_5c

    iget v2, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->onMS:I

    :goto_4c
    iget v6, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->offMS:I

    if-ltz v6, :cond_5f

    iget v1, v3, Lcom/android/server/NotificationManagerService$NotificationLedValues;->offMS:I

    :cond_52
    :goto_52
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7, v2, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_29

    :cond_59
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    goto :goto_46

    :cond_5c
    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    goto :goto_4c

    :cond_5f
    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    goto :goto_52

    :cond_62
    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_52

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    goto :goto_52
.end method

.method private updateNotificationPulse()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method cancelAll(I)V
    .registers 7
    .param p1    # I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_33

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v2, p1}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_1b

    :catchall_30
    move-exception v3

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v3

    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_30

    return-void
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .registers 14
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "cancelAllNotifications"

    move v2, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/16 v8, 0x40

    move-object v5, p0

    move-object v6, p1

    move v7, v4

    move v9, v3

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    return-void
.end method

.method public cancelAllNotificationsFromListener(Landroid/service/notification/INotificationListener;)V
    .registers 6
    .param p1    # Landroid/service/notification/INotificationListener;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {p0, v3}, Lcom/android/server/NotificationManagerService;->cancelAll(I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z
    .registers 15
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # I

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v5, 0xac0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_23
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    :goto_2c
    if-ltz v2, :cond_76

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v3, p5}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v6

    if-nez v6, :cond_3f

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_48

    if-eqz p1, :cond_3c

    :cond_48
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_3c

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/2addr v6, p3

    if-nez v6, :cond_3c

    if-eqz p1, :cond_64

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    :cond_64
    const/4 v1, 0x1

    if-nez p4, :cond_69

    monitor-exit v5

    :goto_68
    return v4

    :cond_69
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_3c

    :catchall_73
    move-exception v4

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_23 .. :try_end_75} :catchall_73

    throw v4

    :cond_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    :cond_7b
    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_73

    move v4, v1

    goto :goto_68
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1    # Landroid/service/notification/INotificationListener;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x1

    :try_start_c
    iget v7, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const-string v5, "cancelNotificationWithTag"

    move v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_28

    move v5, v4

    :goto_1e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void

    :cond_28
    const/16 v5, 0x40

    goto :goto_1e
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/app/ITransientNotification;

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_26

    if-nez p2, :cond_49

    :cond_26
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void

    :cond_49
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5e

    move-result-wide v0

    :try_start_50
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    if-ltz v2, :cond_61

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_84

    :goto_59
    :try_start_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_48

    :catchall_5e
    move-exception v3

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_5e

    throw v3

    :cond_61
    :try_start_61
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_84

    goto :goto_59

    :catchall_84
    move-exception v3

    :try_start_85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_5e
.end method

.method checkCallerIsSystem()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method disableNonexistentListeners()V
    .registers 18

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_notification_listeners"

    invoke-static {v14, v15, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.service.notification.NotificationListenerService"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x84

    invoke-virtual {v11, v14, v15, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    :goto_37
    if-ge v7, v1, :cond_93

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v14, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v15, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_84

    const-string v14, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping notification listener service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": it does not require the permission "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_84
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_93
    const-string v6, ""

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c5

    const-string v14, ":"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    array-length v14, v3

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_a8
    array-length v14, v3

    if-ge v7, v14, :cond_bf

    aget-object v14, v3, v7

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bc

    aget-object v14, v3, v7

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    :cond_bf
    const-string v14, ":"

    invoke-static {v14, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    :cond_c5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_notification_listeners"

    invoke-static {v14, v15, v6, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_d8
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_33

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    const-string v6, "Current Notification Manager state:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Listeners ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") enabled for current user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    :cond_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Live listeners ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    if-eqz v6, :cond_f2

    const-string v6, " SYSTEM"

    :goto_e6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    :cond_f2
    const-string v6, ""

    goto :goto_e6

    :cond_f5
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_f8
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11d

    const-string v6, "  Toast Queue:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_106
    if-ge v2, v0, :cond_118

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v8, "    "

    invoke-virtual {v6, p2, v8}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    :cond_118
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11d
    monitor-exit v7
    :try_end_11e
    .catchall {:try_start_f8 .. :try_end_11e} :catchall_143

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_121
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14b

    const-string v6, "  Notification List:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_12f
    if-ge v2, v0, :cond_146

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v8, "    "

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2, v8, v9}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_140
    .catchall {:try_start_121 .. :try_end_140} :catchall_239

    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    :catchall_143
    move-exception v6

    :try_start_144
    monitor-exit v7
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v6

    :cond_146
    :try_start_146
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17f

    const-string v6, "  Lights List:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_159
    if-ge v2, v0, :cond_17a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_159

    :cond_17a
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSoundNotification="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mVibrateNotification="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mDisabledNotifications=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSystemReady="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mArchive="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v8}, Lcom/android/server/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    :cond_206
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_236

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x5

    if-lt v2, v6, :cond_206

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_236

    const-string v6, "    ..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_236
    monitor-exit v7

    goto/16 :goto_32

    :catchall_239
    move-exception v6

    monitor-exit v7
    :try_end_23b
    .catchall {:try_start_146 .. :try_end_23b} :catchall_239

    throw v6
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .registers 29
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p7    # Landroid/app/Notification;
    .param p8    # [I
    .param p9    # I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/NotificationManagerService;->isUidSystem(I)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "android"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_17
    const/16 v16, 0x1

    :goto_19
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "enqueueNotification"

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p9

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    if-nez v16, :cond_98

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v14, 0x0

    :try_start_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_3f
    if-ge v15, v13, :cond_97

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    if-ne v2, v12, :cond_94

    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x32

    if-lt v14, v2, :cond_94

    const-string v2, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package has already posted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifications.  Not showing more.  package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_90
    return-void

    :cond_91
    const/16 v16, 0x0

    goto :goto_19

    :cond_94
    add-int/lit8 v15, v15, 0x1

    goto :goto_3f

    :cond_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_36 .. :try_end_98} :catchall_105

    :cond_98
    const-string v2, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v2, "DownloadManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ce

    :cond_ab
    const/16 v2, 0xabe

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    const/4 v4, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_ce
    if-eqz p1, :cond_d2

    if-nez p7, :cond_108

    :cond_d2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null not allowed: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_105
    move-exception v2

    :try_start_106
    monitor-exit v3
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    throw v2

    :cond_108
    move-object/from16 v0, p7

    iget v2, v0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_147

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_147

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentView required: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-object/from16 v18, v0

    new-instance v2, Lcom/android/server/NotificationManagerService$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, v16

    move/from16 v8, p6

    move-object/from16 v9, p5

    move/from16 v10, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/NotificationManagerService$6;-><init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    aput p6, p8, v2

    goto/16 :goto_90
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .registers 18
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Landroid/app/Notification;
    .param p6    # [I
    .param p7    # I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .registers 21
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/app/ITransientNotification;
    .param p3    # I

    if-eqz p1, :cond_4

    if-nez p2, :cond_2b

    :cond_4
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not doing toast. pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " callback="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v13

    if-nez v13, :cond_3b

    const-string v13, "android"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6d

    :cond_3b
    const/4 v10, 0x1

    :goto_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_6f

    if-nez v10, :cond_6f

    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suppressing toast from package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " by user request."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_6d
    const/4 v10, 0x0

    goto :goto_3c

    :cond_6f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v14

    :try_start_74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_9b

    move-result-wide v4

    :try_start_7c
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    if-ltz v9, :cond_9e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    :goto_91
    if-nez v9, :cond_96

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_116

    :cond_96
    :try_start_96
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14

    goto :goto_2a

    :catchall_9b
    move-exception v13

    monitor-exit v14
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_9b

    throw v13

    :cond_9e
    if-nez v10, :cond_f3

    const/4 v7, 0x0

    :try_start_a1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_aa
    if-ge v8, v3, :cond_f3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    iget-object v13, v11, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    add-int/lit8 v7, v7, 0x1

    const/16 v13, 0x32

    if-lt v7, v13, :cond_f0

    const-string v13, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package has already posted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " toasts. Not showing more. Package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_a1 .. :try_end_ea} :catchall_116

    :try_start_ea
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_9b

    goto/16 :goto_2a

    :cond_f0
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    :cond_f3
    :try_start_f3
    new-instance v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_114
    .catchall {:try_start_f3 .. :try_end_114} :catchall_116

    goto/16 :goto_91

    :catchall_116
    move-exception v13

    :try_start_117
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_9b
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 9
    .param p1    # Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v6, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x19

    invoke-virtual {v4, v5, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3c

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_1b
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_3b

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3b
    monitor-exit v5

    :cond_3c
    return-object v2

    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_3d

    throw v4
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;)[Landroid/service/notification/StatusBarNotification;
    .registers 10
    .param p1    # Landroid/service/notification/INotificationListener;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v2

    const/4 v6, 0x0

    new-array v4, v6, [Landroid/service/notification/StatusBarNotification;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_f
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_2e

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v5, v6, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_36

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/StatusBarNotification;

    return-object v6

    :catchall_36
    move-exception v6

    :try_start_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v6
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v4, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    monitor-enter v3

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v2, p2}, Lcom/android/server/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    monitor-exit v3

    :cond_22
    return-object v0

    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v2
.end method

.method isCallerSystem()Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method isUidSystem(I)Z
    .registers 4
    .param p1    # I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_e

    if-nez p1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method rebindListenerServices()V
    .registers 21

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_notification_listeners"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-object/from16 v16, v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    if-eqz v7, :cond_86

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_5d
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7e

    aget-object v17, v5, v8

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    :cond_7e
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    :cond_86
    monitor-exit v18
    :try_end_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_c7

    move-object/from16 v3, v16

    array-length v11, v3

    const/4 v9, 0x0

    :goto_8b
    if-ge v9, v11, :cond_ca

    aget-object v10, v3, v9

    iget-object v4, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    iget v14, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "disabling notification listener for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/server/NotificationManagerService;->unregisterListenerService(Landroid/content/ComponentName;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :catchall_c7
    move-exception v17

    :try_start_c8
    monitor-exit v18
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v17

    :cond_ca
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_cf
    if-ge v8, v2, :cond_105

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "enabling notification listener for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/NotificationManagerService;->registerListenerService(Landroid/content/ComponentName;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    :cond_105
    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1    # Landroid/service/notification/INotificationListener;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # I

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_6
    new-instance v0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;-><init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;IZ)V

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_22
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1f

    :goto_1d
    :try_start_1d
    monitor-exit v6

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v1

    :catch_22
    move-exception v1

    goto :goto_1d
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3c

    const-string v0, "en"

    :goto_10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "abling notifications for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xb

    if-eqz p3, :cond_3f

    move v0, v2

    :goto_2c
    invoke-virtual {v1, v3, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    if-nez p3, :cond_3b

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    :cond_3b
    return-void

    :cond_3c
    const-string v0, "dis"

    goto :goto_10

    :cond_3f
    move v0, v4

    goto :goto_2c
.end method

.method systemReady()V
    .registers 2

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    return-void
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 9
    .param p1    # Landroid/service/notification/INotificationListener;
    .param p2    # I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_38

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v3}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_35

    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v3, p2, :cond_35

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_38
    monitor-exit v4

    return-void

    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v3
.end method
