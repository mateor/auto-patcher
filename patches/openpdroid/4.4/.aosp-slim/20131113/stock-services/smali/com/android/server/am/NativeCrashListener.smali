.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x7d0L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 8
    .param p0    # Ljava/io/FileDescriptor;
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    if-lez p3, :cond_e

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    add-int v3, p2, v1

    invoke-interface {v2, p0, p1, v3, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-gtz v0, :cond_f

    const/4 v1, -0x1

    :cond_e
    return v1

    :cond_f
    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method static unpackInt([BI)I
    .registers 8
    .param p0    # [B
    .param p1    # I

    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 16
    .param p1    # Ljava/io/FileDescriptor;

    const/16 v10, 0x1000

    const/16 v13, 0x8

    new-array v0, v10, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-wide/16 v10, 0x7d0

    :try_start_d
    invoke-static {v10, v11}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v9

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v10, p1, v11, v12, v9}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v12, Llibcore/io/OsConstants;->SO_SNDTIMEO:I

    invoke-interface {v10, p1, v11, v12, v9}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    if-eq v3, v13, :cond_34

    const-string v10, "NativeCrashListener"

    const-string v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-void

    :cond_34
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    if-lez v5, :cond_ba

    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_45} :catch_8a

    :try_start_45
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    monitor-exit v11
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_93

    if-eqz v6, :cond_a0

    :try_start_52
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v10, :cond_33

    :cond_56
    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-interface {v10, p1, v0, v11, v12}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-lez v1, :cond_9a

    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_96

    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {v4, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_6c
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6f} :catch_8a

    const/4 v10, 0x1

    :try_start_70
    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    monitor-exit v11
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_9d

    :try_start_76
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_89} :catch_8a

    goto :goto_33

    :catch_8a
    move-exception v2

    const-string v10, "NativeCrashListener"

    const-string v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    :catchall_93
    move-exception v10

    :try_start_94
    monitor-exit v11
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v10

    :cond_96
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9a} :catch_8a

    :cond_9a
    if-gtz v1, :cond_56

    goto :goto_6c

    :catchall_9d
    move-exception v10

    :try_start_9e
    monitor-exit v11
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v10

    :cond_a0
    const-string v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    :cond_ba
    const-string v10, "NativeCrashListener"

    const-string v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c1} :catch_8a

    goto/16 :goto_33
.end method

.method public run()V
    .registers 13

    const/4 v8, 0x1

    new-array v0, v8, [B

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_13
    :try_start_13
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v10, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    new-instance v6, Ljava/net/InetUnixAddress;

    const-string v8, "/data/system/ndebugsocket"

    invoke-direct {v6, v8}, Ljava/net/InetUnixAddress;-><init>(Ljava/lang/String;)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    invoke-interface {v8, v5, v6, v9}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x1

    invoke-interface {v8, v5, v9}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    :cond_31
    :goto_31
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3}, Ljava/net/InetSocketAddress;-><init>()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_8a

    const/4 v4, 0x0

    :try_start_37
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v5, v3}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_50

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_PEERCRED:I

    invoke-interface {v8, v4, v9, v10}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Llibcore/io/StructUcred;

    move-result-object v1

    iget v8, v1, Llibcore/io/StructUcred;->uid:I

    if-nez v8, :cond_50

    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_61
    .catchall {:try_start_37 .. :try_end_50} :catchall_7a

    :cond_50
    if-eqz v4, :cond_31

    :try_start_52
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_99

    :goto_59
    :try_start_59
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5e
    .catch Llibcore/io/ErrnoException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_8a

    goto :goto_31

    :catch_5f
    move-exception v8

    goto :goto_31

    :catch_61
    move-exception v2

    :try_start_62
    const-string v8, "NativeCrashListener"

    const-string v9, "Error handling connection"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_7a

    if-eqz v4, :cond_31

    :try_start_6b
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v8, v4, v0, v9, v10}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_97

    :goto_72
    :try_start_72
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_77
    .catch Llibcore/io/ErrnoException; {:try_start_72 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_77} :catch_8a

    goto :goto_31

    :catch_78
    move-exception v8

    goto :goto_31

    :catchall_7a
    move-exception v8

    if-eqz v4, :cond_89

    :try_start_7d
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v9, v4, v0, v10, v11}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_95

    :goto_84
    :try_start_84
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, v4}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_89
    .catch Llibcore/io/ErrnoException; {:try_start_84 .. :try_end_89} :catch_93
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_8a

    :cond_89
    :goto_89
    :try_start_89
    throw v8
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception v2

    const-string v8, "NativeCrashListener"

    const-string v9, "Unable to init native debug socket!"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_93
    move-exception v9

    goto :goto_89

    :catch_95
    move-exception v9

    goto :goto_84

    :catch_97
    move-exception v8

    goto :goto_72

    :catch_99
    move-exception v8

    goto :goto_59
.end method
