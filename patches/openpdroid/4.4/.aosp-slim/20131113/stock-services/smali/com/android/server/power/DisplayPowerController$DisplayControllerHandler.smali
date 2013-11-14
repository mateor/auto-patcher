.class final Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$500(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$600(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$700(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessSettingsChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$802(Lcom/android/server/power/DisplayPowerController;Z)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updateAutomaticBrightnessSettings()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$900(Lcom/android/server/power/DisplayPowerController;)V

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$500(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_5

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
