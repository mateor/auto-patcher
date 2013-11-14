.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .registers 17
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    new-instance v0, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationProviderProxy-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Z
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;

    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .registers 2
    .param p0    # Lcom/android/server/location/LocationProviderProxy;
    .param p1    # Lcom/android/internal/location/ProviderProperties;

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method private bind()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .registers 15
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/LocationProviderProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disable()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_d
    return-void

    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2

    :cond_11
    :try_start_11
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1c

    goto :goto_d

    :catch_15
    move-exception v0

    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_1c
    move-exception v0

    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    const-string v2, "REMOTE SERVICE"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, " name="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, " pkg="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, " version="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_52

    const-string v2, "service down (null)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_51
    return-void

    :cond_52
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    :try_start_55
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5c} :catch_69

    goto :goto_51

    :catch_5d
    move-exception v0

    const-string v2, "service down (RemoteException)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    :catch_69
    move-exception v0

    const-string v2, "service down (Exception)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51
.end method

.method public enable()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_11

    :goto_d
    return-void

    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2

    :cond_11
    :try_start_11
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_1c

    goto :goto_d

    :catch_15
    move-exception v0

    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_1c
    move-exception v0

    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 3

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 8
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    :try_start_8
    invoke-interface {v1, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_14

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string v3, "LocationProviderProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_14
    move-exception v0

    const-string v3, "LocationProviderProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getStatusUpdateTime()J
    .registers 8

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_8
    return-wide v2

    :cond_9
    :try_start_9
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_15

    move-result-wide v2

    goto :goto_8

    :catch_e
    move-exception v0

    const-string v4, "LocationProviderProxy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_15
    move-exception v0

    const-string v4, "LocationProviderProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v6}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    :try_start_8
    invoke-interface {v1, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_14

    move-result v2

    goto :goto_7

    :catch_d
    move-exception v0

    const-string v3, "LocationProviderProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_14
    move-exception v0

    const-string v3, "LocationProviderProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 8
    .param p1    # Lcom/android/internal/location/ProviderRequest;
    .param p2    # Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    if-nez v1, :cond_12

    :goto_e
    return-void

    :catchall_f
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v2

    :cond_12
    :try_start_12
    invoke-interface {v1, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_1d

    goto :goto_e

    :catch_16
    move-exception v0

    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catch_1d
    move-exception v0

    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
