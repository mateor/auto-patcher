.class final Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V
    .registers 3
    .param p1    # Lcom/android/server/location/FlpHardwareProvider;
    .param p2    # Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1    # Landroid/location/Location;

    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1800(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V

    goto :goto_12
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/os/Bundle;

    return-void
.end method
