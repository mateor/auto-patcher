.class public final Lcom/android/server/wm/FakeWindowImpl;
.super Ljava/lang/Object;
.source "FakeWindowImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$FakeWindow;


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mTouchFullscreen:Z

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)V
    .registers 16
    .param p1    # Lcom/android/server/wm/WindowManagerService;
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/view/InputEventReceiver$Factory;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Z
    .param p9    # Z
    .param p10    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p4}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-interface {p3, v1, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    new-instance v1, Lcom/android/server/input/InputApplicationHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object p4, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v1, Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p4, v1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    invoke-direct {p0, p5}, Lcom/android/server/wm/FakeWindowImpl;->getLayerLw(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p6, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p7, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsPrivateFlags:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p5, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-wide v2, 0x12a05f200L

    iput-wide v2, v1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p8, v1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p9, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v1, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v2, 0x3f800000

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iput-boolean p10, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    return-void
.end method

.method private getLayerLw(I)I
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :cond_25
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method

.method layout(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mTouchFullscreen:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    :goto_c
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_c
.end method
