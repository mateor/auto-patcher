.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xea60

.field private static final LOGD:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p1    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p4, :cond_2d

    :goto_23
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    return-void

    :cond_2d
    const-string p4, "NativeDaemonConnector"

    goto :goto_23
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0    # Ljava/lang/StringBuilder;
    .param p1    # Ljava/lang/String;

    const/16 v5, 0x22

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_25

    const/4 v1, 0x1

    :goto_b
    if-eqz v1, :cond_10

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_35

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_27

    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    const/4 v1, 0x0

    goto :goto_b

    :cond_27
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_31

    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_35
    if-eqz v1, :cond_3a

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3a
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 4

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    const-string v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_16

    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    goto :goto_15
.end method

.method private listenToSocket()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    :try_start_1
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_240
    .catchall {:try_start_1 .. :try_end_6} :catchall_b7

    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v13}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_9c
    .catchall {:try_start_6 .. :try_end_18} :catchall_18b

    :try_start_18
    invoke-virtual {v13}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    monitor-exit v16
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_99

    :try_start_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-interface {v15}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    const/16 v15, 0x1000

    new-array v3, v15, [B

    const/4 v14, 0x0

    :goto_2d
    rsub-int v15, v14, 0x1000

    invoke-virtual {v9, v3, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_ff

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reading with start = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_57} :catch_9c
    .catchall {:try_start_21 .. :try_end_57} :catchall_18b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_5e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_205

    if-eqz v15, :cond_92

    :try_start_64
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "closing stream for "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8d} :catch_223
    .catchall {:try_start_64 .. :try_end_8d} :catchall_205

    :goto_8d
    const/4 v15, 0x0

    :try_start_8e
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_92
    monitor-exit v16
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_205

    if-eqz v13, :cond_98

    :try_start_95
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_208

    :cond_98
    :goto_98
    return-void

    :catchall_99
    move-exception v15

    :try_start_9a
    monitor-exit v16
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v15
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9c} :catch_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_18b

    :catch_9c
    move-exception v7

    move-object v12, v13

    :goto_9e
    :try_start_9e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Communications error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    throw v7
    :try_end_b7
    .catchall {:try_start_9e .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception v15

    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_1c4

    if-eqz v17, :cond_f8

    :try_start_c7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "closing stream for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_f0} :catch_1e6
    .catchall {:try_start_c7 .. :try_end_f0} :catchall_1c4

    :goto_f0
    const/16 v17, 0x0

    :try_start_f2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_f8
    monitor-exit v16
    :try_end_f9
    .catchall {:try_start_f2 .. :try_end_f9} :catchall_1c4

    if-eqz v12, :cond_fe

    :try_start_fb
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_1c7

    :cond_fe
    :goto_fe
    throw v15

    :cond_ff
    add-int/2addr v4, v14

    const/4 v14, 0x0

    const/4 v8, 0x0

    :goto_102
    if-ge v8, v4, :cond_18f

    :try_start_104
    aget-byte v15, v3, v8

    if-nez v15, :cond_156

    new-instance v10, Ljava/lang/String;

    sub-int v15, v8, v14

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-direct {v10, v3, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RCV <- {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_131} :catch_9c
    .catchall {:try_start_104 .. :try_end_131} :catchall_18b

    :try_start_131
    invoke-static {v10}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v15

    if-eqz v15, :cond_159

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v17

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_154
    add-int/lit8 v14, v8, 0x1

    :cond_156
    add-int/lit8 v8, v8, 0x1

    goto :goto_102

    :cond_159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_166
    .catch Ljava/lang/IllegalArgumentException; {:try_start_131 .. :try_end_166} :catch_167
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_166} :catch_9c
    .catchall {:try_start_131 .. :try_end_166} :catchall_18b

    goto :goto_154

    :catch_167
    move-exception v5

    :try_start_168
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem parsing message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    goto :goto_154

    :catchall_18b
    move-exception v15

    move-object v12, v13

    goto/16 :goto_b8

    :cond_18f
    if-nez v14, :cond_1b6

    new-instance v10, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v14, v4, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RCV incomplete <- {"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "}"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    :cond_1b6
    if-eq v14, v4, :cond_1c1

    rsub-int v11, v14, 0x1000

    const/4 v15, 0x0

    invoke-static {v3, v14, v3, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_1be} :catch_9c
    .catchall {:try_start_168 .. :try_end_1be} :catchall_18b

    move v14, v11

    goto/16 :goto_2d

    :cond_1c1
    const/4 v14, 0x0

    goto/16 :goto_2d

    :catchall_1c4
    move-exception v15

    :try_start_1c5
    monitor-exit v16
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw v15

    :catch_1c7
    move-exception v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing socket: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_fe

    :catch_1e6
    move-exception v5

    :try_start_1e7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Failed closing output stream: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_203
    .catchall {:try_start_1e7 .. :try_end_203} :catchall_1c4

    goto/16 :goto_f0

    :catchall_205
    move-exception v15

    :try_start_206
    monitor-exit v16
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_205

    throw v15

    :catch_208
    move-exception v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed closing socket: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_98

    :catch_223
    move-exception v5

    :try_start_224
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed closing output stream: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_23e
    .catchall {:try_start_224 .. :try_end_23e} :catchall_205

    goto/16 :goto_8d

    :catch_240
    move-exception v7

    goto/16 :goto_9e
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 13
    .param p0    # Ljava/lang/StringBuilder;
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v6, 0x20

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_22

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_22
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_30

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Arguments must be separate from command"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p4

    array-length v4, v2

    const/4 v3, 0x0

    :goto_49
    if-ge v3, v4, :cond_89

    aget-object v0, v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_70

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_70
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    instance-of v5, v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v5, :cond_85

    const-string v5, "[scrubbed]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_85
    invoke-static {p1, v1}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_82

    :cond_89
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public varargs execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 22
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v9, v7, v11, v0, v1}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SND -> {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_4c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v14, :cond_5f

    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    const-string v16, "missing output stream"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v14

    :catchall_5c
    move-exception v14

    monitor-exit v15
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_5c

    throw v14

    :cond_5f
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_70} :catch_9c
    .catchall {:try_start_5f .. :try_end_70} :catchall_5c

    :try_start_70
    monitor-exit v15
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_5c

    const/4 v5, 0x0

    :cond_72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    move/from16 v0, p1

    invoke-virtual {v14, v11, v0, v8}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IILjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    if-nez v5, :cond_a7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "timed-out waiting for response to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v14, v8, v5}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    :catch_9c
    move-exception v2

    :try_start_9d
    new-instance v14, Lcom/android/server/NativeDaemonConnectorException;

    const-string v16, "problem sending command"

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_5c

    :cond_a7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RMV <- {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v14

    if-nez v14, :cond_72

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v14, v3, v12

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_104

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NDC Command {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "} took too long ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v3, v12

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    :cond_104
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v14

    if-eqz v14, :cond_110

    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {v14, v8, v5}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    :cond_110
    invoke-virtual {v5}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v14

    if-eqz v14, :cond_11c

    new-instance v14, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v14, v8, v5}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v14

    :cond_11c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/android/server/NativeDaemonEvent;

    return-object v14
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    const v0, 0xea60

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_5
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "Unhandled event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return v5

    :catch_23
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error handling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public monitor()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    monitor-exit v1

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public run()V
    .registers 4

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    :goto_f
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_f

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_f
.end method
