.class Lcom/android/server/power/DisplayPowerController$8;
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

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

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

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_21

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController;->access$1100(Lcom/android/server/power/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_21

    const/4 v1, 0x1

    :cond_21
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;JZ)V

    :cond_26
    return-void
.end method
