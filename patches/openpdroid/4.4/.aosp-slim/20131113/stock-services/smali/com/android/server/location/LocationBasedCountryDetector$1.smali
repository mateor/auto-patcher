.class Lcom/android/server/location/LocationBasedCountryDetector$1;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1    # Landroid/location/Location;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBasedCountryDetector;->stop()V

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    # invokes: Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    :cond_c
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
