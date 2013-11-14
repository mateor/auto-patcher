.class Lcom/android/server/power/DisplayPowerController$1;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/DisplayPowerController;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V
    .registers 3
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
