.class public Lcom/android/server/NativeDaemonConnectorException;
.super Ljava/lang/Exception;
.source "NativeDaemonConnectorException.java"


# instance fields
.field private mCmd:Ljava/lang/String;

.field private mEvent:Lcom/android/server/NativeDaemonEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/NativeDaemonEvent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' failed with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnectorException;->mEvent:Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v0

    return v0
.end method

.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/android/server/NativeDaemonConnectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
