.class Lcom/android/server/BackupManagerService$PerformClearTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p2    # Lcom/android/internal/backup/IBackupTransport;
    .param p3    # Landroid/content/pm/PackageInfo;

    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_2f
    .catchall {:try_start_0 .. :try_end_22} :catchall_54

    :try_start_22
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_6d

    :goto_27
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    :goto_2b
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport threw attempting to clear data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_54

    :try_start_4a
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_6f

    :goto_4f
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2b

    :catchall_54
    move-exception v3

    :try_start_55
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_71

    :goto_5a
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    :catch_62
    move-exception v3

    :try_start_63
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_73

    :goto_68
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2b

    :catch_6d
    move-exception v3

    goto :goto_27

    :catch_6f
    move-exception v3

    goto :goto_4f

    :catch_71
    move-exception v4

    goto :goto_5a

    :catch_73
    move-exception v3

    goto :goto_68
.end method
