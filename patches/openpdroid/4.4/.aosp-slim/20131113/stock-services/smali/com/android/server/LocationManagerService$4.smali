.class Lcom/android/server/LocationManagerService$4;
.super Lcom/android/internal/content/PackageMonitor;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v4, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_8
    iget-object v4, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_55

    move-result-object v2

    move-object v1, v0

    :goto_17
    :try_start_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, v3, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    if-nez v1, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_4f

    :goto_32
    :try_start_32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_55

    :goto_35
    move-object v1, v0

    goto :goto_17

    :cond_37
    if-eqz v1, :cond_53

    :try_start_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v4, v3}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_4f

    goto :goto_3d

    :catchall_4f
    move-exception v4

    move-object v0, v1

    :goto_51
    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_55

    throw v4

    :cond_53
    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4f

    return-void

    :catchall_55
    move-exception v4

    goto :goto_51

    :cond_57
    move-object v0, v1

    goto :goto_32

    :cond_59
    move-object v0, v1

    goto :goto_35
.end method
