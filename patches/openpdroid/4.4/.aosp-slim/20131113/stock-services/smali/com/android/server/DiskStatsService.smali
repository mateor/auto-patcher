.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/io/PrintWriter;

    const-wide/16 v9, 0x0

    :try_start_2
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    cmp-long v8, v2, v9

    if-lez v8, :cond_22

    cmp-long v8, v6, v9

    if-gtz v8, :cond_60

    :cond_22
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid stat: bsize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " avail="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v4

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "-Error: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5f
    return-void

    :cond_60
    :try_start_60
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "-Free: "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v8, v0, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, "K / "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v8, v6, v2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, "K total = "

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    invoke-virtual {p3, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, "% free"

    invoke-virtual {p3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_8e} :catch_4f

    goto :goto_5f
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    const-string v14, "DiskStatsService"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x200

    new-array v10, v12, [B

    const/4 v9, 0x0

    :goto_e
    array-length v12, v10

    if-ge v9, v12, :cond_17

    int-to-byte v12, v9

    aput-byte v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_17
    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "system/perftest.tmp"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    :try_start_28
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_7a
    .catchall {:try_start_28 .. :try_end_2d} :catchall_84

    :try_start_2d
    invoke-virtual {v8, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_a8
    .catchall {:try_start_2d .. :try_end_30} :catchall_a5

    if-eqz v8, :cond_35

    :try_start_32
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_a3

    :cond_35
    :goto_35
    move-object v7, v8

    :cond_36
    :goto_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_43

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_43
    if-eqz v6, :cond_8b

    const-string v12, "Test-Error: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_55
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "Data"

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "Cache"

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v12, Ljava/io/File;

    const-string v13, "/system"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v13, "System"

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :catch_7a
    move-exception v5

    :goto_7b
    move-object v6, v5

    if-eqz v7, :cond_36

    :try_start_7e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_36

    :catch_82
    move-exception v12

    goto :goto_36

    :catchall_84
    move-exception v12

    :goto_85
    if-eqz v7, :cond_8a

    :try_start_87
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_a1

    :cond_8a
    :goto_8a
    throw v12

    :cond_8b
    const-string v12, "Latency: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v12, v1, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string v12, "ms [512B Data Write]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55

    :catch_a1
    move-exception v13

    goto :goto_8a

    :catch_a3
    move-exception v12

    goto :goto_35

    :catchall_a5
    move-exception v12

    move-object v7, v8

    goto :goto_85

    :catch_a8
    move-exception v5

    move-object v7, v8

    goto :goto_7b
.end method
