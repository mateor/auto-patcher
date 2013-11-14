.class Lcom/android/server/power/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamDrawPending:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerState;->access$802(Lcom/android/server/power/DisplayPowerState;Z)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamPrepared:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerState;->access$900(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeam:Lcom/android/server/power/ElectronBeam;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerState;->access$1000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/ElectronBeam;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ElectronBeam;->draw(F)Z

    :cond_1d
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamReady:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerState;->access$1102(Lcom/android/server/power/DisplayPowerState;Z)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$4;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerState;->access$700(Lcom/android/server/power/DisplayPowerState;)V

    return-void
.end method
