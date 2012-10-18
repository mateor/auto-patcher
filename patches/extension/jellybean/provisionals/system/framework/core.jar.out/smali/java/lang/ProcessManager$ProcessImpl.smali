.class Ljava/lang/ProcessManager$ProcessImpl;
.super Ljava/lang/Process;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessImpl"
.end annotation


# instance fields
.field private final errorStream:Ljava/io/InputStream;

.field private exitValue:Ljava/lang/Integer;

.field private final exitValueMutex:Ljava/lang/Object;

.field private fakeProcess:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final pid:I


# direct methods
.method constructor <init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->fakeProcess:Z

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    iput p1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p4, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p2, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/ProcessManager$ProcessOutputStream;

    invoke-direct {v0, p3, v1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method constructor <init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->fakeProcess:Z

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    iput p1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p4, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    if-eqz p5, :cond_2a

    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p2, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    :goto_22
    new-instance v0, Ljava/lang/ProcessManager$ProcessOutputStream;

    invoke-direct {v0, p3, v1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/PrivacyInputStream;

    invoke-direct {v0}, Ljava/lang/PrivacyInputStream;-><init>()V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->fakeProcess:Z

    goto :goto_22
.end method

.method static synthetic access$300(Ljava/lang/ProcessManager$ProcessImpl;)I
    .registers 2

    iget v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 6

    iget-object v2, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->fakeProcess:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3f

    if-eqz v1, :cond_14

    :cond_b
    :try_start_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    sget v4, Llibcore/io/OsConstants;->SIGKILL:I

    invoke-interface {v1, v3, v4}, Llibcore/io/Os;->kill(II)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_3f
    .catch Llibcore/io/ErrnoException; {:try_start_b .. :try_end_14} :catch_25

    :cond_14
    :goto_14
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_3f

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_25
    move-exception v0

    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy process "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public exitValue()I
    .registers 5

    iget-boolean v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->fakeProcess:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessManager$ProcessImpl;->setExitValue(I)V

    :cond_8
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process has not yet terminated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method setExitValue(I)V
    .registers 4

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitFor()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    return v0
.end method
