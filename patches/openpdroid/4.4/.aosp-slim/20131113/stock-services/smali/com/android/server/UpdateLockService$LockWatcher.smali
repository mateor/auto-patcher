.class Lcom/android/server/UpdateLockService$LockWatcher;
.super Landroid/os/TokenWatcher;
.source "UpdateLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UpdateLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UpdateLockService;


# direct methods
.method constructor <init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p2    # Landroid/os/Handler;
    .param p3    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    invoke-direct {p0, p2, p3}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    return-void
.end method

.method public released()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    return-void
.end method
