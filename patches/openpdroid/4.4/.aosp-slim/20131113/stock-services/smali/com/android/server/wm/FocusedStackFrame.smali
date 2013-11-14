.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field private static final THICKNESS:I = 0xa


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mLastBounds:Landroid/graphics/Rect;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpDrawRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .registers 11
    .param p1    # Landroid/view/Display;
    .param p2    # Landroid/view/SurfaceSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    :try_start_20
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_2c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_20 .. :try_end_2c} :catch_41

    :try_start_2c
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_3e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2c .. :try_end_3e} :catch_44

    :goto_3e
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void

    :catch_41
    move-exception v1

    move-object v0, v7

    goto :goto_3e

    :catch_44
    move-exception v1

    goto :goto_3e
.end method

.method private draw(Landroid/graphics/Rect;I)V
    .registers 11
    .param p1    # Landroid/graphics/Rect;
    .param p2    # I

    const/16 v7, 0xa

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_10} :catch_68
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_9 .. :try_end_10} :catch_66

    move-result-object v0

    :goto_11
    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v6, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v6, v7, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, -0xa

    add-int/lit8 v5, v1, -0xa

    invoke-virtual {v3, v4, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v6, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mTmpDrawRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_13

    :catch_66
    move-exception v3

    goto :goto_11

    :catch_68
    move-exception v3

    goto :goto_11
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .registers 5
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method


# virtual methods
.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayer(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method

.method public setVisibility(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FocusedStackFrame;->draw(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FocusedStackFrame;->draw(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_4

    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_4
.end method
