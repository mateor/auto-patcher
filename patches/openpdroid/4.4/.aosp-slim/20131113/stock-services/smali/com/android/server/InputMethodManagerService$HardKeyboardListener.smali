.class Lcom/android/server/InputMethodManagerService$HardKeyboardListener;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardKeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/InputMethodManagerService;
    .param p2    # Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public handleHardKeyboardStatusChange(ZZ)V
    .registers 6
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$700(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$800(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$700(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$800(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;

    move-result-object v0

    const v2, 0x10202b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_36

    const/4 v0, 0x0

    :goto_31
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_34
    monitor-exit v1

    return-void

    :cond_36
    const/16 v0, 0x8

    goto :goto_31

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public onHardKeyboardStatusChange(ZZ)V
    .registers 9
    .param p1    # Z
    .param p2    # Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xfa0

    if-eqz p1, :cond_19

    move v2, v0

    :goto_f
    if-eqz p2, :cond_1b

    :goto_11
    invoke-virtual {v4, v5, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_19
    move v2, v1

    goto :goto_f

    :cond_1b
    move v0, v1

    goto :goto_11
.end method
