.class Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;
.super Lcom/android/server/NativeDaemonConnectorException;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeDaemonFailureException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/NativeDaemonEvent;

    invoke-direct {p0, p1, p2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    return-void
.end method
