.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$2;->val$shutdown:Z

    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$2;->val$shutdown:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1200(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method
