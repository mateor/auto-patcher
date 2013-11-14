.class Lcom/android/server/am/ActivityManagerService$13$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$13;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$13;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$13;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mDidUpdate:Z

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_35

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$13;->val$doneReceivers:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeLastDonePreBootReceivers(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040421

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13$1;->this$1:Lcom/android/server/am/ActivityManagerService$13;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$13;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    return-void

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method
