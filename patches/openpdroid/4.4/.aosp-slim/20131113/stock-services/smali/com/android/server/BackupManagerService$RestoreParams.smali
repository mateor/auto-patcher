.class Lcom/android/server/BackupManagerService$RestoreParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreParams"
.end annotation


# instance fields
.field public filterSet:[Ljava/lang/String;

.field public needFullBackup:Z

.field public observer:Landroid/app/backup/IRestoreObserver;

.field public pkgInfo:Landroid/content/pm/PackageInfo;

.field public pmToken:I

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field public token:J

.field public transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V
    .registers 10
    .param p2    # Lcom/android/internal/backup/IBackupTransport;
    .param p3    # Landroid/app/backup/IRestoreObserver;
    .param p4    # J
    .param p6    # Landroid/content/pm/PackageInfo;
    .param p7    # I
    .param p8    # Z

    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-wide p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    iput-object p6, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    iput p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JZ)V
    .registers 9
    .param p2    # Lcom/android/internal/backup/IBackupTransport;
    .param p3    # Landroid/app/backup/IRestoreObserver;
    .param p4    # J
    .param p6    # Z

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-wide p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V
    .registers 9
    .param p2    # Lcom/android/internal/backup/IBackupTransport;
    .param p3    # Landroid/app/backup/IRestoreObserver;
    .param p4    # J
    .param p6    # [Ljava/lang/String;
    .param p7    # Z

    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-wide p4, p0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    iput-boolean p7, p0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    iput-object p6, p0, Lcom/android/server/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    return-void
.end method
