.class public Lcom/android/server/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 8
    .param p1    # Landroid/app/backup/FullBackupDataOutput;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1    # Landroid/os/ParcelFileDescriptor;
    .param p2    # Landroid/app/backup/BackupDataOutput;
    .param p3    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService;

    new-array v0, v6, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v3, v0, v4

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v3, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    aput-object v3, v1, v4

    const-string v3, "/data/system/wallpaper_info.xml"

    aput-object v3, v1, v5

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3d

    new-array v0, v5, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v3, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v3, "/data/system/wallpaper_info.xml"

    aput-object v3, v1, v4

    :cond_3d
    const-string v3, "wallpaper"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    invoke-direct {v4, p0, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 2
    .param p1    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SystemBackupAgent;->fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1    # Landroid/app/backup/BackupDataInput;
    .param p2    # I
    .param p3    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v2, "wallpaper"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    new-array v4, v6, [Ljava/lang/String;

    sget-object v5, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "/data/data/com.android.settings/files/wallpaper"

    aput-object v6, v5, v7

    const-string v6, "/data/system/wallpaper_info.xml"

    aput-object v6, v5, v8

    invoke-direct {v3, p0, v4, v5}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v2, "system_files"

    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    new-array v4, v8, [Ljava/lang/String;

    sget-object v5, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "/data/data/com.android.settings/files/wallpaper"

    aput-object v6, v5, v7

    invoke-direct {v3, p0, v4, v5}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    :try_start_37
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_45} :catch_46

    :goto_45
    return-void

    :catch_46
    move-exception v0

    const-string v2, "SystemBackupAgent"

    const-string v3, "restore failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_45
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 24
    .param p1    # Landroid/os/ParcelFileDescriptor;
    .param p2    # J
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # J
    .param p9    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v9, 0x0

    const-string v1, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "wallpaper_info.xml"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    new-instance v9, Ljava/io/File;

    sget-object v1, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_44
    :goto_44
    if-nez v9, :cond_72

    :try_start_46
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unrecognized system file: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    if-eqz v11, :cond_8a

    const-string v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    check-cast v12, Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v12}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_8a} :catch_9e

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    const-string v1, "wallpaper"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    new-instance v9, Ljava/io/File;

    sget-object v1, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_44

    :catch_9e
    move-exception v10

    if-eqz v11, :cond_8a

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_8a
.end method
