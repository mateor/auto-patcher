.class public Lcom/android/server/location/ComprehensiveCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;
    .registers 2
    .param p0    # Lcom/android/server/location/ComprehensiveCountryDetector;
    .param p1    # Landroid/location/Country;

    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .registers 4
    .param p0    # Lcom/android/server/location/ComprehensiveCountryDetector;
    .param p1    # Z
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .registers 1
    .param p0    # Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method static synthetic access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .registers 3
    .param p0    # Lcom/android/server/location/ComprehensiveCountryDetector;

    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .registers 3
    .param p0    # Lcom/android/server/location/ComprehensiveCountryDetector;

    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/ComprehensiveCountryDetector;)Z
    .registers 2
    .param p0    # Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    return v0
.end method

.method private addToLogs(Landroid/location/Country;)V
    .registers 4
    .param p1    # Landroid/location/Country;

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    invoke-virtual {v0, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    monitor-exit v1

    goto :goto_2

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_29
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .registers 6
    .param p1    # Z
    .param p2    # Z

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_17

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    :goto_f
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v1

    :cond_17
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    goto :goto_f
.end method

.method private getCountry()Landroid/location/Country;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    :cond_17
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_a

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .registers 4
    .param p1    # Landroid/location/Country;
    .param p2    # Landroid/location/Country;

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    :cond_11
    return-void
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_5

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .registers 3
    .param p1    # Landroid/location/CountryListener;

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .registers 3

    new-instance v0, Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v1, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0

    :cond_b
    move v0, v1

    goto :goto_6
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected isAirplaneModeOff()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method protected isGeoCoderImplemented()Z
    .registers 2

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 7
    .param p1    # Landroid/location/Country;
    .param p2    # Landroid/location/Country;
    .param p3    # Z
    .param p4    # Z

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    :cond_6
    if-eqz p4, :cond_25

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v0

    if-le v0, v1, :cond_25

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    :cond_25
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v0

    if-lt v0, v1, :cond_31

    :cond_2d
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    :goto_30
    return-void

    :cond_31
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_30
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 12
    .param p1    # Landroid/location/Country;
    .param p2    # Landroid/location/Country;
    .param p3    # Z
    .param p4    # Z

    iget-object v6, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 7
    .param p1    # Landroid/location/CountryListener;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    iget-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iput v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    goto :goto_1f
.end method

.method public stop()V
    .registers 3

    const-string v0, "CountryDetector"

    const-string v1, "Stop the detector."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ComprehensiveCountryDetector{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_e1

    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v1, v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeRunning="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalCountServiceStateChanges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentCountServiceStateChanges="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "totalTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "countries="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Country;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ba

    :cond_e1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastRunTimeLength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v10, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_38

    :cond_104
    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
