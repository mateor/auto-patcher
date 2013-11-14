.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_110

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    if-nez v12, :cond_7

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v12}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_7

    :pswitch_2e
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v8, v7, [I

    const/4 v9, 0x0

    const-string v12, "activity"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move v10, v9

    :goto_48
    if-ge v4, v7, :cond_e2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    iget-object v5, v11, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v12, v11, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v12, :cond_95

    const/4 v2, 0x1

    :cond_5c
    :goto_5c
    if-nez v2, :cond_b9

    iget v12, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v13, 0x4

    if-ge v12, v13, :cond_b9

    const-string v12, "MountService"

    const-string v13, "Retrying to kill storage users again"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    iget v15, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x1e

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v9, v10

    :goto_91
    add-int/lit8 v4, v4, 0x1

    move v10, v9

    goto :goto_48

    :cond_95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v12, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_a2

    array-length v12, v6

    if-nez v12, :cond_a4

    :cond_a2
    const/4 v2, 0x1

    goto :goto_5c

    :cond_a4
    const-string v12, "unmount media"

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v12, v13}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v12, v5}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_b7

    array-length v12, v6

    if-nez v12, :cond_5c

    :cond_b7
    const/4 v2, 0x1

    goto :goto_5c

    :cond_b9
    iget v12, v11, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v13, 0x4

    if-lt v12, v13, :cond_c5

    const-string v12, "MountService"

    const-string v13, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    add-int/lit8 v9, v10, 0x1

    aput v4, v8, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_91

    :cond_e2
    add-int/lit8 v4, v10, -0x1

    :goto_e4
    if-ltz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    aget v13, v8, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_e4

    :pswitch_f2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/MountService$UnmountCallBack;

    invoke-virtual {v11}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_7

    :pswitch_fd
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_104} :catch_106

    goto/16 :goto_7

    :catch_106
    move-exception v3

    const-string v12, "MountService"

    const-string v13, "Boot-time mount exception"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_8
        :pswitch_2e
        :pswitch_f2
        :pswitch_fd
    .end packed-switch
.end method
