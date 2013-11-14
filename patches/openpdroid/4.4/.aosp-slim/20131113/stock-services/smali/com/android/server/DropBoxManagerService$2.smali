.class Lcom/android/server/DropBoxManagerService$2;
.super Landroid/database/ContentObserver;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    # getter for: Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$400(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$2;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
