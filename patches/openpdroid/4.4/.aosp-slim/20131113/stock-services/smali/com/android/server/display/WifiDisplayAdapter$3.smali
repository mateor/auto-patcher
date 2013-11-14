.class Lcom/android/server/display/WifiDisplayAdapter$3;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$3;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
