.class Lcom/android/server/BackupManagerService$RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunInitializeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/BackupManagerService;
    .param p2    # Lcom/android/server/BackupManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    const-string v1, "BackupManagerService"

    const-string v3, "Running a device init"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$RunInitializeReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    :cond_30
    return-void

    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_31

    throw v1
.end method
