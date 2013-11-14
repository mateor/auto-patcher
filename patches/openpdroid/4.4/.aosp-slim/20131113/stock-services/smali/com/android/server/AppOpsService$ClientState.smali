.class public final Lcom/android/server/AppOpsService$ClientState;
.super Landroid/os/Binder;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClientState"
.end annotation


# instance fields
.field final mAppToken:Landroid/os/IBinder;

.field final mPid:I

.field final mStartedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Op;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .registers 5
    .param p2    # Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$ClientState;->mPid:I

    instance-of v0, p2, Landroid/os/Binder;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    :try_start_1c
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_14

    :catch_23
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_b
    if-ltz v0, :cond_1d

    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    invoke-virtual {v3, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1d
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/AppOpsService$ClientState;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    const-string v0, "local"

    goto :goto_30
.end method
