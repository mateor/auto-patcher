.class Lcom/android/server/InputMethodManagerService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 5
    .param p1    # I
    .param p2    # Landroid/os/IRemoteCallback;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/InputMethodManagerService;->access$1000(Lcom/android/server/InputMethodManagerService;I)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    if-eqz p2, :cond_11

    const/4 v0, 0x0

    :try_start_e
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_15

    :cond_11
    :goto_11
    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0

    :catch_15
    move-exception v0

    goto :goto_11
.end method
