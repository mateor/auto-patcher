.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2    # Landroid/view/InputChannel;
    .param p3    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 11
    .param p1    # Landroid/view/InputEvent;

    const/4 v3, 0x0

    :try_start_1
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_37

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_37

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_74

    :goto_27
    :pswitch_27
    if-eqz v2, :cond_36

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_4c
    .catchall {:try_start_1 .. :try_end_2e} :catchall_6a

    :try_start_2e
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->endDragLw()V

    monitor-exit v8
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_71

    :cond_36
    const/4 v3, 0x1

    :cond_37
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_3a
    return-void

    :pswitch_3b
    :try_start_3b
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_4c
    .catchall {:try_start_3b .. :try_end_40} :catchall_6a

    :try_start_40
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    monitor-exit v8

    goto :goto_27

    :catchall_49
    move-exception v7

    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v7
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_6a

    :catch_4c
    move-exception v1

    :try_start_4d
    const-string v7, "WindowManager"

    const-string v8, "Exception caught by drag handleMotion"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_6a

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_3a

    :pswitch_58
    :try_start_58
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_4c
    .catchall {:try_start_58 .. :try_end_5d} :catchall_6a

    :try_start_5d
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    monitor-exit v8

    goto :goto_27

    :catchall_67
    move-exception v7

    monitor-exit v8
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_67

    :try_start_69
    throw v7
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_4c
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v7

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7

    :pswitch_6f
    const/4 v2, 0x1

    goto :goto_27

    :catchall_71
    move-exception v7

    :try_start_72
    monitor-exit v8
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v7
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_74} :catch_4c
    .catchall {:try_start_73 .. :try_end_74} :catchall_6a

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_27
        :pswitch_58
        :pswitch_3b
        :pswitch_6f
    .end packed-switch
.end method
