.class final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/power/PowerManagerService;
    .param p2    # Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDockState:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eq v1, v0, :cond_27

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mDockState:I
    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->access$1702(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v3, 0x800

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$876(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)V

    :cond_27
    monitor-exit v2

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
