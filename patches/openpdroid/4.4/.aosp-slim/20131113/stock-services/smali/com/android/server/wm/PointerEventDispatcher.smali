.class public Lcom/android/server/wm/PointerEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "PointerEventDispatcher.java"


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$PointerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;)V
    .registers 3
    .param p1    # Landroid/view/InputChannel;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/WindowManagerPolicy$PointerEventListener;

    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 10
    .param p1    # Landroid/view/InputEvent;

    const/4 v7, 0x0

    :try_start_1
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_40

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_40

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    iget-object v5, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3b

    :try_start_14
    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/WindowManagerPolicy$PointerEventListener;

    iput-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_38

    const/4 v1, 0x0

    :goto_2d
    :try_start_2d
    array-length v4, v2

    if-ge v1, v4, :cond_40

    aget-object v4, v2, v1

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v4

    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/PointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v4

    :cond_40
    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/PointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method public registerInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .registers 6
    .param p1    # Landroid/view/WindowManagerPolicy$PointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventListener: trying to register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " twice."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2a

    return-void
.end method

.method public unregisterInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .registers 6
    .param p1    # Landroid/view/WindowManagerPolicy$PointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_2a

    return-void
.end method
