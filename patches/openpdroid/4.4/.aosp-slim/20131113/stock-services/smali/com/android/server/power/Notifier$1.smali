.class Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOn()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/Notifier;->mScreenOnBlockerAcquired:Z
    invoke-static {v0, v2}, Lcom/android/server/power/Notifier;->access$102(Lcom/android/server/power/Notifier;Z)Z

    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mScreenOnBlocker:Lcom/android/server/power/ScreenOnBlocker;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/power/ScreenOnBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/ScreenOnBlocker;->release()V

    :cond_26
    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v0
.end method
