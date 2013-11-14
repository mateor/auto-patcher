.class final Lcom/android/server/wm/DisplayMagnifier;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/DisplayMagnifier$WindowStateInfo;,
        Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z

.field private static final DEBUG_RECTANGLE_REQUESTED:Z

.field private static final DEBUG_ROTATION:Z

.field private static final DEBUG_VIEWPORT_WINDOW:Z

.field private static final DEBUG_WINDOW_TRANSITIONS:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Landroid/view/IMagnificationCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DisplayMagnifier;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IMagnificationCallbacks;)V
    .registers 5
    .param p1    # Lcom/android/server/wm/WindowManagerService;
    .param p2    # Landroid/view/IMagnificationCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;

    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/DisplayMagnifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/DisplayMagnifier;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayMagnifier;)Landroid/content/Context;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayMagnifier;)Landroid/os/Handler;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/view/IMagnificationCallbacks;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Rect;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayMagnifier;)Landroid/graphics/Region;
    .registers 2
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayMagnifier;)J
    .registers 3
    .param p0    # Lcom/android/server/wm/DisplayMagnifier;

    iget-wide v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mLongAnimationDuration:J

    return-wide v0
.end method


# virtual methods
.method public destroyLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked()V

    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 7
    .param p1    # Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->isTopLevelWindow(I)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_29

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_29

    move-object v1, v3

    :cond_28
    :goto_28
    return-object v1

    :cond_29
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v4}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v4

    if-nez v4, :cond_28

    move-object v1, v3

    goto :goto_28
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    sparse-switch p2, :sswitch_data_14

    :cond_b
    :goto_b
    return-void

    :sswitch_c
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    nop

    :sswitch_data_14
    .sparse-switch
        0x1006 -> :sswitch_c
        0x1008 -> :sswitch_c
        0x100a -> :sswitch_c
        0x100d -> :sswitch_c
        0x100e -> :sswitch_c
        0x200c -> :sswitch_c
    .end sparse-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1    # Lcom/android/server/wm/DisplayContent;
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 12
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # I

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v1

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch p2, :pswitch_data_3e

    :cond_d
    :goto_d
    :pswitch_d
    return-void

    :pswitch_e
    if-eqz v1, :cond_d

    sparse-switch v3, :sswitch_data_48

    goto :goto_d

    :sswitch_14
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_d

    :try_start_2d
    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier;->mCallbacks:Landroid/view/IMagnificationCallbacks;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/IMagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_d

    :catch_3b
    move-exception v4

    goto :goto_d

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :sswitch_data_48
    .sparse-switch
        0x2 -> :sswitch_14
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_14
        0x3ea -> :sswitch_14
        0x3eb -> :sswitch_14
        0x7d1 -> :sswitch_14
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_14
        0x7d5 -> :sswitch_14
        0x7d6 -> :sswitch_14
        0x7d7 -> :sswitch_14
        0x7d8 -> :sswitch_14
        0x7d9 -> :sswitch_14
        0x7da -> :sswitch_14
        0x7e4 -> :sswitch_14
        0x7e8 -> :sswitch_14
        0x7ec -> :sswitch_14
    .end sparse-switch
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1    # Landroid/view/MagnificationSpec;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method
