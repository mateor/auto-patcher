.class Lcom/android/server/am/ActivityManagerService$6$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$6;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$6;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6$1;->this$1:Lcom/android/server/am/ActivityManagerService$6;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$6$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6$1;->this$1:Lcom/android/server/am/ActivityManagerService$6;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6$1;->this$1:Lcom/android/server/am/ActivityManagerService$6;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method
