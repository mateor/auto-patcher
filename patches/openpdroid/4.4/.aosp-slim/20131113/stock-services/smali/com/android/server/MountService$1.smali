.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v7, -0x1

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_22
    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    invoke-static {v6, v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Landroid/os/UserHandle;)V

    monitor-exit v7

    goto :goto_9

    :catchall_29
    move-exception v6

    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v6

    :cond_2c
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_3b
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :catchall_63
    move-exception v6

    monitor-exit v7
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_63

    throw v6

    :cond_66
    :try_start_66
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    iget-object v6, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v6, v5}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V

    goto :goto_6a

    :cond_7c
    monitor-exit v7
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_63

    goto :goto_9
.end method
