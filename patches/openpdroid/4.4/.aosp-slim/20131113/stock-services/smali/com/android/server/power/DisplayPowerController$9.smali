.class Lcom/android/server/power/DisplayPowerController$9;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$9;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$9;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$9;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;JF)V

    :cond_16
    return-void
.end method
