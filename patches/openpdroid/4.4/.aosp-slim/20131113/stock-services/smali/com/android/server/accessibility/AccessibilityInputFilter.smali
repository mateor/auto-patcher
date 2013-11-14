.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTouchDeviceId:I

.field private mEnabledFeatures:I

.field private mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

.field private mFilterKeyEvents:Z

.field private mHoverEventSequenceStarted:Z

.field private mInstalled:Z

.field private mKeyEventSequenceStarted:Z

.field private mMotionEventSequenceStarted:Z

.field private final mPm:Landroid/os/PowerManager;

.field private final mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

.field private mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$1;-><init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V
    .registers 3
    .param p0    # Lcom/android/server/accessibility/AccessibilityInputFilter;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .registers 1
    .param p0    # Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    return-void
.end method

.method private batchMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-nez v1, :cond_e

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_d
.end method

.method private enableFeatures()V
    .registers 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accessibility/ScreenMagnifier;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_1d
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/TouchExplorer;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_3e
    :goto_3e
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    :cond_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    goto :goto_3e
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1a
    return-void
.end method

.method private onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 4
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/high16 v0, 0x40000000

    and-int/2addr v0, p2

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_7

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    goto :goto_7
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/high16 v1, 0x40000000

    and-int/2addr v1, p2

    if-nez v1, :cond_1c

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_9

    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    if-eq v1, v0, :cond_2f

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_2f
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCurrentTouchDeviceId:I

    if-gez v1, :cond_37

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_9

    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_43

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_9

    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    if-nez v1, :cond_55

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    :cond_55
    :goto_55
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->batchMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_9

    :cond_59
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    if-nez v1, :cond_55

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    goto :goto_55
.end method

.method private processBatchedEvents(J)V
    .registers 8
    .param p1    # J

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    :goto_3
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    if-eqz v2, :cond_17

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_3

    :cond_a
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->policyFlags:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    move-object v1, v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->previous:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->recycle()V

    :cond_17
    if-nez v0, :cond_1c

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    :goto_1b
    return-void

    :cond_1c
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_a

    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;->next:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    goto :goto_1b
.end method

.method private scheduleProcessBatchedEvents()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mProcessBatchedEventsRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method disableFeatures()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->onDestroy()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mScreenMagnifier:Lcom/android/server/accessibility/ScreenMagnifier;

    :cond_22
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyEventSequenceStarted:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventSequenceStarted:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mHoverEventSequenceStarted:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mFilterKeyEvents:Z

    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_9
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .param p1    # Landroid/view/InputEvent;
    .param p2    # I

    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_13

    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    :goto_12
    return-void

    :cond_13
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_26

    const/16 v2, 0x101

    invoke-virtual {p1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-direct {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto :goto_12

    :cond_26
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_12
.end method

.method public onInstalled()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # I

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onUninstalled()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    return-void
.end method

.method setEnabledFeatures(I)V
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    :cond_c
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    goto :goto_4
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1    # Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
