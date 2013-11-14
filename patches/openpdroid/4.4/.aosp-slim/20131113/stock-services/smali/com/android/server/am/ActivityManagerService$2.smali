.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 64
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_90c

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "anr_show_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6d

    const/16 v57, 0x1

    :goto_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_2a
    const-string v4, "app"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/am/ProcessRecord;

    const-string v4, "result"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/am/AppErrorResult;

    if-eqz v50, :cond_70

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_70

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v54, :cond_68

    const/4 v4, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_68
    monitor-exit v5

    goto :goto_7

    :catchall_6a
    move-exception v4

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_2a .. :try_end_6c} :catchall_6a

    throw v4

    :cond_6d
    const/16 v57, 0x0

    goto :goto_25

    :cond_70
    if-nez v57, :cond_bd

    :try_start_72
    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-lt v4, v6, :cond_bd

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v4, v6, :cond_bd

    move-object/from16 v0, v50

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_bd

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": background"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v54, :cond_ba

    const/4 v4, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_ba
    monitor-exit v5

    goto/16 :goto_7

    :cond_bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_fb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_fb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_fb

    new-instance v8, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v54

    move-object/from16 v1, v50

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, v50

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_f1
    :goto_f1
    monitor-exit v5
    :try_end_f2
    .catchall {:try_start_72 .. :try_end_f2} :catchall_6a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :cond_fb
    if-eqz v54, :cond_f1

    const/4 v4, 0x0

    :try_start_fe
    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_6a

    goto :goto_f1

    :pswitch_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_10b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/HashMap;

    const-string v4, "app"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/am/ProcessRecord;

    if-eqz v50, :cond_145

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_145

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v21

    goto/16 :goto_7

    :catchall_142
    move-exception v4

    monitor-exit v21
    :try_end_144
    .catchall {:try_start_10b .. :try_end_144} :catchall_142

    throw v4

    :cond_145
    :try_start_145
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_159

    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    const/16 v19, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v4 .. v19}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1b1

    new-instance v8, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1af

    const/4 v13, 0x1

    :goto_199
    move-object/from16 v11, v50

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, v50

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :goto_1a5
    monitor-exit v21
    :try_end_1a6
    .catchall {:try_start_145 .. :try_end_1a6} :catchall_142

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :cond_1af
    const/4 v13, 0x0

    goto :goto_199

    :cond_1b1
    :try_start_1b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_1bb
    .catchall {:try_start_1b1 .. :try_end_1bb} :catchall_142

    goto :goto_1a5

    :pswitch_1bc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_1c9
    const-string v4, "app"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/am/ProcessRecord;

    if-nez v50, :cond_1e2

    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_7

    :catchall_1df
    move-exception v4

    monitor-exit v5
    :try_end_1e1
    .catchall {:try_start_1c9 .. :try_end_1e1} :catchall_1df

    throw v4

    :cond_1e2
    :try_start_1e2
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_205

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_7

    :cond_205
    const-string v4, "result"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_24d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_24d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_24d

    new-instance v8, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v54

    move-object/from16 v1, v50

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, v50

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :goto_243
    monitor-exit v5
    :try_end_244
    .catchall {:try_start_1e2 .. :try_end_244} :catchall_1df

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :cond_24d
    const/4 v4, 0x0

    :try_start_24e
    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_253
    .catchall {:try_start_24e .. :try_end_253} :catchall_1df

    goto :goto_243

    :pswitch_254
    new-instance v8, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    :pswitch_275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v55

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    :pswitch_28c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    monitor-exit v5

    goto/16 :goto_7

    :catchall_29b
    move-exception v4

    monitor-exit v5
    :try_end_29d
    .catchall {:try_start_291 .. :try_end_29d} :catchall_29b

    throw v4

    :pswitch_29e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_2a3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2da

    move-object/from16 v0, v33

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_2d4

    new-instance v8, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-direct {v8, v4, v6, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, v33

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    move-object/from16 v0, v33

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    :cond_2d4
    :goto_2d4
    monitor-exit v5

    goto/16 :goto_7

    :catchall_2d7
    move-exception v4

    monitor-exit v5
    :try_end_2d9
    .catchall {:try_start_2a3 .. :try_end_2d9} :catchall_2d7

    throw v4

    :cond_2da
    :try_start_2da
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2d4

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    const/4 v4, 0x0

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_2ec
    .catchall {:try_start_2da .. :try_end_2ec} :catchall_2d7

    goto :goto_2d4

    :pswitch_2ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_31f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v46

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v46

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x4e20

    move-object/from16 v0, v46

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_31f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v5

    goto/16 :goto_7

    :catchall_336
    move-exception v4

    monitor-exit v5
    :try_end_338
    .catchall {:try_start_324 .. :try_end_338} :catchall_336

    throw v4

    :pswitch_339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_33e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v42, v4, -0x1

    :goto_34a
    if-ltz v42, :cond_38d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_35e
    .catchall {:try_start_33e .. :try_end_35e} :catchall_38a

    if-eqz v4, :cond_367

    :try_start_360
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_367
    .catch Landroid/os/RemoteException; {:try_start_360 .. :try_end_367} :catch_36a
    .catchall {:try_start_360 .. :try_end_367} :catchall_38a

    :cond_367
    :goto_367
    add-int/lit8 v42, v42, -0x1

    goto :goto_34a

    :catch_36a
    move-exception v39

    :try_start_36b
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update time zone for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_367

    :catchall_38a
    move-exception v4

    monitor-exit v5
    :try_end_38c
    .catchall {:try_start_36b .. :try_end_38c} :catchall_38a

    throw v4

    :cond_38d
    :try_start_38d
    monitor-exit v5
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_38a

    goto/16 :goto_7

    :pswitch_390
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v42, v4, -0x1

    :goto_3a1
    if-ltz v42, :cond_3e4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3b5
    .catchall {:try_start_395 .. :try_end_3b5} :catchall_3e1

    if-eqz v4, :cond_3be

    :try_start_3b7
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_3be
    .catch Landroid/os/RemoteException; {:try_start_3b7 .. :try_end_3be} :catch_3c1
    .catchall {:try_start_3b7 .. :try_end_3be} :catchall_3e1

    :cond_3be
    :goto_3be
    add-int/lit8 v42, v42, -0x1

    goto :goto_3a1

    :catch_3c1
    move-exception v39

    :try_start_3c2
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clear dns cache for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3be

    :catchall_3e1
    move-exception v4

    monitor-exit v5
    :try_end_3e3
    .catchall {:try_start_3c2 .. :try_end_3e3} :catchall_3e1

    throw v4

    :cond_3e4
    :try_start_3e4
    monitor-exit v5
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_3e1

    goto/16 :goto_7

    :pswitch_3e7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Landroid/net/ProxyProperties;

    const-string v41, ""

    const-string v49, ""

    const-string v40, ""

    const/16 v47, 0x0

    if-eqz v52, :cond_40d

    invoke-virtual/range {v52 .. v52}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v52 .. v52}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v52 .. v52}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v52 .. v52}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v47

    :cond_40d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v42, v4, -0x1

    :goto_41e
    if-ltz v42, :cond_469

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_432
    .catchall {:try_start_412 .. :try_end_432} :catchall_466

    if-eqz v4, :cond_443

    :try_start_434
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v41

    move-object/from16 v1, v49

    move-object/from16 v2, v40

    move-object/from16 v3, v47

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_443
    .catch Landroid/os/RemoteException; {:try_start_434 .. :try_end_443} :catch_446
    .catchall {:try_start_434 .. :try_end_443} :catchall_466

    :cond_443
    :goto_443
    add-int/lit8 v42, v42, -0x1

    goto :goto_41e

    :catch_446
    move-exception v39

    :try_start_447
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update http proxy for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_443

    :catchall_466
    move-exception v4

    monitor-exit v5
    :try_end_468
    .catchall {:try_start_447 .. :try_end_468} :catchall_466

    throw v4

    :cond_469
    :try_start_469
    monitor-exit v5
    :try_end_46a
    .catchall {:try_start_469 .. :try_end_46a} :catchall_466

    goto/16 :goto_7

    :pswitch_46c
    const-string v60, "System UIDs Inconsistent"

    const-string v58, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v8, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    :pswitch_4d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    :pswitch_4f3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_525

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v46

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v46

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v46

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    :cond_525
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v33

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v5

    goto/16 :goto_7

    :catchall_53e
    move-exception v4

    monitor-exit v5
    :try_end_540
    .catchall {:try_start_532 .. :try_end_540} :catchall_53e

    throw v4

    :pswitch_541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    monitor-exit v5

    goto/16 :goto_7

    :catchall_551
    move-exception v4

    monitor-exit v5
    :try_end_553
    .catchall {:try_start_546 .. :try_end_553} :catchall_551

    throw v4

    :pswitch_554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_559
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_58f

    const/4 v12, 0x1

    :goto_565
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    const-string v4, "pkg"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "reason"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZILjava/lang/String;)Z
    invoke-static/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZILjava/lang/String;)Z

    monitor-exit v5

    goto/16 :goto_7

    :catchall_58c
    move-exception v4

    monitor-exit v5
    :try_end_58e
    .catchall {:try_start_559 .. :try_end_58e} :catchall_58c

    throw v4

    :cond_58f
    const/4 v12, 0x0

    goto :goto_565

    :pswitch_591
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    :pswitch_59c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v43

    if-eqz v43, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v51, v0

    if-eqz v51, :cond_7

    :try_start_5b2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040422

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v58

    new-instance v30, Landroid/app/Notification;

    invoke-direct/range {v30 .. v30}, Landroid/app/Notification;-><init>()V

    const v4, 0x10805c7

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->icon:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, v30

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    const/4 v4, 0x2

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v58

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->defaults:I

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040423

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/high16 v21, 0x10000000

    const/16 v22, 0x0

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v56

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v18 .. v23}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_647
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b2 .. :try_end_647} :catch_670

    const/4 v4, 0x1

    :try_start_648
    new-array v0, v4, [I

    move-object/from16 v24, v0

    const-string v19, "android"

    const-string v20, "android"

    const/16 v21, 0x0

    const v22, 0x1040422

    move-object/from16 v0, v56

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v25, v0

    move-object/from16 v18, v43

    move-object/from16 v23, v30

    invoke-interface/range {v18 .. v25}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_662
    .catch Ljava/lang/RuntimeException; {:try_start_648 .. :try_end_662} :catch_664
    .catch Landroid/os/RemoteException; {:try_start_648 .. :try_end_662} :catch_909
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_648 .. :try_end_662} :catch_670

    goto/16 :goto_7

    :catch_664
    move-exception v38

    :try_start_665
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_665 .. :try_end_66e} :catch_670

    goto/16 :goto_7

    :catch_670
    move-exception v38

    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :pswitch_67c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v25

    if-eqz v25, :cond_7

    :try_start_682
    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x1040422

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6, v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_691
    .catch Ljava/lang/RuntimeException; {:try_start_682 .. :try_end_691} :catch_693
    .catch Landroid/os/RemoteException; {:try_start_682 .. :try_end_691} :catch_906

    goto/16 :goto_7

    :catch_693
    move-exception v38

    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :pswitch_69f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_6a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v46

    const-wide/32 v13, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v5

    goto/16 :goto_7

    :catchall_6c8
    move-exception v4

    monitor-exit v5
    :try_end_6ca
    .catchall {:try_start_6a4 .. :try_end_6ca} :catchall_6c8

    throw v4

    :pswitch_6cb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_6d0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_70e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6fe

    monitor-exit v5

    goto/16 :goto_7

    :catchall_6fb
    move-exception v4

    monitor-exit v5
    :try_end_6fd
    .catchall {:try_start_6d0 .. :try_end_6fd} :catchall_6fb

    throw v4

    :cond_6fe
    :try_start_6fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    :cond_70e
    if-eqz v34, :cond_710

    :cond_710
    monitor-exit v5
    :try_end_711
    .catchall {:try_start_6fe .. :try_end_711} :catchall_6fb

    goto/16 :goto_7

    :pswitch_713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    :pswitch_71c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v48

    move/from16 v1, v61

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    :pswitch_735
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/util/ArrayList;

    new-instance v59, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/util/ArrayList;)V

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_74d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    :pswitch_764
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    :pswitch_77b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    :pswitch_792
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_7b5

    const/16 v45, 0x1

    :goto_79a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v45

    if-eq v4, v0, :cond_7

    if-eqz v45, :cond_7b8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    :cond_7b5
    const/16 v45, 0x0

    goto :goto_79a

    :cond_7b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    :pswitch_7c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    :pswitch_7cc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v6, v9, v13}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto/16 :goto_7

    :pswitch_7db
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v25

    if-eqz v25, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v51, v0

    if-eqz v51, :cond_7

    :try_start_7f1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8d8

    const v4, 0x104004b

    :goto_812
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v60

    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.settings.APP_OPS_DETAILS_SETTINGS"

    const-string v5, "package"

    move-object/from16 v0, v56

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v30, Landroid/app/Notification;

    invoke-direct/range {v30 .. v30}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->getPrivacyGuardIconResId(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->icon:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, v30

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    const/4 v4, 0x2

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->flags:I

    const/4 v4, -0x1

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->priority:I

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput v4, v0, Landroid/app/Notification;->defaults:I

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v21, 0x10000000

    const/16 v22, 0x0

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v56

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v18 .. v23}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    move-object/from16 v2, v58

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_8a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f1 .. :try_end_8a5} :catch_8cc

    const/4 v4, 0x1

    :try_start_8a6
    new-array v0, v4, [I

    move-object/from16 v24, v0

    const-string v26, "android"

    const-string v27, "android"

    const/16 v28, 0x0

    const v29, 0x104004a

    move-object/from16 v0, v56

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v32, v0

    move-object/from16 v31, v24

    invoke-interface/range {v25 .. v32}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_8be
    .catch Ljava/lang/RuntimeException; {:try_start_8a6 .. :try_end_8be} :catch_8c0
    .catch Landroid/os/RemoteException; {:try_start_8a6 .. :try_end_8be} :catch_903
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8a6 .. :try_end_8be} :catch_8cc

    goto/16 :goto_7

    :catch_8c0
    move-exception v38

    :try_start_8c1
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for privacy guard"

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c1 .. :try_end_8ca} :catch_8cc

    goto/16 :goto_7

    :catch_8cc
    move-exception v38

    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for privacy guard notification"

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :cond_8d8
    const v4, 0x104004c

    goto/16 :goto_812

    :pswitch_8dd
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v25

    if-eqz v25, :cond_7

    :try_start_8e3
    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x104004a

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6, v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_8f2
    .catch Ljava/lang/RuntimeException; {:try_start_8e3 .. :try_end_8f2} :catch_8f4
    .catch Landroid/os/RemoteException; {:try_start_8e3 .. :try_end_8f2} :catch_900

    goto/16 :goto_7

    :catch_8f4
    move-exception v38

    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_900
    move-exception v4

    goto/16 :goto_7

    :catch_903
    move-exception v4

    goto/16 :goto_7

    :catch_906
    move-exception v4

    goto/16 :goto_7

    :catch_909
    move-exception v4

    goto/16 :goto_7

    :pswitch_data_90c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_104
        :pswitch_254
        :pswitch_275
        :pswitch_28c
        :pswitch_29e
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2ed
        :pswitch_339
        :pswitch_46c
        :pswitch_4d9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4f3
        :pswitch_541
        :pswitch_554
        :pswitch_591
        :pswitch_59c
        :pswitch_67c
        :pswitch_1bc
        :pswitch_69f
        :pswitch_390
        :pswitch_3e7
        :pswitch_6cb
        :pswitch_713
        :pswitch_71c
        :pswitch_735
        :pswitch_74d
        :pswitch_764
        :pswitch_77b
        :pswitch_792
        :pswitch_7c3
        :pswitch_7cc
        :pswitch_7db
        :pswitch_8dd
    .end packed-switch
.end method
