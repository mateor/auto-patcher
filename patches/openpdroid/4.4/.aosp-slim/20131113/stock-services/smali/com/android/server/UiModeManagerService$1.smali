.class Lcom/android/server/UiModeManagerService$1;
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

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$1;->getResultCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v2, "enableFlags"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "disableFlags"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V
    invoke-static {v2, v4, v1, v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V

    monitor-exit v3

    goto :goto_8

    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw v2
.end method
