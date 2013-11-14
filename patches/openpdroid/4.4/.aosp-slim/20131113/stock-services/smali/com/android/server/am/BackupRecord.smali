.class final Lcom/android/server/am/BackupRecord;
.super Ljava/lang/Object;
.source "BackupRecord.java"


# static fields
.field public static final BACKUP_FULL:I = 0x1

.field public static final BACKUP_NORMAL:I = 0x0

.field public static final RESTORE:I = 0x2

.field public static final RESTORE_FULL:I = 0x3


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final backupMode:I

.field final stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

.field stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/pm/ApplicationInfo;I)V
    .registers 4
    .param p1    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .param p2    # Landroid/content/pm/ApplicationInfo;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BackupRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    iput-object p2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/BackupRecord;->backupMode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x20

    iget-object v1, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackupRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BackupRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BackupRecord;->stringName:Ljava/lang/String;

    goto :goto_8
.end method
