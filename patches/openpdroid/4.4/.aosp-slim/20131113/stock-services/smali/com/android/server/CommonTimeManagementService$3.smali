.class Lcom/android/server/CommonTimeManagementService$3;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"

# interfaces
.implements Landroid/os/CommonTimeConfig$OnServerDiedListener;


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

    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$3;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$3;->this$0:Lcom/android/server/CommonTimeManagementService;

    # invokes: Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$100(Lcom/android/server/CommonTimeManagementService;)V

    return-void
.end method
