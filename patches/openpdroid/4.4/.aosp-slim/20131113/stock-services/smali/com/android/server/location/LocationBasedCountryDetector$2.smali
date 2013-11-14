.class Lcom/android/server/location/LocationBasedCountryDetector$2;
.super Ljava/util/TimerTask;
.source "LocationBasedCountryDetector.java"


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

    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBasedCountryDetector;->stop()V

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    invoke-virtual {v1}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    # invokes: Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;->access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    return-void
.end method
