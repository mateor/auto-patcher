.class final Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mNumWindow:I

.field final mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .registers 12
    .param p1    # Lcom/android/server/wm/WindowManagerService;
    .param p2    # Lcom/android/internal/view/IInputMethodClient;
    .param p3    # Lcom/android/internal/view/IInputContext;

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    iput v5, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    iput-boolean v5, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    iput-object p3, p0, Lcom/android/server/wm/Session;->mInputContext:Lcom/android/internal/view/IInputContext;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/Session;->mPid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_95

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_49
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_59
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v5, :cond_73

    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v5, :cond_73

    const-string v5, "input_method"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    :cond_73
    monitor-exit v6
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_b2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_78
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_b5

    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v6, p0, Lcom/android/server/wm/Session;->mUid:I

    iget v7, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v5, p2, p3, v6, v7}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    :goto_89
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_91} :catch_ba
    .catchall {:try_start_78 .. :try_end_91} :catchall_cc

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_94
    return-void

    :cond_95
    const-string v5, ":u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x61

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_49

    :catchall_b2
    move-exception v5

    :try_start_b3
    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v5

    :cond_b5
    const/4 v5, 0x0

    :try_start_b6
    invoke-interface {p2, v5}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_b9} :catch_ba
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_cc

    goto :goto_89

    :catch_ba
    move-exception v1

    :try_start_bb
    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_c8

    iget-object v5, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v5, p2}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_c8} :catch_d1
    .catchall {:try_start_bb .. :try_end_c8} :catchall_cc

    :cond_c8
    :goto_c8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_94

    :catchall_cc
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_d1
    move-exception v5

    goto :goto_c8
.end method


# virtual methods
.method public add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 15
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Landroid/view/WindowManager$LayoutParams;
    .param p4    # I
    .param p5    # Landroid/graphics/Rect;
    .param p6    # Landroid/view/InputChannel;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/Session;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 17
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Landroid/view/WindowManager$LayoutParams;
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/graphics/Rect;
    .param p7    # Landroid/view/InputChannel;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I
    .registers 16
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Landroid/view/WindowManager$LayoutParams;
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .registers 13
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Landroid/view/WindowManager$LayoutParams;
    .param p4    # I
    .param p5    # Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Session;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_29

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_14
    iget-object v0, p0, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v0

    :catch_29
    move-exception v0

    goto :goto_f
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2
    .param p1    # Landroid/view/IWindow;

    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2
    .param p1    # Landroid/view/IWindow;

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 3
    .param p1    # Landroid/view/IWindow;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .param p1    # Landroid/view/IWindow;
    .param p2    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p1    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    return-object v0
.end method

.method killSessionLocked()V
    .registers 5

    iget v1, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_1b

    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1c

    :goto_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Z

    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_18

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    :try_start_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    throw v0
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3
    .param p1    # Landroid/view/IWindow;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result v0

    return v0
.end method

.method public performDeferredDestroy(Landroid/view/IWindow;)V
    .registers 3
    .param p1    # Landroid/view/IWindow;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    .registers 15
    .param p1    # Landroid/view/IWindow;
    .param p2    # Landroid/os/IBinder;
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # Landroid/content/ClipData;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v3, :cond_1d

    const-string v3, "WindowManager"

    const-string v5, "No drag prepared"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "performDrag() without prepareDrag()"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1a
    move-exception v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v3

    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v3, v3, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-eq p2, v3, :cond_34

    const-string v3, "WindowManager"

    const-string v5, "Performing mismatched drag"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "performDrag() does not match prepareDrag()"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_34
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p1, v6}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_59

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit v4

    :goto_58
    return v3

    :cond_59
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)V

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v6, v6, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v3, "WindowManager"

    const-string v5, "Unable to transfer touch focus"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->unregister()V

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_58

    :cond_ab
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object p7, v3, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput p3, v3, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput p4, v3, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3, p3, p4}, Lcom/android/server/wm/DragState;->broadcastDragStartedLw(FF)V

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput p5, v3, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput p6, v3, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v3, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_d9
    .catchall {:try_start_1d .. :try_end_d9} :catchall_1a

    sub-float v3, p3, p5

    sub-float v5, p4, p6

    :try_start_dd
    invoke-virtual {v2, v3, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    const v3, 0x3f350481

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V
    :try_end_fb
    .catchall {:try_start_dd .. :try_end_fb} :catchall_102

    :try_start_fb
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v4

    const/4 v3, 0x1

    goto/16 :goto_58

    :catchall_102
    move-exception v3

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3
    :try_end_107
    .catchall {:try_start_fb .. :try_end_107} :catchall_1a
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .registers 10
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Z

    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_22

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1d

    move-result v2

    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 13
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 31
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Landroid/view/WindowManager$LayoutParams;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Landroid/graphics/Rect;
    .param p9    # Landroid/graphics/Rect;
    .param p10    # Landroid/graphics/Rect;
    .param p11    # Landroid/graphics/Rect;
    .param p12    # Landroid/content/res/Configuration;
    .param p13    # Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v16

    return v16
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .param p1    # Landroid/view/IWindow;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 11
    .param p1    # Landroid/view/IWindow;
    .param p2    # Z

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_4c

    move-result-wide v1

    :try_start_d
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v4, :cond_1f

    const-string v4, "WindowManager"

    const-string v6, "Drop result given but no drag in progress"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_47

    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_4c

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-eq v4, v3, :cond_4f

    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid drop-result claim by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "reportDropResult() by non-recipient"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v4

    :try_start_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw v4

    :cond_4f
    :try_start_4f
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x15

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p1, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_83

    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad result-reporting window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_4f .. :try_end_7e} :catchall_47

    :try_start_7e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_4c

    goto :goto_1e

    :cond_83
    :try_start_83
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_47

    :try_start_90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_4c

    goto :goto_1e
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 19
    .param p1    # Landroid/os/IBinder;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/os/Bundle;
    .param p7    # Z

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_29

    move-result-wide v8

    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_24

    move-result-object v0

    :try_start_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    return-object v0

    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_29
    move-exception v0

    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1    # Landroid/view/IWindow;
    .param p2    # I
    .param p3    # Landroid/graphics/Rect;
    .param p4    # Landroid/graphics/Rect;
    .param p5    # Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .param p1    # Landroid/view/IWindow;
    .param p2    # Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void
.end method

.method public setUniverseTransform(Landroid/os/IBinder;FFFFFFF)V
    .registers 21
    .param p1    # Landroid/os/IBinder;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2b

    move-result-wide v9

    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService;->setUniverseTransformLocked(Lcom/android/server/wm/WindowState;FFFFFFF)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_26

    :try_start_21
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11

    return-void

    :catchall_26
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_2b
    move-exception v0

    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 15
    .param p1    # Landroid/os/IBinder;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_23

    move-result-wide v6

    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    :try_start_19
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8

    return-void

    :catchall_1e
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_23
    move-exception v0

    monitor-exit v8
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method windowAddedLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_12

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    return-void
.end method

.method windowRemovedLocked()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    return-void
.end method
