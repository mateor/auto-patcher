.class final Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformLongPressDelayed"
.end annotation


# instance fields
.field private mEvent:Landroid/view/MotionEvent;

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .registers 3
    .param p1    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2    # Lcom/android/server/accessibility/TouchExplorer$1;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    return-void
.end method

.method private isPending()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    :cond_10
    return-void
.end method

.method public post(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 12

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$2200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-nez v8, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v4

    if-nez v4, :cond_82

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    :cond_49
    :goto_49
    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I
    invoke-static {v8, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v1

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2402(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v2

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2502(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2600(Lcom/android/server/accessibility/TouchExplorer;I)V

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/4 v9, 0x4

    # setter for: Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I
    invoke-static {v8, v9}, Lcom/android/server/accessibility/TouchExplorer;->access$2702(Lcom/android/server/accessibility/TouchExplorer;I)I

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mEvent:Landroid/view/MotionEvent;

    iget v10, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->mPolicyFlags:I

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    invoke-static {v8, v9, v10}, Lcom/android/server/accessibility/TouchExplorer;->access$2800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->clear()V

    goto :goto_10

    :cond_82
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v2, v8

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v9}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v9

    if-ne v8, v9, :cond_49

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_49

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v8}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_49

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    goto/16 :goto_49
.end method
