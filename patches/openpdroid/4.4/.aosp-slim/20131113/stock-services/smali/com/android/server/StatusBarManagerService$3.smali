.class Lcom/android/server/StatusBarManagerService$3;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$backDisposition:I

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;Landroid/os/IBinder;II)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$3;->this$0:Lcom/android/server/StatusBarManagerService;

    iput-object p2, p0, Lcom/android/server/StatusBarManagerService$3;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/StatusBarManagerService$3;->val$vis:I

    iput p4, p0, Lcom/android/server/StatusBarManagerService$3;->val$backDisposition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$3;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_13

    :try_start_6
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$3;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget-object v1, p0, Lcom/android/server/StatusBarManagerService$3;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/StatusBarManagerService$3;->val$vis:I

    iget v3, p0, Lcom/android/server/StatusBarManagerService$3;->val$backDisposition:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method
