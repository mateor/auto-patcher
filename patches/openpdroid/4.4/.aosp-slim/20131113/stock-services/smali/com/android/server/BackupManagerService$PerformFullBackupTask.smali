.class Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.super Lcom/android/server/BackupManagerService$ObbServiceClient;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAllApps:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mEncryptPassword:Ljava/lang/String;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field final mIncludeSystem:Z

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mManifestFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 16
    .param p2    # Landroid/os/ParcelFileDescriptor;
    .param p3    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4    # Z
    .param p5    # Z
    .param p6    # Z
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Z
    .param p10    # Z
    .param p11    # [Ljava/lang/String;
    .param p12    # Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$ObbServiceClient;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeObbs:Z

    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    iput-boolean p10, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    iput-object p11, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p8, :cond_21

    const-string v0, ""

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_21
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_23
    iput-object p12, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    return-void

    :cond_3a
    iput-object p8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_23
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .registers 4
    .param p0    # Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .param p1    # Landroid/content/pm/PackageInfo;
    .param p2    # Ljava/io/File;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .registers 3
    .param p0    # Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .param p1    # Landroid/content/pm/PackageInfo;
    .param p2    # Landroid/app/backup/BackupDataOutput;

    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method private backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V
    .registers 16
    .param p1    # Landroid/content/pm/PackageInfo;
    .param p2    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to full backup agent : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_14c

    const/4 v11, 0x0

    :try_start_26
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-boolean v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    if-eqz v1, :cond_c3

    if-nez v10, :cond_c3

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_c3

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4d

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_c3

    :cond_4d
    const/4 v6, 0x1

    :goto_4e
    if-eqz v10, :cond_c5

    const-string v1, "Shared storage"

    :goto_52
    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v5

    new-instance v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;

    const/4 v1, 0x1

    aget-object v4, v11, v1

    if-nez v10, :cond_c8

    const/4 v7, 0x1

    :goto_63
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;-><init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ)V

    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v11, v1

    new-instance v12, Ljava/lang/Thread;

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_7a} :catch_d3
    .catchall {:try_start_26 .. :try_end_7a} :catchall_12f

    :try_start_7a
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v2, 0x0

    aget-object v2, v11, v2

    # invokes: Lcom/android/server/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    invoke-static {v1, v2, p2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_82} :catch_ca
    .catchall {:try_start_7a .. :try_end_82} :catchall_12f

    :goto_82
    :try_start_82
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v1

    if-nez v1, :cond_113

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup failed on package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_a4} :catch_d3
    .catchall {:try_start_82 .. :try_end_a4} :catchall_12f

    :goto_a4
    :try_start_a4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v11, :cond_bf

    const/4 v1, 0x0

    aget-object v1, v11, v1

    if-eqz v1, :cond_b4

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_b4
    const/4 v1, 0x1

    aget-object v1, v11, v1

    if-eqz v1, :cond_bf

    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_bf} :catch_171

    :cond_bf
    :goto_bf
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    return-void

    :cond_c3
    const/4 v6, 0x0

    goto :goto_4e

    :cond_c5
    :try_start_c5
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_52

    :cond_c8
    const/4 v7, 0x0

    goto :goto_63

    :catch_ca
    move-exception v9

    const-string v1, "BackupManagerService"

    const-string v2, "Caught exception reading from agent"

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d2} :catch_d3
    .catchall {:try_start_c5 .. :try_end_d2} :catchall_12f

    goto :goto_82

    :catch_d3
    move-exception v9

    :try_start_d4
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error backing up "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ee
    .catchall {:try_start_d4 .. :try_end_ee} :catchall_12f

    :try_start_ee
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v11, :cond_bf

    const/4 v1, 0x0

    aget-object v1, v11, v1

    if-eqz v1, :cond_fe

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_fe
    const/4 v1, 0x1

    aget-object v1, v11, v1

    if-eqz v1, :cond_bf

    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_109} :catch_10a

    goto :goto_bf

    :catch_10a
    move-exception v9

    const-string v1, "BackupManagerService"

    const-string v2, "Error bringing down backup stack"

    :goto_10f
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    :cond_113
    :try_start_113
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full package backup success: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_12d} :catch_d3
    .catchall {:try_start_113 .. :try_end_12d} :catchall_12f

    goto/16 :goto_a4

    :catchall_12f
    move-exception v1

    :try_start_130
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v11, :cond_14b

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_140

    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_140
    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_14b

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_14b} :catch_168

    :cond_14b
    :goto_14b
    throw v1

    :cond_14c
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind to full agent for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    :catch_168
    move-exception v9

    const-string v2, "BackupManagerService"

    const-string v4, "Error bringing down backup stack"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    :catch_171
    move-exception v9

    const-string v1, "BackupManagerService"

    const-string v2, "Error bringing down backup stack"

    goto :goto_10f
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 23
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    # invokes: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    # invokes: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v16

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v11, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    # invokes: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v7

    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v17, "AES"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v9, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string v17, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v17, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    # invokes: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v12}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .param p1    # Ljava/io/OutputStream;

    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .registers 7
    .param p1    # Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_28

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_28

    :try_start_6
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_28

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_28

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v1

    const-string v2, "BackupManagerService"

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .registers 22
    .param p1    # Landroid/content/pm/PackageInfo;
    .param p2    # Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    new-instance v18, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v16, v1, v2

    if-eqz v16, :cond_57

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_57

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v17

    array-length v14, v12

    const/4 v13, 0x0

    :goto_40
    if-ge v13, v14, :cond_57

    aget-object v15, v12, v13

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_40

    :cond_57
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .registers 14
    .param p1    # Landroid/content/pm/PackageInfo;
    .param p2    # Ljava/io/File;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    :goto_39
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_63

    const-string v8, "1"

    :goto_40
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_66

    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    :cond_4c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_60
    const-string v3, ""

    goto :goto_39

    :cond_63
    const-string v8, "0"

    goto :goto_40

    :cond_66
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_74
    if-ge v2, v4, :cond_4c

    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_74
