.class Lcom/android/server/wm/WindowManagerService$6;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$watcherBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$6;->val$watcherBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$6;->val$watcherBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v4, v2, :cond_38

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IRotationWatcher;

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_36
    add-int/lit8 v0, v0, -0x1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3b
    monitor-exit v3

    return-void

    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_3d

    throw v2
.end method
