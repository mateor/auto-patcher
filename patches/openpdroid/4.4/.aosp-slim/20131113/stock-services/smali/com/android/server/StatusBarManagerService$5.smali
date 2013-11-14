.class Lcom/android/server/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->setHardKeyboardEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$5;->this$0:Lcom/android/server/StatusBarManagerService;

    iput-boolean p2, p0, Lcom/android/server/StatusBarManagerService$5;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$5;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/StatusBarManagerService$5;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setHardKeyboardEnabled(Z)V

    return-void
.end method
