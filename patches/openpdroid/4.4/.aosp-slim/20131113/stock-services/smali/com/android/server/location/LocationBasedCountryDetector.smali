.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 2
    .param p0    # Lcom/android/server/location/LocationBasedCountryDetector;
    .param p1    # Landroid/location/Location;

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .registers 4
    .param p1    # Landroid/location/Location;

    monitor-enter p0

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1f

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_57

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v4, :cond_3e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    new-instance v2, Lcom/android/server/location/LocationBasedCountryDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3e
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    new-instance v6, Lcom/android/server/location/LocationBasedCountryDetector$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_53
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_55
    .catchall {:try_start_e .. :try_end_55} :catchall_b

    monitor-exit p0

    return-object v5

    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_b

    goto :goto_53
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 11
    .param p1    # Landroid/location/Location;

    const/4 v7, 0x0

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    :try_start_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_29

    move-result-object v7

    :cond_28
    :goto_28
    return-object v7

    :catch_29
    move-exception v8

    const-string v1, "LocationBasedCountryDetector"

    const-string v2, "Exception occurs when getting country from location"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .registers 10

    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_b

    :cond_2d
    move-object v0, v2

    goto :goto_b

    :cond_2f
    return-object v0
.end method

.method protected getQueryLocationTimeout()J
    .registers 3

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;

    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public declared-synchronized stop()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationListener;

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1e
    const/4 v2, 0x0

    :try_start_1f
    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    :cond_21
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_1b

    :cond_2d
    monitor-exit p0

    return-void
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .registers 3
    .param p1    # Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
