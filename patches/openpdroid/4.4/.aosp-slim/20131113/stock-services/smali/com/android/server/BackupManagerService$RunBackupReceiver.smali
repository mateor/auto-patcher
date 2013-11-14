.class Lcom/android/server/BackupManagerService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/BackupManagerService;
    .param p2    # Lcom/android/server/BackupManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_11
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_44

    const-string v2, "BackupManagerService"

    const-string v4, "Init pending at scheduled backup"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_41

    :try_start_22
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_36
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_22 .. :try_end_36} :catch_38
    .catchall {:try_start_22 .. :try_end_36} :catchall_41

    :goto_36
    :try_start_36
    monitor-exit v3

    :cond_37
    return-void

    :catch_38
    move-exception v0

    const-string v2, "BackupManagerService"

    const-string v4, "Run init intent cancelled"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_41

    throw v2

    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-nez v2, :cond_7a

    const-string v2, "BackupManagerService"

    const-string v4, "Running a backup pass"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_36

    :cond_7a
    const-string v2, "BackupManagerService"

    const-string v4, "Backup time but one already running"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_82
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$RunBackupReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_44 .. :try_end_ac} :catchall_41

    goto :goto_36
.end method
