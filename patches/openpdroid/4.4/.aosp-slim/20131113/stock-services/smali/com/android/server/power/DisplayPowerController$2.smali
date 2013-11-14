.class Lcom/android/server/power/DisplayPowerController$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$2;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$2;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$100(Lcom/android/server/power/DisplayPowerController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1    # Landroid/animation/Animator;

    return-void
.end method
