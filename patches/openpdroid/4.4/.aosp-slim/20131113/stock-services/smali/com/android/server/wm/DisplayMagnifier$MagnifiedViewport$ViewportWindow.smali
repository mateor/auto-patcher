.class final Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewportWindow"
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field private static final SURFACE_TITLE:Ljava/lang/String; = "Magnification Overlay"


# instance fields
.field private mAlpha:I

.field private final mBounds:Landroid/graphics/Region;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private mInvalidated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field private mShown:Z

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V
    .registers 16
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    const/4 v11, 0x0

    :try_start_22
    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "Magnification Overlay"

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_4e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_22 .. :try_end_4e} :catch_e3

    :goto_4e
    iput-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7eb

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010390

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v12, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mBorderWidth:I
    invoke-static {p1}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1100(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000

    invoke-direct {v8, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v9, v1

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_e8

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    return-void

    :catch_e3
    move-exception v1

    move-object v0, v11

    goto/16 :goto_4e

    nop

    :array_e8
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public drawIfNeeded()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v2, v2, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_b
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    if-nez v2, :cond_11

    monitor-exit v3

    :goto_10
    return-void

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_43

    const/4 v0, 0x0

    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I
    invoke-static {v4}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I
    invoke-static {v5}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1200(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_3e} :catch_76
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15 .. :try_end_3e} :catch_74
    .catchall {:try_start_15 .. :try_end_3e} :catchall_43

    move-result-object v0

    :goto_3f
    if-nez v0, :cond_46

    :try_start_41
    monitor-exit v3

    goto :goto_10

    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw v2

    :cond_46
    const/4 v2, 0x0

    :try_start_47
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    if-lez v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    :goto_6c
    monitor-exit v3

    goto :goto_10

    :cond_6e
    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V
    :try_end_73
    .catchall {:try_start_47 .. :try_end_73} :catchall_43

    goto :goto_6c

    :catch_74
    move-exception v2

    goto :goto_3f

    :catch_76
    move-exception v2

    goto :goto_3f
.end method

.method public getAlpha()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3
    .param p1    # Landroid/graphics/Rect;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mInvalidated:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_7
.end method

.method public releaseSurface()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    iget v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    if-ne v0, p1, :cond_11

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    iput p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAlpha:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_10

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setBounds(Landroid/graphics/Region;)V
    .registers 4
    .param p1    # Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit v1

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_14

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v0
.end method

.method public setShown(ZZ)V
    .registers 5
    .param p1    # Z
    .param p2    # Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    if-ne v0, p1, :cond_11

    monitor-exit v1

    :goto_10
    return-void

    :cond_11
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_22
    monitor-exit v1

    goto :goto_10

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    if-eqz p1, :cond_2f

    :try_start_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_22

    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_22

    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_42

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    goto :goto_22

    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_24

    goto :goto_22
.end method

.method public updateSize()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    iget-object v0, v0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/DisplayMagnifier;

    # getter for: Lcom/android/server/wm/DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier;->access$500(Lcom/android/server/wm/DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$1000(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;

    # getter for: Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;->access$900(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v0
.end method
