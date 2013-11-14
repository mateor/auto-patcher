.class Lcom/android/server/wm/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ViewServer$ViewServerWorker;
    }
.end annotation


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 3
    .param p1    # Lcom/android/server/wm/WindowManagerService;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput p2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    return-void
.end method

.method static synthetic access$000(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/net/Socket;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0    # Lcom/android/server/wm/ViewServer;

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 9
    .param p0    # Ljava/net/Socket;
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_28
    .catchall {:try_start_1 .. :try_end_11} :catchall_33

    :try_start_11
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_3f
    .catchall {:try_start_11 .. :try_end_1c} :catchall_3c

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_24

    move-object v2, v3

    :cond_23
    :goto_23
    return v4

    :catch_24
    move-exception v1

    const/4 v4, 0x0

    move-object v2, v3

    goto :goto_23

    :catch_28
    move-exception v1

    :goto_29
    const/4 v4, 0x0

    if-eqz v2, :cond_23

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_23

    :catch_30
    move-exception v1

    const/4 v4, 0x0

    goto :goto_23

    :catchall_33
    move-exception v5

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    throw v5

    :catch_3a
    move-exception v1

    goto :goto_39

    :catchall_3c
    move-exception v5

    move-object v2, v3

    goto :goto_34

    :catch_3f
    move-exception v1

    move-object v2, v3

    goto :goto_29

    :cond_42
    move-object v2, v3

    goto :goto_23
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public run()V
    .registers 5

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_2f

    :try_start_8
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/wm/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;-><init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_0

    :catch_1d
    move-exception v1

    const-string v2, "ViewServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_1d

    goto :goto_0

    :catch_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_1d

    goto :goto_0

    :cond_2f
    return-void
.end method

.method start()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method stop()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_13

    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_13} :catch_21

    :cond_13
    :goto_13
    iput-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    iput-object v3, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_2a

    const/4 v1, 0x1

    :goto_20
    return v1

    :catch_21
    move-exception v0

    const-string v1, "ViewServer"

    const-string v2, "Could not stop all view server threads"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catch_2a
    move-exception v0

    const-string v1, "ViewServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v1, 0x0

    goto :goto_20
.end method
