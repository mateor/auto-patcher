.class Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .registers 4
    .param p2    # Ljava/net/Socket;

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .registers 7

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    const/4 v2, 0x0

    :try_start_a
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_93
    .catchall {:try_start_a .. :try_end_1a} :catchall_91

    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7b

    const/4 v1, 0x0

    const/4 v0, 0x0

    monitor-enter p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_32
    .catchall {:try_start_1a .. :try_end_23} :catchall_6a

    :goto_23
    :try_start_23
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v4, :cond_44

    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v4, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_23

    :catchall_2f
    move-exception v4

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_6a

    :catch_32
    move-exception v4

    move-object v2, v3

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_8d

    :cond_39
    :goto_39
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    :goto_42
    const/4 v4, 0x1

    return v4

    :cond_44
    :try_start_44
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v4, :cond_4c

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    const/4 v1, 0x1

    :cond_4c
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v4, :cond_54

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    const/4 v0, 0x1

    :cond_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_2f

    if-eqz v1, :cond_5f

    :try_start_57
    const-string v4, "LIST UPDATE\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    :cond_5f
    if-eqz v0, :cond_1a

    const-string v4, "FOCUS UPDATE\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_69} :catch_32
    .catchall {:try_start_57 .. :try_end_69} :catchall_6a

    goto :goto_1a

    :catchall_6a
    move-exception v4

    move-object v2, v3

    :goto_6c
    if-eqz v2, :cond_71

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_8f

    :cond_71
    :goto_71
    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    throw v4

    :cond_7b
    if-eqz v3, :cond_80

    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_8b

    :cond_80
    :goto_80
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    move-object v2, v3

    goto :goto_42

    :catch_8b
    move-exception v4

    goto :goto_80

    :catch_8d
    move-exception v4

    goto :goto_39

    :catch_8f
    move-exception v5

    goto :goto_71

    :catchall_91
    move-exception v4

    goto :goto_6c

    :catch_93
    move-exception v4

    goto :goto_34
.end method


# virtual methods
.method public focusChanged()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 12

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_ca
    .catchall {:try_start_1 .. :try_end_13} :catchall_ed

    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_5d

    move-object v0, v6

    const-string v5, ""

    :goto_23
    const-string v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    # invokes: Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    :goto_33
    if-nez v7, :cond_4d

    const-string v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An error occurred with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4d} :catch_10a
    .catchall {:try_start_13 .. :try_end_4d} :catchall_107

    :cond_4d
    if-eqz v3, :cond_52

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_bf

    :cond_52
    :goto_52
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_10d

    :try_start_56
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5b} :catch_c4

    move-object v2, v3

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const/4 v8, 0x0

    :try_start_5e
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_23

    :cond_69
    const-string v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    # invokes: Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    goto :goto_33

    :cond_7a
    const-string v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8f

    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v7

    goto :goto_33

    :cond_8f
    const-string v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a4

    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    goto :goto_33

    :cond_a4
    const-string v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b1

    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    goto :goto_33

    :cond_b1
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    # getter for: Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_bc} :catch_10a
    .catchall {:try_start_5e .. :try_end_bc} :catchall_107

    move-result v7

    goto/16 :goto_33

    :catch_bf
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    :catch_c4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_5c

    :catch_ca
    move-exception v1

    :goto_cb
    :try_start_cb
    const-string v8, "ViewServer"

    const-string v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_ed

    if-eqz v2, :cond_d7

    :try_start_d4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_e8

    :cond_d7
    :goto_d7
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_5c

    :try_start_db
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e0} :catch_e2

    goto/16 :goto_5c

    :catch_e2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5c

    :catch_e8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d7

    :catchall_ed
    move-exception v8

    :goto_ee
    if-eqz v2, :cond_f3

    :try_start_f0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_fd

    :cond_f3
    :goto_f3
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_fc

    :try_start_f7
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fc} :catch_102

    :cond_fc
    :goto_fc
    throw v8

    :catch_fd
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f3

    :catch_102
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fc

    :catchall_107
    move-exception v8

    move-object v2, v3

    goto :goto_ee

    :catch_10a
    move-exception v1

    move-object v2, v3

    goto :goto_cb

    :cond_10d
    move-object v2, v3

    goto/16 :goto_5c
.end method

.method public windowsChanged()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
