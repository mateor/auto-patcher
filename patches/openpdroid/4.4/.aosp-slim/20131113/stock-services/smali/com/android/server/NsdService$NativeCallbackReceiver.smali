.class Lcom/android/server/NsdService$NativeCallbackReceiver;
.super Ljava/lang/Object;
.source "NsdService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    new-instance v0, Lcom/android/server/NsdService$NativeEvent;

    iget-object v1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/NsdService$NativeEvent;-><init>(Lcom/android/server/NsdService;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;
    invoke-static {v1}, Lcom/android/server/NsdService;->access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    move-result-object v1

    const v2, 0x6001a

    invoke-virtual {v1, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method
