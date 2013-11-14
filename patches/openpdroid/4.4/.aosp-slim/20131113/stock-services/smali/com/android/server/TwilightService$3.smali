.class Lcom/android/server/TwilightService$3;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/TwilightService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TwilightService$3;->this$0:Lcom/android/server/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1    # Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/TwilightService$3;->this$0:Lcom/android/server/TwilightService;

    # getter for: Lcom/android/server/TwilightService;->mLocationHandler:Lcom/android/server/TwilightService$LocationHandler;
    invoke-static {v0}, Lcom/android/server/TwilightService;->access$800(Lcom/android/server/TwilightService;)Lcom/android/server/TwilightService$LocationHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/TwilightService$LocationHandler;->processNewLocation(Landroid/location/Location;)V

    return-void
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
