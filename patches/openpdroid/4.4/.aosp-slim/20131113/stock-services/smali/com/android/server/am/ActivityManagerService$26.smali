.class Lcom/android/server/am/ActivityManagerService$26;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->stopUserLocked(ILandroid/app/IStopUserCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$shutdownIntent:Landroid/content/Intent;

.field final synthetic val$shutdownReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserStartedState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserStartedState;Landroid/content/Intent;Landroid/content/IIntentReceiver;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$26;->val$uss:Lcom/android/server/am/UserStartedState;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$26;->val$shutdownIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$26;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$26;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 25
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Z
    .param p6    # Z
    .param p7    # I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$26;->val$uss:Lcom/android/server/am/UserStartedState;

    iget v1, v1, Lcom/android/server/am/UserStartedState;->mState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    monitor-exit v2

    :goto_f
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$26;->val$uss:Lcom/android/server/am/UserStartedState;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/am/UserStartedState;->mState:I

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_3c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$26;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$26;->val$shutdownIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$26;->val$shutdownReceiver:Landroid/content/IIntentReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityManagerService$26;->val$userId:I

    move/from16 v16, v0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v1 .. v16}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    goto :goto_f

    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method
