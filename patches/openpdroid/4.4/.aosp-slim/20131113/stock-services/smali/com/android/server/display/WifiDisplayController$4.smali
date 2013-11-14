.class Lcom/android/server/display/WifiDisplayController$4;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$featureState:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$4;->val$featureState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$4;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$4;->val$featureState:I

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onFeatureStateChanged(I)V

    return-void
.end method
