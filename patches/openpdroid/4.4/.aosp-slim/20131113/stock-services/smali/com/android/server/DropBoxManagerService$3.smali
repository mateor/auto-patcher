.class Lcom/android/server/DropBoxManagerService$3;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    # getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_LOGS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_16
    return-void
.end method