.end method


# virtual methods
.method public run()V
    .registers 28

    const-string v23, "BackupManagerService"

    const-string v24, "--- Performing full-dataset backup ---"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendStartBackup()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x40

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    move/from16 v23, v0

    if-nez v23, :cond_6b

    const/4 v13, 0x0

    :goto_42
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_6b

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_68

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_42

    :cond_68
    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    array-length v15, v4

    const/4 v14, 0x0

    :goto_79
    if-ge v14, v15, :cond_c1

    aget-object v22, v4, v14

    :try_start_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x40

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_9a} :catch_9d

    :goto_9a
    add-int/lit8 v14, v14, 0x1

    goto :goto_79

    :catch_9d
    move-exception v7

    const-string v23, "BackupManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", skipping"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    :cond_c1
    const/4 v13, 0x0

    :goto_c2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_fc

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    const v24, 0x8000

    and-int v23, v23, v24

    if-eqz v23, :cond_f3

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "com.android.sharedstoragebackup"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f9

    :cond_f3
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c2

    :cond_f9
    add-int/lit8 v13, v13, 0x1

    goto :goto_c2

    :cond_fc
    const/4 v13, 0x0

    :goto_fd
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_138

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    const/16 v24, 0x2710

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_135

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_135

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_fd

    :cond_135
    add-int/lit8 v13, v13, 0x1

    goto :goto_fd

    :cond_138
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v19, 0x0

    const/16 v21, 0x0

    :try_start_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1fd

    const/4 v8, 0x1

    :goto_164
    const/4 v5, 0x1

    move-object/from16 v9, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v23

    if-eqz v23, :cond_200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x2710

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v23

    if-nez v23, :cond_200

    const-string v23, "BackupManagerService"

    const-string v24, "Backup password mismatch; aborting"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_18e} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_18e} :catch_3be
    .catchall {:try_start_14f .. :try_end_18e} :catchall_4af

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_19a

    :try_start_197
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_19a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_1a3} :catch_545

    :goto_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_1c0
    .catchall {:try_start_1b0 .. :try_end_1c0} :catchall_52d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_1e0
    .catchall {:try_start_1c7 .. :try_end_1e0} :catchall_530

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    :goto_1f9
    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_1fd
    const/4 v8, 0x0

    goto/16 :goto_164

    :cond_200
    :try_start_200
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v23, 0x400

    move/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v23, "ANDROID BACKUP\n"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_32d

    const-string v23, "\n1\n"

    :goto_21b
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_220
    .catch Landroid/os/RemoteException; {:try_start_200 .. :try_end_220} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_220} :catch_3be
    .catchall {:try_start_200 .. :try_end_220} :catchall_4af

    if-eqz v8, :cond_331

    :try_start_222
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_227} :catch_33b
    .catch Landroid/os/RemoteException; {:try_start_222 .. :try_end_227} :catch_2b8
    .catchall {:try_start_222 .. :try_end_227} :catchall_4af

    move-result-object v9

    move-object v10, v9

    :goto_229
    :try_start_229
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "UTF-8"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v5, :cond_555

    new-instance v6, Ljava/util/zip/Deflater;

    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v9, Ljava/util/zip/DeflaterOutputStream;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v9, v10, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_24c} :catch_551
    .catch Landroid/os/RemoteException; {:try_start_229 .. :try_end_24c} :catch_2b8
    .catchall {:try_start_229 .. :try_end_24c} :catchall_4af

    :goto_24c
    move-object/from16 v19, v9

    :try_start_24e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    move/from16 v23, v0
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_24e .. :try_end_254} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_254} :catch_3be
    .catchall {:try_start_24e .. :try_end_254} :catchall_4af

    if-eqz v23, :cond_26b

    :try_start_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.android.sharedstoragebackup"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_256 .. :try_end_26b} :catch_3b4
    .catch Landroid/os/RemoteException; {:try_start_256 .. :try_end_26b} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_26b} :catch_3be
    .catchall {:try_start_256 .. :try_end_26b} :catchall_4af

    :cond_26b
    :goto_26b
    :try_start_26b
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x0

    :goto_270
    if-ge v13, v3, :cond_43b

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeObbs:Z

    move/from16 v23, v0

    if-eqz v23, :cond_437

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v17

    if-nez v17, :cond_437

    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failure writing OBB stack for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_2b8
    .catch Landroid/os/RemoteException; {:try_start_26b .. :try_end_2b8} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_2b8} :catch_3be
    .catchall {:try_start_26b .. :try_end_2b8} :catchall_4af

    :catch_2b8
    move-exception v7

    :try_start_2b9
    const-string v23, "BackupManagerService"

    const-string v24, "App died during full backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c0
    .catchall {:try_start_2b9 .. :try_end_2c0} :catchall_4af

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_2cc

    :try_start_2c9
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d5
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2d5} :catch_54b

    :goto_2d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_2e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_2f2
    .catchall {:try_start_2e2 .. :try_end_2f2} :catchall_521

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_312
    .catchall {:try_start_2f9 .. :try_end_312} :catchall_524

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_1f9

    :cond_32d
    :try_start_32d
    const-string v23, "\n0\n"
    :try_end_32f
    .catch Landroid/os/RemoteException; {:try_start_32d .. :try_end_32f} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_32d .. :try_end_32f} :catch_3be
    .catchall {:try_start_32d .. :try_end_32f} :catchall_4af

    goto/16 :goto_21b

    :cond_331
    :try_start_331
    const-string v23, "none\n"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_338
    .catch Ljava/lang/Exception; {:try_start_331 .. :try_end_338} :catch_33b
    .catch Landroid/os/RemoteException; {:try_start_331 .. :try_end_338} :catch_2b8
    .catchall {:try_start_331 .. :try_end_338} :catchall_4af

    move-object v10, v9

    goto/16 :goto_229

    :catch_33b
    move-exception v7

    :goto_33c
    :try_start_33c
    const-string v23, "BackupManagerService"

    const-string v24, "Unable to emit archive header"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_347
    .catch Landroid/os/RemoteException; {:try_start_33c .. :try_end_347} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_33c .. :try_end_347} :catch_3be
    .catchall {:try_start_33c .. :try_end_347} :catchall_4af

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_353

    :try_start_350
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35c
    .catch Ljava/io/IOException; {:try_start_350 .. :try_end_35c} :catch_542

    :goto_35c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_379
    .catchall {:try_start_369 .. :try_end_379} :catchall_533

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_399
    .catchall {:try_start_380 .. :try_end_399} :catchall_536

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_1f9

    :catch_3b4
    move-exception v7

    :try_start_3b5
    const-string v23, "BackupManagerService"

    const-string v24, "Unable to find shared-storage backup handler"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bc
    .catch Landroid/os/RemoteException; {:try_start_3b5 .. :try_end_3bc} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_3b5 .. :try_end_3bc} :catch_3be
    .catchall {:try_start_3b5 .. :try_end_3bc} :catchall_4af

    goto/16 :goto_26b

    :catch_3be
    move-exception v7

    :try_start_3bf
    const-string v23, "BackupManagerService"

    const-string v24, "Internal exception during full backup"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ca
    .catchall {:try_start_3bf .. :try_end_3ca} :catchall_4af

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_3d6

    :try_start_3d3
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_3d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3df
    .catch Ljava/io/IOException; {:try_start_3d3 .. :try_end_3df} :catch_548

    :goto_3df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_3ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_3fc
    .catchall {:try_start_3ec .. :try_end_3fc} :catchall_527

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_41c
    .catchall {:try_start_403 .. :try_end_41c} :catchall_52a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_1f9

    :cond_437
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_270

    :cond_43b
    :try_start_43b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_442
    .catch Landroid/os/RemoteException; {:try_start_43b .. :try_end_442} :catch_2b8
    .catch Ljava/lang/Exception; {:try_start_43b .. :try_end_442} :catch_3be
    .catchall {:try_start_43b .. :try_end_442} :catchall_4af

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_44e

    :try_start_44b
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_44e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_457
    .catch Ljava/io/IOException; {:try_start_44b .. :try_end_457} :catch_53f

    :goto_457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_474
    .catchall {:try_start_464 .. :try_end_474} :catchall_539

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_47b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_494
    .catchall {:try_start_47b .. :try_end_494} :catchall_53c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v23, "BackupManagerService"

    const-string v24, "Full backup pass complete."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    goto/16 :goto_1f9

    :catchall_4af
    move-exception v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    if-eqz v19, :cond_4bc

    :try_start_4b9
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    :cond_4bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c5
    .catch Ljava/io/IOException; {:try_start_4b9 .. :try_end_4c5} :catch_54e

    :goto_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_4d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    monitor-exit v24
    :try_end_4e2
    .catchall {:try_start_4d2 .. :try_end_4e2} :catchall_51b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v24
    :try_end_4fe
    .catchall {:try_start_4e9 .. :try_end_4fe} :catchall_51e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v23

    :catchall_51b
    move-exception v23

    :try_start_51c
    monitor-exit v24
    :try_end_51d
    .catchall {:try_start_51c .. :try_end_51d} :catchall_51b

    throw v23

    :catchall_51e
    move-exception v23

    :try_start_51f
    monitor-exit v24
    :try_end_520
    .catchall {:try_start_51f .. :try_end_520} :catchall_51e

    throw v23

    :catchall_521
    move-exception v23

    :try_start_522
    monitor-exit v24
    :try_end_523
    .catchall {:try_start_522 .. :try_end_523} :catchall_521

    throw v23

    :catchall_524
    move-exception v23

    :try_start_525
    monitor-exit v24
    :try_end_526
    .catchall {:try_start_525 .. :try_end_526} :catchall_524

    throw v23

    :catchall_527
    move-exception v23

    :try_start_528
    monitor-exit v24
    :try_end_529
    .catchall {:try_start_528 .. :try_end_529} :catchall_527

    throw v23

    :catchall_52a
    move-exception v23

    :try_start_52b
    monitor-exit v24
    :try_end_52c
    .catchall {:try_start_52b .. :try_end_52c} :catchall_52a

    throw v23

    :catchall_52d
    move-exception v23

    :try_start_52e
    monitor-exit v24
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_52d

    throw v23

    :catchall_530
    move-exception v23

    :try_start_531
    monitor-exit v24
    :try_end_532
    .catchall {:try_start_531 .. :try_end_532} :catchall_530

    throw v23

    :catchall_533
    move-exception v23

    :try_start_534
    monitor-exit v24
    :try_end_535
    .catchall {:try_start_534 .. :try_end_535} :catchall_533

    throw v23

    :catchall_536
    move-exception v23

    :try_start_537
    monitor-exit v24
    :try_end_538
    .catchall {:try_start_537 .. :try_end_538} :catchall_536

    throw v23

    :catchall_539
    move-exception v23

    :try_start_53a
    monitor-exit v24
    :try_end_53b
    .catchall {:try_start_53a .. :try_end_53b} :catchall_539

    throw v23

    :catchall_53c
    move-exception v23

    :try_start_53d
    monitor-exit v24
    :try_end_53e
    .catchall {:try_start_53d .. :try_end_53e} :catchall_53c

    throw v23

    :catch_53f
    move-exception v23

    goto/16 :goto_457

    :catch_542
    move-exception v23

    goto/16 :goto_35c

    :catch_545
    move-exception v23

    goto/16 :goto_1a3

    :catch_548
    move-exception v23

    goto/16 :goto_3df

    :catch_54b
    move-exception v23

    goto/16 :goto_2d5

    :catch_54e
    move-exception v24

    goto/16 :goto_4c5

    :catch_551
    move-exception v7

    move-object v9, v10

    goto/16 :goto_33c

    :cond_555
    move-object v9, v10

    goto/16 :goto_24c
.end method

.method sendEndBackup()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendOnBackupPackage(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendStartBackup()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method
