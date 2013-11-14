.class Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;
.super Lcom/android/server/NativeDaemonConnectorException;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeDaemonArgumentException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/NativeDaemonEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    return-void
.end method


# virtual methods
.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
