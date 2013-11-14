.class Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mTapTimeout:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/high16 v1, 0x1100000

    invoke-static {p1, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/16 v2, 0x400

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v2, 0x200000

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    const/high16 v1, 0x447a0000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # I

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # I

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # I

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # I

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/TouchExplorer;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    return v0
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_62

    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_46
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void

    :pswitch_4e
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_7

    :pswitch_52
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_7

    :pswitch_58
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_7

    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_52
        :pswitch_7
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method private computeInjectionAction(II)I
    .registers 6
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_24

    :goto_4
    return p1

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_f

    const/4 p1, 0x0

    goto :goto_4

    :cond_f
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_4

    :sswitch_14
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move p1, v1

    goto :goto_4

    :cond_1e
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_4

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0    # I

    packed-switch p0, :pswitch_data_28

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const-string v0, "STATE_TOUCH_EXPLORING"

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "STATE_DRAGGING"

    goto :goto_1e

    :pswitch_22
    const-string v0, "STATE_DELEGATING"

    goto :goto_1e

    :pswitch_25
    const-string v0, "STATE_GESTURE_DETECTING"

    goto :goto_1e

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_3
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V
    .registers 16
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/high16 v10, 0x40400000

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_e2

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-direct {v10, v7, v8, v11, v12}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v9, v1, v10

    if-gez v9, :cond_45

    cmpl-float v9, v2, v10

    if-ltz v9, :cond_9

    :cond_45
    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    iput v8, p0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-direct {v10, v7, v8, v11, v12}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_58
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v9, 0x80000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v9, 0x200000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-direct {v10, v7, v8, v11, v12}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    new-instance v9, Landroid/gesture/GestureStroke;

    iget-object v10, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9, v3}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b2

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v9, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v11, 0x4000000000000000L

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_b2

    :try_start_a7
    iget-object v9, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_b2} :catch_c1

    :cond_b2
    :goto_b2
    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto/16 :goto_9

    :catch_c1
    move-exception v5

    const-string v9, "TouchExplorer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non numeric gesture id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :pswitch_dd
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_9

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_58
        :pswitch_25
        :pswitch_dd
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :goto_9
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void

    :pswitch_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_9

    :pswitch_2d
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_9

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_11
        :pswitch_19
        :pswitch_9
        :pswitch_2d
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 20
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v10, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_108

    :cond_e
    :goto_e
    :pswitch_e
    return-void

    :pswitch_f
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Dragging state can be reached only if two pointers are already down"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_17
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2d

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_2d
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_e

    :pswitch_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    packed-switch v13, :pswitch_data_11a

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_e

    :pswitch_4b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_99

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float v3, v7, v11

    sub-float v4, v8, v12

    float-to-double v13, v3

    float-to-double v15, v4

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v13, v13

    cmpl-double v13, v5, v13

    if-lez v13, :cond_8d

    const/high16 v13, 0x40000000

    div-float v13, v3, v13

    const/high16 v14, 0x40000000

    div-float v14, v4, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_8d
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_e

    :cond_99
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_e

    :pswitch_ad
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v9, v13, :cond_e

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_e

    :pswitch_ce
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v13, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v9, v13, :cond_fb

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_fb
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto/16 :goto_e

    :pswitch_102
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_e

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_f
        :pswitch_ce
        :pswitch_31
        :pswitch_102
        :pswitch_e
        :pswitch_17
        :pswitch_ad
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_4b
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 19
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # I

    iget-object v10, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_284

    :cond_19
    :goto_19
    :pswitch_19
    return-void

    :pswitch_1a
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    const/high16 v11, 0x100000

    invoke-direct {p0, v11}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v11

    if-eqz v11, :cond_47

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_47
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v11

    if-eqz v11, :cond_54

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_54
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v11

    if-eqz v11, :cond_66

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto :goto_19

    :cond_66
    iget-boolean v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-nez v11, :cond_19

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v11

    if-nez v11, :cond_83

    invoke-virtual {v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v7

    const/4 v11, 0x1

    shl-int v8, v11, v7

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v11, v0, v12, v8, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    :cond_83
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_19

    :pswitch_8b
    invoke-virtual {v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    const/4 v11, 0x1

    shl-int v8, v11, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    packed-switch v11, :pswitch_data_294

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v11

    if-eqz v11, :cond_227

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    :goto_b6
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_19

    :pswitch_c7
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v11

    if-eqz v11, :cond_164

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float v2, v11, v12

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float v3, v11, v12

    float-to-double v11, v2

    float-to-double v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v11, v11

    cmpl-double v11, v5, v11

    if-lez v11, :cond_19

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget-object v12, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    int-to-float v11, v11

    cmpl-float v11, v4, v11

    if-lez v11, :cond_14b

    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    const/high16 v11, 0x40000

    invoke-direct {p0, v11}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_19

    :cond_14b
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    const/4 v11, 0x7

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v11, v8, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_19

    :cond_164
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z
    invoke-static {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->access$500(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    move-result v11

    if-eqz v11, :cond_196

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float v2, v11, v12

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float v3, v11, v12

    float-to-double v11, v2

    float-to-double v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    int-to-double v11, v11

    cmpl-double v11, v5, v11

    if-lez v11, :cond_196

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    :cond_196
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v11

    if-nez v11, :cond_19

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    const/4 v11, 0x7

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v11, v8, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_19

    :pswitch_1ad
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v11

    if-eqz v11, :cond_1ec

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    :goto_1c4
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v11

    if-eqz v11, :cond_21c

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    iput v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v11, v8, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :goto_1e5
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_19

    :cond_1ec
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float v2, v11, v12

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float v3, v11, v12

    float-to-double v11, v2

    float-to-double v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v11, v11

    cmpg-double v11, v5, v11

    if-ltz v11, :cond_19

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_1c4

    :cond_21c
    const/4 v11, 0x4

    iput v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_1e5

    :cond_227
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_b6

    :pswitch_233
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v11, 0x1

    shl-int v8, v11, v7

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v11}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v11

    if-eqz v11, :cond_274

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    :goto_265
    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v11

    if-nez v11, :cond_19

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v11}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_19

    :cond_274
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_265

    :pswitch_27a
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_19

    nop

    :pswitch_data_284
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_233
        :pswitch_8b
        :pswitch_27a
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_294
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_1ad
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1    # Landroid/view/MotionEvent;

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    const v8, 0x3f067b80

    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private sendAccessibilityEvent(I)V
    .registers 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    sparse-switch p1, :sswitch_data_28

    :cond_1f
    :goto_1f
    return-void

    :sswitch_20
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_1f

    :sswitch_24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_1f

    :sswitch_data_28
    .sparse-switch
        0x200 -> :sswitch_20
        0x400 -> :sswitch_24
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    shl-int v1, v3, v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_22

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 6
    .param p1    # I

    const/16 v3, 0xa

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_21
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_24
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 28
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/16 v18, 0x0

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6e

    move-object/from16 v18, p1

    :goto_c
    if-nez p2, :cond_77

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    :goto_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v2, :cond_c0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    const/16 v19, 0x0

    :goto_35
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_85

    aget-object v2, v8, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v2, v9, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_6b

    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_6b
    add-int/lit8 v19, v19, 0x1

    goto :goto_35

    :cond_6e
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v18

    goto :goto_c

    :cond_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_17

    :cond_85
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000

    const/high16 v13, 0x3f800000

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_be

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    :cond_be
    move-object/from16 v18, v21

    :cond_c0
    const/high16 v2, 0x40000000

    or-int p4, p4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_d6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-interface {v2, v0, v3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_d6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_e8

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    :cond_e8
    return-void
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 6
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_1e
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_18

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_15

    :cond_23
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_13
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    const/16 v2, 0x100

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne v0, v2, :cond_1a

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-ne v0, v2, :cond_2e

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    :cond_2e
    sparse-switch v0, :sswitch_data_5e

    :goto_31
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_3a
    return-void

    :sswitch_3b
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$302(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_52
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_31

    :sswitch_56
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_31

    nop

    :sswitch_data_5e
    .sparse-switch
        0x20 -> :sswitch_3b
        0x80 -> :sswitch_56
        0x100 -> :sswitch_56
        0x8000 -> :sswitch_3b
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_36

    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_28
    return-void

    :pswitch_29
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_28

    :pswitch_2d
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_28

    :pswitch_31
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_28

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_a
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1    # Lcom/android/server/accessibility/EventStreamTransformation;

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "TouchExplorer"

    return-object v0
.end method
