.class final Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private mTapCount:I

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .registers 3
    .param p1    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2    # Lcom/android/server/accessibility/ScreenMagnifier$1;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)V
    .registers 1
    .param p0    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    return-object v0
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # I

    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-nez v2, :cond_b

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    :goto_d
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_18

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    goto :goto_d

    :cond_18
    # setter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2302(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    goto :goto_a
.end method

.method private clearDelayedMotionEvents()V
    .registers 3

    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_10
    return-void
.end method

.method private clearLastDownEvent()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    :cond_c
    return-void
.end method

.method private clearLastTapUpEvent()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    :cond_c
    return-void
.end method

.method private clearTapDetectionState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    return-void
.end method

.method private obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;
    .registers 23
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2400(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    invoke-static {v6, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2500(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    const/16 v18, 0x0

    :goto_16
    move/from16 v0, v18

    if-ge v0, v7, :cond_2f

    aget-object v6, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v6, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_16

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    add-long v2, v10, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    add-long v4, v10, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000

    const/high16 v13, 0x3f800000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    goto :goto_24
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v1

    # setter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1602(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    return-void
.end method

.method private sendDelayedMotionEvents()V
    .registers 10

    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    if-eqz v5, :cond_31

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->access$2300(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    sub-long v2, v5, v7

    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->obtainEventWithOffsetTimeAndDownTime(Landroid/view/MotionEvent;J)Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iget v6, v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/accessibility/ScreenMagnifier;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->recycle()V

    goto :goto_0

    :cond_31
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->sendDelayedMotionEvents()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearTapDetectionState()V

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearDelayedMotionEvents()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 15
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # I

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_130

    :cond_e
    :goto_e
    :pswitch_e
    return-void

    :pswitch_f
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_e

    :cond_2e
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v8, :cond_64

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-eqz v4, :cond_64

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastDownEvent()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_e

    :cond_64
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v10, :cond_5a

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5a

    :pswitch_7b
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v5, 0x4

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v4, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    goto/16 :goto_e

    :cond_92
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_e

    :pswitch_97
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ge v4, v8, :cond_e

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2100(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_e

    :pswitch_b9
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_dd

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_e

    :cond_dd
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2200(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2100(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_f6

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_e

    :cond_f6
    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_113

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I
    invoke-static {v6}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)I

    move-result v6

    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_113

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_e

    :cond_113
    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    iget v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mTapCount:I

    if-ne v4, v10, :cond_125

    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    goto/16 :goto_e

    :cond_125
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clearLastTapUpEvent()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_e

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b9
        :pswitch_97
        :pswitch_e
        :pswitch_e
        :pswitch_7b
    .end packed-switch
.end method
