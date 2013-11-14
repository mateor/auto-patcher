.class public Lcom/android/server/location/PassiveProvider;
.super Ljava/lang/Object;
.source "PassiveProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final TAG:Ljava/lang/String; = "PassiveProvider"


# instance fields
.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mReportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v8, 0x1

    const/4 v9, 0x2

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationManager;)V
    .registers 2
    .param p1    # Landroid/location/ILocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 1

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReportLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enable()V
    .registers 1

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "passive"

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    sget-object v0, Lcom/android/server/location/PassiveProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1    # Landroid/os/Bundle;

    iget-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getStatusUpdateTime()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    return v0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 4
    .param p1    # Lcom/android/internal/location/ProviderRequest;
    .param p2    # Landroid/os/WorkSource;

    iget-boolean v0, p1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    iput-boolean v0, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .param p1    # Landroid/location/Location;

    iget-boolean v1, p0, Lcom/android/server/location/PassiveProvider;->mReportLocation:Z

    if-eqz v1, :cond_a

    :try_start_4
    iget-object v1, p0, Lcom/android/server/location/PassiveProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string v1, "PassiveProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
