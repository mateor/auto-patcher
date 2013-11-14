.class Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingCmd"
.end annotation


# instance fields
.field public availableResponseCount:I

.field public final cmdNum:I

.field public final logCmd:Ljava/lang/String;

.field public responses:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/server/NativeDaemonEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    return-void
.end method
