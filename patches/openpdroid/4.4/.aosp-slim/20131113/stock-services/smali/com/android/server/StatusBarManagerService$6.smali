.class Lcom/android/server/StatusBarManagerService$6;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->onHardKeyboardStatusChange(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$available:Z

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$6;->this$0:Lcom/android/server/StatusBarManagerService;

    iput-boolean p2, p0, Lcom/android/server/StatusBarManagerService$6;->val$available:Z

    iput-boolean p3, p0, Lcom/android/server/StatusBarManagerService$6;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$6;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_11

    :try_start_6
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$6;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget-boolean v1, p0, Lcom/android/server/StatusBarManagerService$6;->val$available:Z

    iget-boolean v2, p0, Lcom/android/server/StatusBarManagerService$6;->val$enabled:Z

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->setHardKeyboardStatus(ZZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
