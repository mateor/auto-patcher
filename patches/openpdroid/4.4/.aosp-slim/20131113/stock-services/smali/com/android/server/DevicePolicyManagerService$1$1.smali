.class Lcom/android/server/DevicePolicyManagerService$1$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DevicePolicyManagerService$1;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService$1;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/DevicePolicyManagerService$1;

    iput p2, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/DevicePolicyManagerService$1;

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/DevicePolicyManagerService$1;

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$1;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget v2, p0, Lcom/android/server/DevicePolicyManagerService$1$1;->val$userHandle:I

    invoke-virtual {v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    # invokes: Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    invoke-static {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method
