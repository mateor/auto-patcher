.class Lcom/android/server/CommonTimeManagementService$2;
.super Landroid/content/BroadcastReceiver;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CommonTimeManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/CommonTimeManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$2;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$2;->this$0:Lcom/android/server/CommonTimeManagementService;

    # invokes: Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$000(Lcom/android/server/CommonTimeManagementService;)V

    return-void
.end method
