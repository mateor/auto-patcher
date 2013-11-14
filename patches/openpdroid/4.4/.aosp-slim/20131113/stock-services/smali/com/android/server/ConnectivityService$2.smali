.class Lcom/android/server/ConnectivityService$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZ)V
    invoke-static {v1, v0, p2}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;IZ)V

    return-void
.end method
