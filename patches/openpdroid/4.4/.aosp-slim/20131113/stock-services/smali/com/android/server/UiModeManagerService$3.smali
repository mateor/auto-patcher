.class Lcom/android/server/UiModeManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    # setter for: Lcom/android/server/UiModeManagerService;->mCharging:Z
    invoke-static {v1, v0}, Lcom/android/server/UiModeManagerService;->access$202(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;II)V

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_25

    throw v0
.end method
