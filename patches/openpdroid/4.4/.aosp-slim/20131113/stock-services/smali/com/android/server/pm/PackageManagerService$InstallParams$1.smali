.class Lcom/android/server/pm/PackageManagerService$InstallParams$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->val$verificationId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
