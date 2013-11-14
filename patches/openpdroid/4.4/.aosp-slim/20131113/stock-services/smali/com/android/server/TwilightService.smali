.class public final Lcom/android/server/TwilightService;
.super Ljava/lang/Object;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TwilightService$LocationHandler;,
        Lcom/android/server/TwilightService$TwilightListenerRecord;,
        Lcom/android/server/TwilightService$TwilightListener;,
        Lcom/android/server/TwilightService$TwilightState;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_TWILIGHT_STATE:Ljava/lang/String; = "com.android.server.action.UPDATE_TWILIGHT_STATE"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TwilightService$TwilightListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mLock:Ljava/lang/Object;

.field private mSystemReady:Z

.field private mTwilightState:Lcom/android/server/TwilightService$TwilightState;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TwilightService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TwilightService;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TwilightService$1;-><init>(Lcom/android/server/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TwilightService$2;-><init>(Lcom/android/server/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/server/TwilightService$3;

    invoke-direct {v0, p0}, Lcom/android/server/TwilightService$3;-><init>(Lcom/android/server/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/android/server/TwilightService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v0, Lcom/android/server/TwilightService$LocationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TwilightService$LocationHandler;-><init>(Lcom/android/server/TwilightService;Lcom/android/server/TwilightService$1;)V

    iput-object v0, p0, Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;

    return-void
.end method

.method static synthetic access$100(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 3
    .param p0    # Landroid/location/Location;
    .param p1    # Landroid/location/Location;

    invoke-static {p0, p1}, Lcom/android/server/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/TwilightService;)Landroid/location/LocationListener;
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TwilightService;)Landroid/location/LocationManager;
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/TwilightService;)Landroid/location/LocationListener;
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/TwilightService;Lcom/android/server/TwilightService$TwilightState;)V
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;
    .param p1    # Lcom/android/server/TwilightService$TwilightState;

    invoke-direct {p0, p1}, Lcom/android/server/TwilightService;->setTwilightState(Lcom/android/server/TwilightService$TwilightState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/TwilightService;)Landroid/content/Context;
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/TwilightService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TwilightService;)Lcom/android/server/TwilightService$LocationHandler;
    .registers 2
    .param p0    # Lcom/android/server/TwilightService;

    iget-object v0, p0, Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;

    return-object v0
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 10
    .param p0    # Landroid/location/Location;
    .param p1    # Landroid/location/Location;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v3

    :cond_5
    if-nez p0, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    add-float v1, v4, v5

    cmpl-float v4, v0, v1

    if-ltz v4, :cond_29

    :goto_27
    move v3, v2

    goto :goto_4

    :cond_29
    move v2, v3

    goto :goto_27
.end method

.method private setTwilightState(Lcom/android/server/TwilightService$TwilightState;)V
    .registers 6
    .param p1    # Lcom/android/server/TwilightService$TwilightState;

    iget-object v3, p0, Lcom/android/server/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/TwilightService;->mTwilightState:Lcom/android/server/TwilightService$TwilightState;

    invoke-static {v2, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iput-object p1, p0, Lcom/android/server/TwilightService;->mTwilightState:Lcom/android/server/TwilightService$TwilightState;

    iget-object v2, p0, Lcom/android/server/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lcom/android/server/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TwilightService$TwilightListenerRecord;

    invoke-virtual {v2}, Lcom/android/server/TwilightService$TwilightListenerRecord;->post()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    monitor-exit v3

    return-void

    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v2
.end method


# virtual methods
.method public getCurrentState()Lcom/android/server/TwilightService$TwilightState;
    .registers 3

    iget-object v1, p0, Lcom/android/server/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/TwilightService;->mTwilightState:Lcom/android/server/TwilightService$TwilightState;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V
    .registers 6
    .param p1    # Lcom/android/server/TwilightService$TwilightListener;
    .param p2    # Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/TwilightService;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/TwilightService$TwilightListenerRecord;

    invoke-direct {v2, p1, p2}, Lcom/android/server/TwilightService$TwilightListenerRecord;-><init>(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/server/TwilightService;->mSystemReady:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;

    invoke-virtual {v0}, Lcom/android/server/TwilightService$LocationHandler;->enableLocationUpdates()V

    :cond_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method systemReady()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/TwilightService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/TwilightService;->mSystemReady:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TwilightService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TwilightService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TwilightService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;

    invoke-virtual {v1}, Lcom/android/server/TwilightService$LocationHandler;->enableLocationUpdates()V

    :cond_30
    monitor-exit v2

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v1
.end method
