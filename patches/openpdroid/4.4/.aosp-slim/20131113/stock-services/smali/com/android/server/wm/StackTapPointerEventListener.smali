.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private final mMotionSlop:I

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowManagerService;
    .param p2    # Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x3e000000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1    # Landroid/view/MotionEvent;

    const-wide/16 v9, 0x12c

    const/4 v8, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_ae

    :cond_c
    :goto_c
    :pswitch_c
    return-void

    :pswitch_d
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    goto :goto_c

    :pswitch_21
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    if-ltz v4, :cond_c

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-gtz v4, :cond_54

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_54

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    :cond_54
    iput v8, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    goto :goto_c

    :pswitch_57
    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v1, v4, 0x8

    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_c

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-gez v4, :cond_a9

    int-to-float v4, v2

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a9

    int-to-float v4, v3

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a9

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_a9

    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x1f

    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_a9
    iput v8, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    goto/16 :goto_c

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_d
        :pswitch_57
        :pswitch_21
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_57
    .end packed-switch
.end method
