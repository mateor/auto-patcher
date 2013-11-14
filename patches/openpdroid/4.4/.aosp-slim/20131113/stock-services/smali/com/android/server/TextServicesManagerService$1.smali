.class Lcom/android/server/TextServicesManagerService$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

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

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$1;->this$0:Lcom/android/server/TextServicesManagerService;

    # invokes: Lcom/android/server/TextServicesManagerService;->switchUserLocked(I)V
    invoke-static {v0, p1}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;I)V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_14

    if-eqz p2, :cond_13

    const/4 v0, 0x0

    :try_start_10
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_17

    :cond_13
    :goto_13
    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0

    :catch_17
    move-exception v0

    goto :goto_13
.end method
