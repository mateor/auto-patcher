.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;,
        Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;,
        Lcom/android/server/wm/WindowManagerService$LayoutFields;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_FOCUS_LIGHT:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_LAYOUT_REPEATS:Z = true

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STACK:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_SURFACE_TRACE:Z = false

.field static final DEBUG_TASK_MOVEMENT:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WALLPAPER_LIGHT:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEBUG_WINDOW_TRACE:Z = false

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field private static final DENSITY_OVERRIDE:Ljava/lang/String; = "ro.config.density_override"

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_FOCUSED_STACK:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SIZE_OVERRIDE:Ljava/lang/String; = "ro.config.size_override"

.field public static final STACK_WEIGHT_MAX:F = 0.8f

.field public static final STACK_WEIGHT_MIN:F = 0.2f

.field static final STARTING_WINDOW_TIMEOUT_DURATION:I = 0x2710

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_FREEZE_TIMEOUT_DURATION:I = 0x7d0

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field final mAllowBootMessages:Z

.field mAltOrientation:Z

.field mAnimationScheduled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAnimatorDurationScale:F

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field mAppsFreezingScreen:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mChoreographer:Landroid/view/Choreographer;

.field mClientFreezingScreen:Z

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentUserId:I

.field mDeferredRotationPauseCount:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayContents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayEnabled:Z

.field mDisplayFreezeTime:J

.field mDisplayFrozen:Z

.field mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDisplayReady:Z

.field final mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

.field mDragState:Lcom/android/server/wm/DragState;

.field mEnterAnimId:I

.field private mEventDispatchingEnabled:Z

.field mExitAnimId:I

.field final mFakeWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/FakeWindowImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mFocusedStackFrame:Lcom/android/server/wm/FocusedStackFrame;

.field mFocusedStackLayer:I

.field mForceDisplayEnabled:Z

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field final mFxSession:Landroid/view/SurfaceSession;

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field private final mHeadless:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field final mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field mIsTouchDevice:Z

.field private final mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

.field mLastANRState:Ljava/lang/String;

.field mLastDisplayFreezeDuration:I

.field mLastFinishedFreezeSource:Ljava/lang/Object;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field private mLayoutRepeatCount:I

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mOnlyCore:Z

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/power/PowerManagerService;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field final mRelayoutWhileAnimating:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field private final mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field final mScreenRect:Landroid/graphics/Rect;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStackIdToStack:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field mSystemDecorLayer:I

.field mTaskIdToTask:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpContentRect:Landroid/graphics/Rect;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTraversalScheduled:Z

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/os/IRemoteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationScale:F

.field private final mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V
    .registers 20
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/power/PowerManagerService;
    .param p3    # Lcom/android/server/display/DisplayManagerService;
    .param p4    # Lcom/android/server/input/InputManagerService;
    .param p5    # Z
    .param p6    # Z
    .param p7    # Z

    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    new-instance v8, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    const/16 v8, 0x14

    new-array v8, v8, [Lcom/android/server/wm/WindowState;

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    const/16 v8, 0x14

    new-array v8, v8, [Lcom/android/server/wm/WindowState;

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    const/16 v8, 0x9

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    new-instance v8, Landroid/util/SparseArray;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v8, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v8, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/high16 v8, -0x40800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/high16 v8, -0x40800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/high16 v8, -0x40800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/high16 v8, -0x40800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/high16 v8, 0x3f800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    const/high16 v8, 0x3f800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    const/high16 v8, 0x3f800000

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v8, Lcom/android/server/wm/WindowManagerService$LayoutFields;

    invoke-direct {v8, p0}, Lcom/android/server/wm/WindowManagerService$LayoutFields;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    new-instance v8, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v8, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p3}, Lcom/android/server/display/DisplayManagerService;->isHeadless()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mHeadless:Z

    new-instance v8, Lcom/android/server/wm/DisplaySettings;

    invoke-direct {v8, p1}, Lcom/android/server/wm/DisplaySettings;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplaySettings;->readSettingsLocked()V

    new-instance v8, Lcom/android/server/wm/PointerEventDispatcher;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v10, "WindowManager"

    invoke-virtual {v9, v10}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    new-instance v8, Landroid/view/SurfaceSession;

    invoke-direct {v8}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v8, "display"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p0, v9}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    move-object v1, v3

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1e7
    if-ge v5, v6, :cond_1f1

    aget-object v2, v1, v5

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->createDisplayContentLocked(Landroid/view/Display;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e7

    :cond_1f1
    new-instance v8, Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v8, v9, v10}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v9, "SCREEN_FROZEN"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v8, Lcom/android/server/wm/AppTransition;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v8, p1, v9}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v8, "appops"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x18

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v11, p0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "window_animation_scale"

    iget v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v8

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "transition_animation_scale"

    iget v10, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v8

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "animator_duration_scale"

    iget v10, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v8, 0x2000000a

    const-string v9, "WindowManager"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v8, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v8, p0}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->initPolicy(Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_2ad
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V

    new-instance v8, Lcom/android/server/wm/FocusedStackFrame;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v8, v9, v10}, Lcom/android/server/wm/FocusedStackFrame;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackFrame:Lcom/android/server/wm/FocusedStackFrame;
    :try_end_2c1
    .catchall {:try_start_2ad .. :try_end_2c1} :catchall_2c5

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void

    :catchall_2c5
    move-exception v8

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v8
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/wm/WindowManagerService$1;)V
    .registers 9
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/power/PowerManagerService;
    .param p3    # Lcom/android/server/display/DisplayManagerService;
    .param p4    # Lcom/android/server/input/InputManagerService;
    .param p5    # Z
    .param p6    # Z
    .param p7    # Z
    .param p8    # Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayChangedLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0    # Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 3
    .param p0    # Lcom/android/server/wm/WindowManagerService;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAddedLocked(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 2
    .param p0    # Lcom/android/server/wm/WindowManagerService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V

    return-void
.end method

.method private addAppWindowToListLocked(Lcom/android/server/wm/WindowState;)I
    .registers 33
    .param p1    # Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService;->getTokenWindowsOnDisplay(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowList;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowList;->size()I

    move-result v27

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_c9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_62

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Lcom/android/server/wm/WindowManagerService;->indexOfWinInWindowList(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowList;)I

    move-result v22

    :goto_5f
    move/from16 v23, v22

    :goto_61
    return v23

    :cond_62
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    add-int/lit8 v29, v27, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_92

    iget-object v0, v6, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-ne v11, v0, :cond_92

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v11, v1}, Lcom/android/server/wm/WindowManagerService;->indexOfWinInWindowList(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowList;)I

    move-result v22

    goto :goto_5f

    :cond_92
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v14

    add-int/lit8 v29, v14, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    if-gez v14, :cond_ae

    const/16 v22, 0x0

    :goto_a5
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto :goto_5f

    :cond_ae
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->indexOfWinInWindowList(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowList;)I

    move-result v29

    add-int/lit8 v22, v29, 0x1

    goto :goto_a5

    :cond_c9
    const/4 v15, 0x0

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v17, v29, -0x1

    :goto_d6
    if-ltz v17, :cond_120

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/Task;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v29

    add-int/lit8 v20, v29, -0x1

    :goto_ee
    if-ltz v20, :cond_11e

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_162

    add-int/lit8 v20, v20, -0x1

    if-gez v20, :cond_11e

    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_11e

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/Task;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v29

    add-int/lit8 v20, v29, -0x1

    :cond_11e
    if-ltz v20, :cond_188

    :cond_120
    if-eqz v15, :cond_18e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    if-eqz v6, :cond_157

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/WindowManagerService;->getTokenWindowsOnDisplay(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-lez v4, :cond_157

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget v0, v7, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v29, v0

    if-gez v29, :cond_157

    move-object v15, v7

    :cond_157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    move/from16 v23, v22

    goto/16 :goto_61

    :cond_162
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService;->getTokenWindowsOnDisplay(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowList;

    move-result-object v21

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    move/from16 v29, v0

    if-nez v29, :cond_184

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowList;->size()I

    move-result v29

    if-lez v29, :cond_184

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    :cond_184
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_ee

    :cond_188
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_d6

    :cond_18c
    add-int/lit8 v17, v17, -0x1

    :cond_18e
    if-ltz v17, :cond_1c8

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/Task;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v24, v0

    :goto_1a0
    if-ltz v20, :cond_1c6

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService;->getTokenWindowsOnDisplay(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-lez v5, :cond_20b

    add-int/lit8 v29, v5, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    :cond_1c6
    if-ltz v20, :cond_18c

    :cond_1c8
    if-eqz v15, :cond_20e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    if-eqz v6, :cond_200

    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-lez v4, :cond_200

    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v29, v0

    add-int/lit8 v30, v4, -0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v29, v0

    if-ltz v29, :cond_200

    move-object/from16 v15, v25

    :cond_200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    move/from16 v23, v22

    goto/16 :goto_61

    :cond_20b
    add-int/lit8 v20, v20, -0x1

    goto :goto_1a0

    :cond_20e
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v10, 0x0

    :goto_213
    if-ge v10, v3, :cond_227

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v0, v13, :cond_23a

    :cond_227
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    move/from16 v23, v22

    goto/16 :goto_61

    :cond_23a
    add-int/lit8 v10, v10, 0x1

    goto :goto_213
.end method

.method private addAttachedWindowToListLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 15
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Z

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v6, v2}, Lcom/android/server/wm/WindowManagerService;->getTokenWindowsOnDisplay(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    iget v5, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/high16 v4, -0x80000000

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_33

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget v9, v8, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lt v9, v4, :cond_22

    move v4, v9

    move-object v10, v8

    :cond_22
    if-gez v5, :cond_42

    if-lt v9, v5, :cond_4f

    if-eqz p2, :cond_2d

    iget-object v11, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v3, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    :cond_2d
    if-ltz v9, :cond_30

    move-object v8, v1

    :cond_30
    invoke-direct {p0, v8, p1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    :cond_33
    :goto_33
    if-lt v3, v0, :cond_41

    if-eqz p2, :cond_3c

    iget-object v11, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    :cond_3c
    if-gez v5, :cond_52

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    if-le v9, v5, :cond_4f

    if-eqz p2, :cond_4b

    iget-object v11, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v3, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    :cond_4b
    invoke-direct {p0, v8, p1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_33

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_52
    if-ltz v4, :cond_58

    :goto_54
    invoke-direct {p0, v10, p1}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_41

    :cond_58
    move-object v10, v1

    goto :goto_54
.end method

.method private addFreeWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_c
    if-ltz v0, :cond_18

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-gt v3, v1, :cond_21

    :cond_18
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_24

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->addAppWindowToListLocked(Lcom/android/server/wm/WindowState;)I

    move-result v1

    :goto_f
    if-eqz p2, :cond_16

    iget-object v2, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    :cond_16
    :goto_16
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_23

    if-eqz p2, :cond_23

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    :cond_23
    return-void

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->addFreeWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_f

    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->addAttachedWindowToListLocked(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_16
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;III)V
    .registers 8
    .param p1    # Landroid/view/DisplayInfo;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p3, p4, p2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v1, v2, :cond_c

    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    :cond_c
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v1, v2, :cond_12

    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p3, p4, p2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v0

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v0, v2, :cond_1e

    iput v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    :cond_1e
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v0, v2, :cond_24

    iput v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    :cond_24
    return-void
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .registers 13
    .param p1    # Lcom/android/server/wm/AppWindowToken;
    .param p2    # Landroid/view/WindowManager$LayoutParams;
    .param p3    # I
    .param p4    # Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v7

    iget v4, v7, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, v7, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_1e

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;II)V

    :cond_1e
    :goto_1e
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    goto :goto_1e

    :cond_2c
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private final assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    .registers 14
    .param p1    # Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v0, :cond_86

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v5, 0x0

    iget v6, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v10, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v10, v2, :cond_23

    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v10, :cond_23

    if-lez v4, :cond_63

    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v10, :cond_63

    :cond_23
    add-int/lit8 v3, v3, 0x5

    iput v3, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    :goto_27
    iget v10, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    if-eq v10, v6, :cond_2d

    const/4 v5, 0x1

    const/4 v1, 0x1

    :cond_2d
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_69

    iget v10, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    add-int/2addr v10, v11

    iput v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :goto_40
    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v10, :cond_7a

    iget v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v10, v11

    iput v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_4b
    :goto_4b
    iget v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v10, v6, :cond_51

    const/4 v5, 0x1

    const/4 v1, 0x1

    :cond_51
    if-eqz v5, :cond_60

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/server/wm/TaskStack;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_63
    iget v3, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v2, v3

    iput v3, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_27

    :cond_69
    if-eqz v9, :cond_75

    iget v10, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v11, v9, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    add-int/2addr v10, v11

    iput v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_40

    :cond_75
    iget v10, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_40

    :cond_7a
    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v10, :cond_4b

    iget v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v10, v11

    iput v10, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_4b

    :cond_86
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v10, :cond_a3

    if-eqz v1, :cond_a3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    if-nez v10, :cond_a3

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayMagnifier;->onWindowLayersChangedLocked()V

    :cond_a3
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0    # Lcom/android/server/wm/WindowState;

    const v2, 0x20008

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .registers 17
    .param p1    # Z
    .param p2    # Landroid/util/DisplayMetrics;
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_2d

    move/from16 v4, p4

    move v5, p3

    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, v3

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    return v7

    :cond_2d
    move v4, p3

    move/from16 v5, p4

    goto :goto_c
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    :cond_18
    :goto_18
    return-object v3

    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_33

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_33
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;)V
    .registers 20
    .param p1    # Landroid/view/DisplayInfo;
    .param p2    # Z
    .param p3    # I
    .param p4    # I
    .param p5    # F
    .param p6    # Landroid/content/res/Configuration;

    if-eqz p2, :cond_61

    move/from16 v5, p4

    move/from16 v6, p3

    :goto_6
    const/high16 v1, 0x40000000

    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    const/high16 v1, 0x40000000

    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    const/4 v1, 0x0

    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    const/4 v1, 0x0

    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;III)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v6, v5}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;III)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;III)V

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v6, v5}, Lcom/android/server/wm/WindowManagerService;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;III)V

    move-object/from16 v0, p6

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v2

    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    const/4 v9, 0x1

    move-object v7, p0

    move v8, v2

    move/from16 v10, p5

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    const/4 v3, 0x2

    move-object v1, p0

    move/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    const/4 v9, 0x3

    move-object v7, p0

    move v8, v2

    move/from16 v10, p5

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v2

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p5

    float-to-int v1, v1

    move-object/from16 v0, p6

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p6

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    return-void

    :cond_61
    move/from16 v5, p3

    move/from16 v6, p4

    goto :goto_6
.end method

.method private configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 9
    .param p1    # Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(Landroid/view/Display;III)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget v2, v6, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v3, v6, Landroid/view/DisplayInfo;->overscanTop:I

    iget v4, v6, Landroid/view/DisplayInfo;->overscanRight:I

    iget v5, v6, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->setDisplayOverscan(Landroid/view/Display;IIII)V

    return-void
.end method

.method private createTask(IIILcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/Task;
    .registers 10
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_24

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToken: invalid stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    new-instance v1, Lcom/android/server/wm/Task;

    invoke-direct {v1, p4, v0, p3}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/TaskStack;I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)Z

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    return-object v1
.end method

.method private displayReady(I)V
    .registers 12
    .param p1    # I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_49

    :try_start_11
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    :cond_20
    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit v5
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_46

    :cond_44
    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_49

    return-void

    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v3

    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method private findAppWindowInsertionPointLocked(Lcom/android/server/wm/AppWindowToken;)I
    .registers 24
    .param p1    # Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    if-nez v9, :cond_3f

    const-string v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "findAppWindowInsertionPointLocked: no Task for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " taskId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    :goto_3e
    return v19

    :cond_3f
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-nez v4, :cond_64

    const-string v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "findAppWindowInsertionPointLocked: no DisplayContent for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_3e

    :cond_64
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    :goto_77
    if-ltz v12, :cond_122

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    if-nez v5, :cond_8c

    iget v0, v10, Lcom/android/server/wm/Task;->taskId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v11, :cond_8c

    :cond_89
    add-int/lit8 v12, v12, -0x1

    goto :goto_77

    :cond_8c
    iget-object v15, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v19

    add-int/lit8 v14, v19, -0x1

    :goto_94
    if-ltz v14, :cond_89

    invoke-virtual {v15, v14}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_a5

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_a5

    const/4 v5, 0x1

    :cond_a5
    if-eqz v5, :cond_af

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b2

    :cond_af
    add-int/lit8 v14, v14, -0x1

    goto :goto_94

    :cond_b2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowList;->size()I

    move-result v19

    add-int/lit8 v6, v19, -0x1

    :goto_be
    if-ltz v6, :cond_af

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowList;->size()I

    move-result v19

    add-int/lit8 v7, v19, -0x1

    :goto_da
    if-ltz v7, :cond_108

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget v0, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v19, v0

    if-ltz v19, :cond_105

    add-int/lit8 v8, v2, -0x1

    :goto_f2
    if-ltz v8, :cond_105

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v3, :cond_102

    add-int/lit8 v19, v8, 0x1

    goto/16 :goto_3e

    :cond_102
    add-int/lit8 v8, v8, -0x1

    goto :goto_f2

    :cond_105
    add-int/lit8 v7, v7, -0x1

    goto :goto_da

    :cond_108
    add-int/lit8 v8, v2, -0x1

    :goto_10a
    if-ltz v8, :cond_11f

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_11c

    add-int/lit8 v19, v8, 0x1

    goto/16 :goto_3e

    :cond_11c
    add-int/lit8 v8, v8, -0x1

    goto :goto_10a

    :cond_11f
    add-int/lit8 v6, v6, -0x1

    goto :goto_be

    :cond_122
    add-int/lit8 v8, v2, -0x1

    :goto_124
    if-ltz v8, :cond_13d

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13a

    add-int/lit8 v19, v8, 0x1

    goto/16 :goto_3e

    :cond_13a
    add-int/lit8 v8, v8, -0x1

    goto :goto_124

    :cond_13d
    const/16 v19, 0x0

    goto/16 :goto_3e
.end method

.method private findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;
    .registers 14
    .param p1    # Lcom/android/server/wm/DisplayContent;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_b
    if-ltz v0, :cond_68

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_22

    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v9, :cond_1f

    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v9, :cond_22

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_22
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v9

    if-eqz v9, :cond_1f

    if-eqz v8, :cond_5b

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x3

    if-eq v9, v11, :cond_5b

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_5b

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_3f
    if-ltz v1, :cond_5b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v5, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_4f
    if-ltz v4, :cond_59

    invoke-virtual {v5, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    if-ne v8, v3, :cond_5c

    :cond_59
    if-ltz v4, :cond_65

    :cond_5b
    :goto_5b
    return-object v6

    :cond_5c
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v9, v3, :cond_62

    move-object v6, v10

    goto :goto_5b

    :cond_62
    add-int/lit8 v4, v4, -0x1

    goto :goto_4f

    :cond_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    :cond_68
    move-object v6, v10

    goto :goto_5b
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .registers 7
    .param p1    # Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_a
    if-ltz v0, :cond_1c

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v4, :cond_19

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 10
    .param p1    # I

    const/4 v6, -0x1

    if-ne p1, v6, :cond_8

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    :goto_7
    return-object v3

    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_b
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_3e

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v2, :cond_3b

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, p1, :cond_38

    monitor-exit v7

    goto :goto_7

    :catchall_35
    move-exception v6

    monitor-exit v7
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw v6

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3e
    :try_start_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_35

    const/4 v3, 0x0

    goto :goto_7
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method static fixScale(F)F
    .registers 2
    .param p0    # F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_b
    const/high16 v0, 0x41a00000

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a00000

    goto :goto_6
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 8
    .param p0    # [Ljava/lang/String;
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/util/DisplayMetrics;

    array-length v2, p0

    if-ge p1, v2, :cond_13

    aget-object v0, p0, p1

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    move-result v1

    :goto_11
    return v1

    :catch_12
    move-exception v2

    :cond_13
    if-nez p2, :cond_17

    move v1, p3

    goto :goto_11

    :cond_17
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    goto :goto_11
.end method

.method private handleAnimatingStoppedAndTransitionLocked()I
    .registers 12

    const/4 v10, 0x1

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->setIdle()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_34

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v3, :cond_31

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v10, v9, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    return v0
.end method

.method private handleDisplayAddedLocked(I)V
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->createDisplayContentLocked(Landroid/view/Display;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    :cond_e
    return-void
.end method

.method private handleDisplayChangedLocked(I)V
    .registers 3
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    :cond_9
    return-void
.end method

.method private handleDisplayRemovedLocked(I)V
    .registers 6
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->close()V

    if-nez p1, :cond_15

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    :goto_19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    goto :goto_19

    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    return-void
.end method

.method private handleFlagDimBehind(Lcom/android/server/wm/WindowState;II)V
    .registers 8
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # I
    .param p3    # I

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v3, :cond_24

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->setDimmingTag()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_24
    return-void
.end method

.method private handleNotObscuredLocked(Lcom/android/server/wm/WindowState;JII)V
    .registers 15
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # J
    .param p4    # I
    .param p5    # I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_b2

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;

    :cond_17
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v5

    if-nez v5, :cond_3c

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    :cond_3c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v5

    if-nez v5, :cond_61

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_61

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_61

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    :cond_61
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v5

    if-nez v5, :cond_88

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_88

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_88

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J

    :cond_88
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz v2, :cond_a2

    const/16 v5, 0x7d8

    if-eq v4, v5, :cond_9c

    const/16 v5, 0x7ec

    if-eq v4, v5, :cond_9c

    const/16 v5, 0x7d4

    if-eq v4, v5, :cond_9c

    const/16 v5, 0x7da

    if-ne v4, v5, :cond_a2

    :cond_9c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    :cond_a2
    if-eqz v2, :cond_b2

    const/16 v5, 0x7e7

    if-eq v4, v5, :cond_ac

    const/16 v5, 0x7d4

    if-ne v4, v5, :cond_ca

    :cond_ac
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I

    :cond_b2
    :goto_b2
    if-eqz v2, :cond_d9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_d9

    const/4 v3, 0x1

    :goto_bb
    if-eqz v3, :cond_c9

    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_c9

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    :cond_c9
    return-void

    :cond_ca
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)I

    move-result v5

    if-nez v5, :cond_b2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v6, 0x2

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I

    goto :goto_b2

    :cond_d9
    const/4 v3, 0x0

    goto :goto_bb
.end method

.method private indexOfWinInWindowList(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowList;)I
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_6
    if-ltz v0, :cond_24

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->indexOfWinInWindowList(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowList;)I

    move-result v2

    if-gez v2, :cond_10

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_24
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private initPolicy(Landroid/os/Handler;)V
    .registers 5
    .param p1    # Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isSystemSecure()Z
    .registers 4

    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 7
    .param p0    # Landroid/view/SurfaceControl;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2f

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void

    :cond_2f
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 6
    .param p0    # Lcom/android/server/wm/WindowState;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_25

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void

    :cond_25
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;
    .registers 17
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/server/power/PowerManagerService;
    .param p2    # Lcom/android/server/display/DisplayManagerService;
    .param p3    # Lcom/android/server/input/InputManagerService;
    .param p4    # Landroid/os/Handler;
    .param p5    # Z
    .param p6    # Z
    .param p7    # Z

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/WindowManagerService$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService$2;-><init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;ZZZ)V

    const-wide/16 v2, 0x0

    invoke-virtual {p4, v0, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method private needsLayout()Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_1a

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    :goto_16
    return v3

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private newDisplayContentLocked(Landroid/view/Display;)Lcom/android/server/wm/DisplayContent;
    .registers 8
    .param p1    # Landroid/view/Display;

    new-instance v0, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v5, v2, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/DisplaySettings;->getOverscanLocked(Ljava/lang/String;Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_21
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanTop:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanRight:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/view/DisplayInfo;->overscanBottom:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_49

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V

    if-nez v1, :cond_48

    new-instance v4, Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/StackTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_48
    return-object v0

    :catchall_49
    move-exception v4

    :try_start_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v4
.end method

.method private notifyFocusChanged()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    monitor-exit v4

    :cond_c
    return-void

    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    array-length v0, v2

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_c

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method private notifyWindowsChanged()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    monitor-exit v4

    :cond_c
    return-void

    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    array-length v0, v2

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_c

    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x6

    :cond_2
    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedLoop()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    add-int/lit8 v0, v0, -0x1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    if-eqz v1, :cond_15

    if-gtz v0, :cond_2

    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    return-void
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .registers 59
    .param p1    # Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v44

    const/16 v33, 0x0

    :goto_20
    move/from16 v0, v33

    move/from16 v1, v44

    if-ge v0, v1, :cond_71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    :goto_3c
    if-ltz v40, :cond_50

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    add-int/lit8 v40, v40, -0x1

    goto :goto_3c

    :cond_50
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    :goto_5a
    if-ltz v40, :cond_6e

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    add-int/lit8 v40, v40, -0x1

    goto :goto_5a

    :cond_6e
    add-int/lit8 v33, v33, 0x1

    goto :goto_20

    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/high16 v8, -0x40800000

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1302(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/high16 v8, -0x40800000

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1402(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const-wide/16 v8, -0x1

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J
    invoke-static {v2, v8, v9}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1502(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v24, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v22, v0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v2, :cond_ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    :cond_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v2, :cond_df

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    :cond_df
    const/16 v38, 0x0

    const/16 v33, 0x0

    :goto_e3
    move/from16 v0, v33

    move/from16 v1, v44

    if-ge v0, v1, :cond_542

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/DisplayContent;

    const/16 v50, 0x0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v54

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v30

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v34, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v31

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v31

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-nez v30, :cond_2f6

    const/16 v42, 0x1

    :goto_11b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_12e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I

    :cond_12e
    const/16 v46, 0x0

    :cond_130
    add-int/lit8 v46, v46, 0x1

    const/4 v2, 0x6

    move/from16 v0, v46

    if-le v0, v2, :cond_2fa

    const-string v2, "WindowManager"

    const-string v8, "Animation repeat aborted after too many iterations"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :goto_143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f1

    const/16 v47, 0x1

    :goto_162
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/WindowList;->size()I

    move-result v17

    add-int/lit8 v40, v17, -0x1

    :goto_168
    if-ltz v40, :cond_50b

    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v8

    if-eq v2, v8, :cond_4f5

    const/16 v45, 0x1

    :goto_182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    if-nez v2, :cond_19b

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;JII)V

    :cond_19b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->testDimmingTag()Z

    move-result v2

    if-nez v2, :cond_1aa

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7}, Lcom/android/server/wm/WindowManagerService;->handleFlagDimBehind(Lcom/android/server/wm/WindowState;II)V

    :cond_1aa
    if-eqz v42, :cond_1bd

    if-eqz v45, :cond_1bd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_1bd

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1bd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    :cond_1bd
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v53, v0

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_204

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v2

    if-eqz v2, :cond_204

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10a006d

    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v18

    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    move-object/from16 v0, v53

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    move-object/from16 v0, v53

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I
    :try_end_1f7
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_1f7} :catch_3c0
    .catchall {:try_start_bd .. :try_end_1f7} :catchall_506

    :try_start_1f7
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-interface {v2, v8, v9}, Landroid/view/IWindow;->moved(II)V
    :try_end_204
    .catch Landroid/os/RemoteException; {:try_start_1f7 .. :try_end_204} :catch_8f2
    .catch Ljava/lang/RuntimeException; {:try_start_1f7 .. :try_end_204} :catch_3c0
    .catchall {:try_start_1f7 .. :try_end_204} :catchall_506

    :cond_204
    :goto_204
    const/4 v2, 0x0

    :try_start_205
    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_2db

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked(J)Z

    move-result v20

    if-eqz v42, :cond_257

    if-eqz v20, :cond_257

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v2, v8, :cond_232

    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v29

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "dream and commitFinishDrawingLocked true"

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_232
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v2, v8

    if-eqz v2, :cond_257

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v29

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "wallpaper and commitFinishDrawingLocked true"

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_257
    move-object/from16 v0, v53

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2db

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_272

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_2db

    :cond_272
    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v0, v2

    move-wide/from16 v55, v0

    cmp-long v2, v8, v55

    if-eqz v2, :cond_298

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v8, v2

    move-object/from16 v0, v19

    iput-wide v8, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_298
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    if-nez v2, :cond_2a5

    move-object/from16 v0, v53

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_2db

    :cond_2a5
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_2db

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_2db

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, v2, :cond_4f9

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_2bf

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_2db

    :cond_2bf
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2db

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    const/16 v50, 0x1

    :cond_2db
    :goto_2db
    if-eqz v42, :cond_2ed

    if-eqz v47, :cond_2ed

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v3, v2, :cond_2ed

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_2ed

    const/16 v38, 0x1

    :cond_2ed
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateResizingWindows(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v40, v40, -0x1

    goto/16 :goto_168

    :cond_2f6
    const/16 v42, 0x0

    goto/16 :goto_11b

    :cond_2fa
    const-string v2, "On entry to LockedInner"

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_321

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_321

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    const/4 v2, 0x1

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_321
    if-eqz v42, :cond_342

    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_342

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_342

    const/4 v2, 0x1

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_342
    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_34f

    const/4 v2, 0x1

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_34f
    const/4 v2, 0x4

    move/from16 v0, v46

    if-ge v0, v2, :cond_3b8

    const/4 v2, 0x1

    move/from16 v0, v46

    if-ne v0, v2, :cond_3b6

    const/4 v2, 0x1

    :goto_35a
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2, v8}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    :goto_362
    const/4 v2, 0x0

    move-object/from16 v0, v29

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loop number "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    if-eqz v42, :cond_4e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v34

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    :goto_39a
    if-ltz v40, :cond_4cd

    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_3b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v8}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_3b3
    add-int/lit8 v40, v40, -0x1

    goto :goto_39a

    :cond_3b6
    const/4 v2, 0x0

    goto :goto_35a

    :cond_3b8
    const-string v2, "WindowManager"

    const-string v8, "Layout repeat skipped after too many iterations"

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bf
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_3bf} :catch_3c0
    .catchall {:try_start_205 .. :try_end_3bf} :catchall_506

    goto :goto_362

    :catch_3c0
    move-exception v35

    :try_start_3c1
    const-string v2, "WindowManager"

    const-string v8, "Unhandled exception in Window Manager"

    move-object/from16 v0, v35

    invoke-static {v2, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ca
    .catchall {:try_start_3c1 .. :try_end_3ca} :catchall_506

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_3cd
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_3f7

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "after handleAppTransitionReadyLocked"

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_3f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_421

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_421

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "after handleAnimStopAndXitionLock"

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    if-eqz v2, :cond_44e

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v2, :cond_44e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-nez v2, :cond_44e

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "after animateAwayWallpaperLocked"

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_44e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    if-eqz v2, :cond_472

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "WallpaperMayChange"

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_472
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v2, :cond_491

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v2

    if-eqz v2, :cond_491

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v2

    if-eqz v2, :cond_4ac

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "mLayoutNeeded"

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_4ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    :goto_4b6
    if-ltz v40, :cond_5e7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v52

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v2, :cond_558

    :goto_4ca
    add-int/lit8 v40, v40, -0x1

    goto :goto_4b6

    :cond_4cd
    :try_start_4cd
    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v8

    or-int/2addr v2, v8

    move-object/from16 v0, v29

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v2, "after finishPostLayoutPolicyLw"

    move-object/from16 v0, v29

    iget v8, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_4e9
    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v2, :cond_130

    goto/16 :goto_143

    :cond_4f1
    const/16 v47, 0x0

    goto/16 :goto_162

    :cond_4f5
    const/16 v45, 0x0

    goto/16 :goto_182

    :cond_4f9
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2db

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_504
    .catch Ljava/lang/RuntimeException; {:try_start_4cd .. :try_end_504} :catch_3c0
    .catchall {:try_start_4cd .. :try_end_504} :catchall_506

    goto/16 :goto_2db

    :catchall_506
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    :cond_50b
    :try_start_50b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)I

    move-result v2

    packed-switch v2, :pswitch_data_8f6

    const/16 v39, 0x0

    :goto_518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    const/4 v8, 0x1

    move/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/display/DisplayManagerService;->setDisplayHasContent(IZZ)V

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    if-eqz v50, :cond_538

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_538
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_e3

    :pswitch_53c
    move/from16 v39, v42

    goto :goto_518

    :pswitch_53f
    const/16 v39, 0x1

    goto :goto_518

    :cond_542
    if-eqz v38, :cond_54c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_54c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionFromWindowManager()V
    :try_end_553
    .catch Ljava/lang/RuntimeException; {:try_start_50b .. :try_end_553} :catch_3c0
    .catchall {:try_start_50b .. :try_end_553} :catchall_506

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_3cd

    :cond_558
    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v53, v0

    const/16 v28, 0x0

    :try_start_560
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setConfiguration(Landroid/content/res/Configuration;)V

    move-object/from16 v0, v52

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v52

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v52

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v52

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v52

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v53

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_5c6

    const/4 v15, 0x1

    :goto_589
    if-eqz v21, :cond_5c8

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    :goto_591
    move-object/from16 v0, v52

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v2, v2, Landroid/view/IWindow$Stub;

    if-eqz v2, :cond_5cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v8, Lcom/android/server/wm/WindowManagerService$7;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    :goto_5a7
    const/4 v2, 0x0

    move-object/from16 v0, v52

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, v52

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, v52

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, v53

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z
    :try_end_5bb
    .catch Landroid/os/RemoteException; {:try_start_560 .. :try_end_5bb} :catch_5cf

    :goto_5bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4ca

    :cond_5c6
    const/4 v15, 0x0

    goto :goto_589

    :cond_5c8
    const/16 v16, 0x0

    goto :goto_591

    :cond_5cb
    :try_start_5cb
    invoke-interface/range {v10 .. v16}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_5ce
    .catch Landroid/os/RemoteException; {:try_start_5cb .. :try_end_5ce} :catch_5cf

    goto :goto_5a7

    :catch_5cf
    move-exception v35

    const/4 v2, 0x0

    move-object/from16 v0, v52

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    move-wide/from16 v55, v0

    sub-long v8, v8, v55

    long-to-int v2, v8

    move-object/from16 v0, v52

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto :goto_5bb

    :cond_5e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_610

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v2, :cond_60d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_60d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_610
    const/16 v51, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_656

    :cond_61c
    add-int/lit8 v40, v40, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    move-object/from16 v0, v52

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v52

    if-ne v2, v0, :cond_63c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_63c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v52

    if-ne v0, v2, :cond_646

    const/16 v51, 0x1

    :cond_646
    move-object/from16 v0, v52

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    if-gtz v40, :cond_61c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_656
    const/16 v33, 0x0

    :goto_658
    move/from16 v0, v33

    move/from16 v1, v44

    if-ge v0, v1, :cond_70a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    :goto_676
    if-ltz v40, :cond_6a3

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v49

    iget-boolean v2, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_6a0

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v49

    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-ne v2, v8, :cond_6a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6a0
    add-int/lit8 v40, v40, -0x1

    goto :goto_676

    :cond_6a3
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v40, v2, -0x1

    :goto_6af
    if-ltz v40, :cond_706

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v49

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v2, :cond_703

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_703

    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    move-object/from16 v0, v49

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v0, v49

    iget v8, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/wm/Task;

    if-eqz v48, :cond_6fc

    invoke-virtual/range {v48 .. v49}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_6fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    move-object/from16 v0, v49

    iget v8, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->delete(I)V

    :cond_6fc
    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    :cond_703
    add-int/lit8 v40, v40, -0x1

    goto :goto_6af

    :cond_706
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_658

    :cond_70a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_743

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_743

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v43, v2, -0x1

    :goto_726
    if-ltz v43, :cond_73c

    :try_start_728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->doneAnimating()V
    :try_end_739
    .catch Landroid/os/RemoteException; {:try_start_728 .. :try_end_739} :catch_8ef

    :goto_739
    add-int/lit8 v43, v43, -0x1

    goto :goto_726

    :cond_73c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_743
    if-eqz v51, :cond_754

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_754
    const/16 v33, 0x0

    :goto_756
    move/from16 v0, v33

    move/from16 v1, v44

    if-ge v0, v1, :cond_776

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v2, :cond_773

    const/4 v2, 0x1

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_773
    add-int/lit8 v33, v33, 0x1

    goto :goto_756

    :cond_776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_7e6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_7ac

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/high16 v8, 0x3f800000

    cmpl-float v2, v2, v8

    if-lez v2, :cond_88e

    :cond_7ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManager(I)V

    :goto_7b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_7cf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v2

    const/high16 v8, 0x3f800000

    cmpl-float v2, v2, v8

    if-lez v2, :cond_8a5

    :cond_7cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/android/server/power/PowerManagerService;->setButtonBrightnessOverrideFromWindowManager(I)V

    :goto_7d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    :cond_7e6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    if-eqz v2, :cond_7fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/android/server/power/PowerManagerService;->wakeUp(J)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    :cond_7fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    if-eqz v2, :cond_818

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_8bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_818
    :goto_818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_833

    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-nez v2, :cond_833

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z

    move-result v2

    if-nez v2, :cond_833

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_8e5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v2, v2

    move/from16 v0, v17

    if-ge v2, v0, :cond_84e

    add-int/lit8 v2, v17, 0xa

    new-array v2, v2, [Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    :cond_84e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v32, Lcom/android/server/wm/DisplayContentList;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    const/16 v40, 0x0

    :goto_867
    move/from16 v0, v40

    move/from16 v1, v17

    if-ge v0, v1, :cond_8c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v3, v2, v40

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88b

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    :cond_88b
    add-int/lit8 v40, v40, 0x1

    goto :goto_867

    :cond_88e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService;->toBrightnessOverride(F)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_7b4

    :cond_8a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # getter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService;->toBrightnessOverride(F)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/server/power/PowerManagerService;->setButtonBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_7d7

    :cond_8bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2, v8}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    goto/16 :goto_818

    :cond_8c6
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DisplayContentList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_8ca
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e5

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    const/4 v2, 0x1

    move-object/from16 v0, v29

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_8ca

    :cond_8e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackFrame()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void

    :catch_8ef
    move-exception v2

    goto/16 :goto_739

    :catch_8f2
    move-exception v2

    goto/16 :goto_204

    nop

    :pswitch_data_8f6
    .packed-switch 0x1
        :pswitch_53c
        :pswitch_53f
    .end packed-switch
.end method

.method private final performLayoutAndPlaceSurfacesLockedLoop()V
    .registers 12

    const-wide/16 v9, 0x20

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v5, :cond_25

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v5, :cond_24

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v5, :cond_24

    const-string v5, "wmLayout"

    invoke-static {v9, v10, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const/4 v2, 0x0

    :try_start_36
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v5, :cond_82

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_3c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6c

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_6c
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    const-string v5, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    monitor-enter v3
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_7c} :catch_bc

    const-wide/16 v5, 0xfa

    :try_start_7e
    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_81
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_81} :catch_df
    .catchall {:try_start_7e .. :try_end_81} :catchall_b9

    :goto_81
    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_b9

    :cond_82
    :goto_82
    :try_start_82
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v5

    if-eqz v5, :cond_db

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_c5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :goto_9a
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v5, :cond_b4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_b4
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_b4} :catch_d0

    :cond_b4
    :goto_b4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_24

    :catchall_b9
    move-exception v5

    :try_start_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v5
    :try_end_bc
    .catch Ljava/lang/RuntimeException; {:try_start_bb .. :try_end_bc} :catch_bc

    :catch_bc
    move-exception v0

    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception while force removing for memory"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82

    :cond_c5
    :try_start_c5
    const-string v5, "WindowManager"

    const-string v6, "Performed 6 layouts in a row. Skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_cf} :catch_d0

    goto :goto_9a

    :catch_d0
    move-exception v0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b4

    :cond_db
    const/4 v5, 0x0

    :try_start_dc
    iput v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_de} :catch_d0

    goto :goto_9a

    :catch_df
    move-exception v5

    goto :goto_81
.end method

.method private final performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V
    .registers 26
    .param p1    # Lcom/android/server/wm/DisplayContent;
    .param p2    # Z
    .param p3    # Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    :goto_8
    return-void

    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v18

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    iget v10, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_2c
    if-ge v12, v5, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/FakeWindowImpl;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v8}, Lcom/android/server/wm/FakeWindowImpl;->layout(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    :cond_44
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v13, v10, v8, v1}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIII)V

    if-eqz v13, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v10, v8}, Landroid/graphics/Rect;->set(IIII)V

    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpContentRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setStackBoxSize(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, 0x1

    if-gez v14, :cond_a9

    const/4 v14, 0x0

    :cond_a9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    const/4 v7, 0x0

    const/4 v15, -0x1

    add-int/lit8 v12, v4, -0x1

    :goto_b1
    if-ltz v12, :cond_19a

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v19

    if-nez v19, :cond_db

    :cond_d5
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v19

    if-eqz v19, :cond_193

    :cond_db
    const/4 v11, 0x1

    :goto_dc
    if-eqz v11, :cond_11c

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11c

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    move/from16 v19, v0

    if-nez v19, :cond_11c

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_108

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v19

    if-nez v19, :cond_11c

    :cond_108
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16b

    :cond_11c
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    move/from16 v19, v0

    if-nez v19, :cond_196

    if-eqz p2, :cond_12e

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_12e
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_143

    const/4 v7, 0x1

    :cond_143
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->prelayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    :cond_16b
    :goto_16b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v19, v0

    if-nez v19, :cond_18f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18f

    if-nez v16, :cond_18f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    :cond_18f
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_b1

    :cond_193
    const/4 v11, 0x0

    goto/16 :goto_dc

    :cond_196
    if-gez v15, :cond_16b

    move v15, v12

    goto :goto_16b

    :cond_19a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_1c0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    :cond_1c0
    const/4 v6, 0x0

    move v12, v15

    :goto_1c2
    if-ltz v12, :cond_264

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24e

    if-eqz v6, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v19

    if-eqz v19, :cond_1f1

    :cond_1ee
    :goto_1ee
    add-int/lit8 v12, v12, -0x1

    goto :goto_1c2

    :cond_1f1
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_207

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v19, v0

    if-nez v19, :cond_217

    :cond_207
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    move/from16 v19, v0

    if-eqz v19, :cond_217

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1ee

    :cond_217
    if-eqz p2, :cond_221

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_221
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->prelayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    goto :goto_1ee

    :cond_24e
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1ee

    move v6, v7

    goto :goto_1ee

    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p3, :cond_27a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    goto/16 :goto_8
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2d

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeWindowBefore: Unable to find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2d
    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method private final reAddAppWindowsLocked(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/WindowToken;)I
    .registers 8
    .param p1    # Lcom/android/server/wm/DisplayContent;
    .param p2    # I
    .param p3    # Lcom/android/server/wm/WindowToken;

    iget-object v3, p3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    iget-object v3, p3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v3, p1, :cond_19

    invoke-direct {p0, p2, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return p2
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 10
    .param p1    # I
    .param p2    # Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_2f

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_25

    iget v5, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v5, :cond_25

    iput-boolean v6, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x1

    :cond_25
    iput-boolean v6, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2f
    if-nez v1, :cond_38

    iput-boolean v6, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    :cond_38
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1    # Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    :cond_17
    return-void
.end method

.method private readForcedDisplaySizeAndDensityLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 13
    .param p1    # Lcom/android/server/wm/DisplayContent;

    const/4 v10, 0x0

    const/16 v8, 0x2c

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "display_size_forced"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1d

    :cond_17
    const-string v6, "ro.config.size_override"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1d
    if-eqz v4, :cond_76

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_76

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_76

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ne v6, v3, :cond_76

    const/4 v6, 0x0

    :try_start_32
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p1, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_47} :catch_c2

    :try_start_47
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v6, v5, :cond_4f

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v6, v2, :cond_75

    :cond_4f
    const-string v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FORCED DISPLAY SIZE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :cond_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_47 .. :try_end_76} :catchall_bf

    :cond_76
    :goto_76
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "display_density_forced"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_90

    :cond_8a
    const-string v6, "ro.config.density_override"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_90
    if-eqz v1, :cond_be

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_be

    :try_start_98
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v7, p1, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_9f} :catch_c7

    :try_start_9f
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v6, v0, :cond_bd

    const-string v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FORCED DISPLAY DENSITY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_bd
    monitor-exit v7
    :try_end_be
    .catchall {:try_start_9f .. :try_end_be} :catchall_c4

    :cond_be
    :goto_be
    return-void

    :catchall_bf
    move-exception v6

    :try_start_c0
    monitor-exit v7
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw v6
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c2} :catch_c2

    :catch_c2
    move-exception v6

    goto :goto_76

    :catchall_c4
    move-exception v6

    :try_start_c5
    monitor-exit v7
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v6
    :try_end_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_c7} :catch_c7

    :catch_c7
    move-exception v6

    goto :goto_be
.end method

.method private rebuildAppWindowListLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 29
    .param p1    # Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_27

    add-int/lit8 v23, v4, 0xa

    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    :cond_27
    const/4 v6, 0x0

    :goto_28
    if-ge v6, v4, :cond_91

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5f

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    aput-object v19, v23, v9

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    :cond_5f
    add-int/lit8 v23, v6, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_8e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    const/16 v24, 0x7dd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8d

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    const/16 v24, 0x7e9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8e

    :cond_8d
    move v8, v6

    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_91
    add-int/lit8 v8, v8, 0x1

    move v6, v8

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_9d
    if-ge v7, v3, :cond_b2

    invoke-virtual {v5, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/WindowToken;)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    :cond_b2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_bb
    if-ge v14, v10, :cond_ed

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/Task;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    const/16 v16, 0x0

    :goto_cf
    move/from16 v0, v16

    if-ge v0, v11, :cond_ea

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/WindowToken;)I

    move-result v6

    add-int/lit8 v16, v16, 0x1

    goto :goto_cf

    :cond_ea
    add-int/lit8 v14, v14, 0x1

    goto :goto_bb

    :cond_ed
    sub-int/2addr v6, v8

    if-eq v6, v9, :cond_19b

    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Rebuild removed "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " windows but added "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/RuntimeException;

    const-string v26, "here"

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    :goto_122
    if-ge v6, v9, :cond_187

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    aget-object v21, v23, v6

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    move/from16 v23, v0

    if-eqz v23, :cond_184

    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    new-instance v12, Lcom/android/internal/util/FastPrintWriter;

    const/16 v23, 0x0

    const/16 v24, 0x400

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v13, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const-string v23, ""

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "This window was lost: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "WindowManager"

    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    :cond_184
    add-int/lit8 v6, v6, 0x1

    goto :goto_122

    :cond_187
    const-string v23, "WindowManager"

    const-string v24, "Current app token list:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->dumpAppTokensLocked()V

    const-string v23, "WindowManager"

    const-string v24, "Final window list:"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    :cond_19b
    return-void
.end method

.method private reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1    # Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V

    iput-boolean v4, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    if-eqz v0, :cond_39

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-direct {p0, v3, v3, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZII)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .registers 10
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/util/DisplayMetrics;
    .param p4    # I
    .param p5    # I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v1, v2

    if-eqz p1, :cond_24

    if-ge v1, p1, :cond_25

    :cond_24
    move p1, v1

    :cond_25
    return p1
.end method

.method private reduceConfigLayout(IIFII)I
    .registers 12
    .param p1    # I
    .param p2    # I
    .param p3    # F
    .param p4    # I
    .param p5    # I

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v0

    move v1, v4

    move v2, v0

    if-ge v1, v2, :cond_13

    move v3, v1

    move v1, v2

    move v2, v3

    :cond_13
    int-to-float v5, v1

    div-float/2addr v5, p3

    float-to-int v1, v5

    int-to-float v5, v2

    div-float/2addr v5, p3

    float-to-int v2, v5

    invoke-static {p1, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v5

    return v5
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 15
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_10
    if-ltz v2, :cond_44

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_44
    iput-boolean v9, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_4d

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    :cond_4d
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p2, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_74

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v6, p2, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    :cond_74
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_ef

    iput-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_8d
    :goto_8d
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_9d

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    :cond_9d
    iget-object v5, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-nez v5, :cond_b0

    iget-boolean v5, v3, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_fd

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    :goto_b0
    if-eqz v0, :cond_bb

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_102

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->removeStartingWindowTimeout(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v10, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    :cond_bb
    :goto_bb
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_121

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_d1
    :goto_d1
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_e8

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v9, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_e8

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_e8
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_7

    :cond_ef
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_8d

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_fd
    if-eqz v0, :cond_b0

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_b0

    :cond_102
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-nez v5, :cond_111

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_111

    iput-object v10, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_bb

    :cond_111
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ne v5, v9, :cond_bb

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_bb

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindow(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_bb

    :cond_121
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_d1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_d1
.end method

.method private sendScreenStatusToClientsLocked()V
    .registers 8

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService;->isScreenOn()Z

    move-result v3

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_33

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v2, :cond_30

    :try_start_22
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6, v3}, Landroid/view/IWindow;->dispatchScreenState(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_34

    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_33
    return-void

    :catch_34
    move-exception v6

    goto :goto_2d
.end method

.method private setAnimatorDurationScale(F)V
    .registers 2
    .param p1    # F

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    return-void
.end method

.method private setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1    # Lcom/android/server/wm/DisplayContent;
    .param p2    # I

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display density: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iput p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_22

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method private setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1    # Lcom/android/server/wm/DisplayContent;
    .param p2    # I
    .param p3    # I

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    iput p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput p3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2e

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .registers 13
    .param p1    # Lcom/android/server/wm/DisplayContent;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iput p2, v6, Landroid/view/DisplayInfo;->overscanLeft:I

    iput p3, v6, Landroid/view/DisplayInfo;->overscanTop:I

    iput p4, v6, Landroid/view/DisplayInfo;->overscanRight:I

    iput p5, v6, Landroid/view/DisplayInfo;->overscanBottom:I

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_24

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v1, v6, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplaySettings;->setOverscanLocked(Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplaySettings;->writeSettingsLocked()V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private showStrictModeViolation(II)V
    .registers 15
    .param p1    # I
    .param p2    # I

    if-eqz p1, :cond_3b

    const/4 v4, 0x1

    :goto_3
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    if-eqz v4, :cond_44

    const/4 v1, 0x0

    :try_start_9
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_40

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v3, :cond_38

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    if-ne v8, p2, :cond_3d

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_3d

    const/4 v1, 0x1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_40
    if-nez v1, :cond_44

    monitor-exit v9

    :goto_43
    return-void

    :cond_44
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_66

    :try_start_47
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v8, :cond_5c

    new-instance v8, Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v8, v10, v11}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    :cond_5c
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_69

    :try_start_61
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    monitor-exit v9

    goto :goto_43

    :catchall_66
    move-exception v8

    monitor-exit v9
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_66

    throw v8

    :catchall_69
    move-exception v8

    :try_start_6a
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v8
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_66
.end method

.method private startFreezingDisplayLocked(ZII)V
    .registers 11
    .param p1    # Z
    .param p2    # I
    .param p3    # I

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    iput-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v5, v5}, Landroid/view/WindowManagerPolicy;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->freeze()V

    :cond_39
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    :cond_50
    new-instance v0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isDefaultOrientationForced()Z

    move-result v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZ)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, v6, v0}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    goto :goto_5
.end method

.method private stopFreezingDisplayLocked()V
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Screen frozen for "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v2, :cond_58

    const-string v2, " due to "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_58
    const-string v2, "WindowManager"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v12}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    if-eqz v1, :cond_11d

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_11d

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-interface {v2, v3, v4, v14}, Landroid/view/WindowManagerPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v2

    if-nez v2, :cond_b0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v3, 0x2710

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceSession;JFIIII)Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :goto_cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    if-eqz v16, :cond_102

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v2

    or-int/2addr v10, v2

    :cond_102
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_10f
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v12, v1}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    const/16 v16, 0x1

    goto :goto_cf

    :cond_11d
    if-eqz v1, :cond_12a

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v12, v1}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    :cond_12a
    const/16 v16, 0x1

    goto :goto_cf
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .registers 9
    .param p1    # Lcom/android/server/wm/WindowToken;

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_3a

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    :goto_23
    if-lez v3, :cond_37

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_3a
    if-lez v0, :cond_3d

    :goto_3c
    return v5

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3c
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 9
    .param p1    # I
    .param p2    # Lcom/android/server/wm/WindowState;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_34

    if-ge v4, p1, :cond_e

    add-int/lit8 p1, p1, -0x1

    :cond_e
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    :cond_1a
    :goto_1a
    if-lez v0, :cond_34

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1a

    if-ge v1, p1, :cond_30

    add-int/lit8 p1, p1, -0x1

    :cond_30
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    :cond_34
    return p1
.end method

.method private toBrightnessOverride(F)I
    .registers 3
    .param p1    # F

    const/high16 v0, 0x437f0000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 13
    .param p1    # Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_42

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v6, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v2, :cond_3f

    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v8, :cond_3c

    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    if-lez v0, :cond_3c

    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-lt v8, v0, :cond_3c

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x20

    iget-object v10, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_42
    return-void
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .registers 15
    .param p1    # I
    .param p2    # Z

    const-wide/16 v10, 0x20

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v7, v3, :cond_6c

    const-string v7, "wmUpdateFocus"

    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eq p1, v6, :cond_26

    if-eq p1, v9, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_32

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v3

    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, v4, v3}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v1

    if-eqz v2, :cond_4e

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v4, v5, :cond_4e

    if-ne p1, v8, :cond_62

    invoke-direct {p0, v0, v6, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    and-int/lit8 v1, v1, -0x2

    :cond_4e
    :goto_4e
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_59

    iput-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-ne p1, v8, :cond_59

    invoke-direct {p0, v0, v6, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    :cond_59
    if-eq p1, v6, :cond_5e

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    :cond_5e
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :goto_61
    return v6

    :cond_62
    if-ne p1, v9, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    goto :goto_4e

    :cond_6c
    move v6, v5

    goto :goto_61
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 11
    .param p1    # Landroid/content/res/Configuration;
    .param p2    # Landroid/os/IBinder;

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz p2, :cond_16

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_16

    const/16 v4, 0x80

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v2

    :cond_1a
    :goto_1a
    return-object v2

    :cond_1b
    if-eqz p1, :cond_1a

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v5, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v5, v4, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_1a

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iput-boolean v7, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_5c

    aput v6, v0, v7

    aput v6, v0, v6

    :goto_4d
    aget v4, v0, v6

    aget v5, v0, v7

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZII)V

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_1a

    :cond_5c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    goto :goto_4d
.end method

.method private updateResizingWindows(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1    # Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_8e

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    if-ne v2, v5, :cond_8e

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    move v2, v3

    :goto_1b
    or-int/2addr v2, v5

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    move v2, v3

    :goto_2b
    or-int/2addr v2, v5

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    move v2, v3

    :goto_3b
    or-int/2addr v2, v5

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v2, :cond_57

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v2, :cond_57

    iget-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v2, :cond_57

    if-eqz v0, :cond_95

    :cond_57
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_81

    iput v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_81

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :cond_81
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    move v2, v4

    goto :goto_1b

    :cond_91
    move v2, v4

    goto :goto_2b

    :cond_93
    move v2, v4

    goto :goto_3b

    :cond_95
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_8e

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto :goto_8e
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIIZZI)V
    .registers 19
    .param p1    # I
    .param p2    # Landroid/view/IApplicationToken;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .param p7    # Z
    .param p8    # I

    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "addAppToken()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    :try_start_12
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_42

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long v3, v6, v8

    :goto_1b
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_1e
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_50

    const-string v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted to add existing app token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_84

    :goto_41
    return-void

    :catch_42
    move-exception v2

    const-string v6, "WindowManager"

    const-string v7, "Could not get dispatching timeout."

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide v3, 0x12a05f200L

    goto :goto_1b

    :cond_50
    :try_start_50
    new-instance v1, Lcom/android/server/wm/AppWindowToken;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    iput-wide v3, v1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput p3, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    move/from16 v0, p6

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    move/from16 v0, p7

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->showWhenLocked:Z

    iput p5, v1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    if-nez v5, :cond_87

    move/from16 v0, p8

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/server/wm/WindowManagerService;->createTask(IIILcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/Task;

    move-result-object v5

    :goto_73
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    monitor-exit v7

    goto :goto_41

    :catchall_84
    move-exception v6

    monitor-exit v7
    :try_end_86
    .catchall {:try_start_50 .. :try_end_86} :catchall_84

    throw v6

    :cond_87
    :try_start_87
    invoke-virtual {v5, p1, v1}, Lcom/android/server/wm/Task;->addAppToken(ILcom/android/server/wm/AppWindowToken;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_84

    goto :goto_73
.end method

.method public addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
    .registers 23
    .param p1    # Landroid/os/Looper;
    .param p2    # Landroid/view/InputEventReceiver$Factory;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Z
    .param p8    # Z
    .param p9    # Z

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_3
    new-instance v0, Lcom/android/server/wm/FakeWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/FakeWindowImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)V

    const/4 v11, 0x0

    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FakeWindowImpl;

    iget v1, v1, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget v2, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    if-gt v1, v2, :cond_1a

    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v12

    return-object v0

    :catchall_3d
    move-exception v1

    monitor-exit v12
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1    # Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    :goto_1b
    return-void

    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_1b
.end method

.method public addTask(IIZ)V
    .registers 9
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-nez v2, :cond_f

    monitor-exit v4

    :goto_e
    return-void

    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)Z

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v4

    goto :goto_e

    :catchall_26
    move-exception v3

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v3
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 37
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;
    .param p3    # I
    .param p4    # Landroid/view/WindowManager$LayoutParams;
    .param p5    # I
    .param p6    # I
    .param p7    # Landroid/graphics/Rect;
    .param p8    # Landroid/view/InputChannel;

    const/4 v3, 0x1

    new-array v14, v3, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0, v14}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v24

    if-eqz v24, :cond_12

    move/from16 v3, v24

    :goto_11
    return v3

    :cond_12
    const/16 v23, 0x0

    const/4 v7, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v3, :cond_37

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Display has not been initialialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v3

    move-object/from16 v2, v26

    :goto_35
    :try_start_35
    monitor-exit v27
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_265

    throw v3

    :cond_37
    :try_start_37
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-nez v12, :cond_65

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x9

    monitor-exit v27

    goto :goto_11

    :cond_65
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v12, v3}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x9

    monitor-exit v27

    goto/16 :goto_11

    :cond_94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x5

    monitor-exit v27

    goto/16 :goto_11

    :cond_c6
    const/16 v3, 0x3e8

    move/from16 v0, v25

    if-lt v0, v3, :cond_13c

    const/16 v3, 0x7cf

    move/from16 v0, v25

    if-gt v0, v3, :cond_13c

    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-nez v7, :cond_106

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is not a window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    monitor-exit v27

    goto/16 :goto_11

    :cond_106
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_13c

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_13c

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    monitor-exit v27

    goto/16 :goto_11

    :cond_13c
    const/16 v3, 0x7ee

    move/from16 v0, v25

    if-ne v0, v3, :cond_153

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v3

    if-nez v3, :cond_153

    const-string v3, "WindowManager"

    const-string v4, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x8

    monitor-exit v27

    goto/16 :goto_11

    :cond_153
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    if-nez v6, :cond_268

    const/4 v3, 0x1

    move/from16 v0, v25

    if-lt v0, v3, :cond_195

    const/16 v3, 0x63

    move/from16 v0, v25

    if-gt v0, v3, :cond_195

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add application window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27

    goto/16 :goto_11

    :cond_195
    const/16 v3, 0x7db

    move/from16 v0, v25

    if-ne v0, v3, :cond_1c1

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27

    goto/16 :goto_11

    :cond_1c1
    const/16 v3, 0x7dd

    move/from16 v0, v25

    if-ne v0, v3, :cond_1ed

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27

    goto/16 :goto_11

    :cond_1ed
    const/16 v3, 0x7e7

    move/from16 v0, v25

    if-ne v0, v3, :cond_219

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add Dream window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27

    goto/16 :goto_11

    :cond_219
    new-instance v6, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    const/4 v13, 0x1

    :cond_227
    new-instance v2, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    aget v8, v14, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    :try_end_23b
    .catchall {:try_start_37 .. :try_end_23b} :catchall_32

    :try_start_23b
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v3, :cond_362

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is dead, aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    monitor-exit v27
    :try_end_263
    .catchall {:try_start_23b .. :try_end_263} :catchall_265

    goto/16 :goto_11

    :catchall_265
    move-exception v3

    goto/16 :goto_35

    :cond_268
    const/4 v3, 0x1

    move/from16 v0, v25

    if-lt v0, v3, :cond_2cc

    const/16 v3, 0x63

    move/from16 v0, v25

    if-gt v0, v3, :cond_2cc

    :try_start_273
    iget-object v15, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v15, :cond_299

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with non-application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x3

    monitor-exit v27

    goto/16 :goto_11

    :cond_299
    iget-boolean v3, v15, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_2bf

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with exiting application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    monitor-exit v27

    goto/16 :goto_11

    :cond_2bf
    const/4 v3, 0x3

    move/from16 v0, v25

    if-ne v0, v3, :cond_227

    iget-boolean v3, v15, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_227

    const/4 v3, -0x6

    monitor-exit v27

    goto/16 :goto_11

    :cond_2cc
    const/16 v3, 0x7db

    move/from16 v0, v25

    if-ne v0, v3, :cond_2fe

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_227

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27

    goto/16 :goto_11

    :cond_2fe
    const/16 v3, 0x7dd

    move/from16 v0, v25

    if-ne v0, v3, :cond_330

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7dd

    if-eq v3, v4, :cond_227

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27

    goto/16 :goto_11

    :cond_330
    const/16 v3, 0x7e7

    move/from16 v0, v25

    if-ne v0, v3, :cond_227

    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7e7

    if-eq v3, v4, :cond_227

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add Dream window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v27
    :try_end_360
    .catchall {:try_start_273 .. :try_end_360} :catchall_32

    goto/16 :goto_11

    :cond_362
    :try_start_362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v24

    if-eqz v24, :cond_389

    monitor-exit v27

    move/from16 v3, v24

    goto/16 :goto_11

    :cond_389
    if-eqz p8, :cond_3b4

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3b4

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v18

    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setInputChannel(Landroid/view/InputChannel;)V

    const/4 v3, 0x1

    aget-object v3, v18, v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    :cond_3b4
    const/16 v24, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    if-eqz v13, :cond_3c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c7
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->attach()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3f2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_3f2
    const/4 v3, 0x3

    move/from16 v0, v25

    if-ne v0, v3, :cond_416

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_416

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x21

    iget-object v5, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_416
    const/16 v17, 0x1

    const/16 v3, 0x7db

    move/from16 v0, v25

    if-ne v0, v3, :cond_4ae

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    const/16 v17, 0x0

    :cond_42c
    :goto_42c
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    iget-boolean v3, v12, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_514

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    :goto_440
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_448

    or-int/lit8 v24, v24, 0x1

    :cond_448
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_452

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_454

    :cond_452
    or-int/lit8 v24, v24, 0x2

    :cond_454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-eqz v3, :cond_46f

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v16

    if-eqz v16, :cond_46f

    const/16 v17, 0x0

    :cond_46f
    if-eqz v17, :cond_477

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    :cond_477
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    if-eqz v16, :cond_488

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    :cond_488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_4a1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_4a1

    const/16 v23, 0x1

    :cond_4a1
    monitor-exit v27
    :try_end_4a2
    .catchall {:try_start_362 .. :try_end_4a2} :catchall_265

    if-eqz v23, :cond_4a7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_4a7
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v24

    goto/16 :goto_11

    :cond_4ae
    const/16 v3, 0x7dc

    move/from16 v0, v25

    if-ne v0, v3, :cond_4d1

    :try_start_4b4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    const/16 v17, 0x0

    goto/16 :goto_42c

    :cond_4d1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    const/16 v3, 0x7dd

    move/from16 v0, v25

    if-ne v0, v3, :cond_4eb

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    iget v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_42c

    :cond_4eb
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4fc

    iget v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_42c

    :cond_4fc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_42c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v3, v4, :cond_42c

    iget v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto/16 :goto_42c

    :cond_514
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_517
    .catchall {:try_start_4b4 .. :try_end_517} :catchall_265

    goto/16 :goto_440
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .param p1    # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 8
    .param p1    # Landroid/os/IBinder;
    .param p2    # I

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_39

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_38
    return-void

    :cond_39
    new-instance v0, Lcom/android/server/wm/WindowToken;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7dd

    if-ne p2, v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    monitor-exit v2

    goto :goto_38

    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_c
    if-ltz v0, :cond_26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :goto_22
    return v3

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_26
    iget v3, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_22
.end method

.method adjustWallpaperWindowsLocked()I
    .registers 35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v9, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/16 v26, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v29, -0x1

    move v13, v3

    :cond_2f
    :goto_2f
    if-lez v13, :cond_d9

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x7dd

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_56

    if-nez v23, :cond_2f

    move-object/from16 v23, v26

    move/from16 v22, v13

    goto :goto_2f

    :cond_56
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_94

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_94

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    move/from16 v31, v0

    if-eqz v31, :cond_94

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f

    :cond_94
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    const/high16 v32, 0x100000

    and-int v31, v31, v32

    if-eqz v31, :cond_307

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v31

    if-eqz v31, :cond_307

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_be

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v31

    if-eqz v31, :cond_307

    :cond_be
    move-object/from16 v12, v26

    move v11, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d9

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v31

    if-nez v31, :cond_2f

    :cond_d9
    if-nez v12, :cond_e1

    if-ltz v29, :cond_e1

    move-object/from16 v12, v26

    move/from16 v11, v29

    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    if-eq v0, v12, :cond_33d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    if-eq v0, v12, :cond_33d

    :cond_fd
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v20, 0x1

    if-eqz v12, :cond_14f

    if-eqz v19, :cond_14f

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v16

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v10

    if-eqz v10, :cond_14f

    if-eqz v16, :cond_14f

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    if-ltz v17, :cond_14f

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_31d

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v31, v0

    if-eqz v31, :cond_31d

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v12, v19

    move/from16 v11, v17

    :cond_14f
    :goto_14f
    if-eqz v12, :cond_375

    const/16 v25, 0x1

    :goto_153
    if-eqz v25, :cond_1f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-nez v31, :cond_379

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_379

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    move/from16 v31, v0

    :goto_179
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v31

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    move/from16 v0, v31

    add-int/lit16 v15, v0, 0x3e8

    :goto_193
    if-lez v11, :cond_1f1

    add-int/lit8 v31, v11, -0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v15, :cond_37d

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    if-eq v0, v12, :cond_37d

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c7

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_37d

    :cond_1c7
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1f1

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v31, v0

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_37d

    :cond_1f1
    if-nez v12, :cond_383

    if-eqz v23, :cond_383

    move-object/from16 v12, v23

    add-int/lit8 v11, v22, 0x1

    :goto_1f9
    if-eqz v25, :cond_267

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_231

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    :cond_231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_267

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    :cond_267
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_272
    if-lez v5, :cond_3f1

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a8

    or-int/lit8 v4, v4, 0x4

    if-nez v25, :cond_393

    const/16 v31, 0x1

    :goto_296
    move/from16 v0, v31

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_2a8
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    :goto_2b2
    if-lez v6, :cond_272

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    if-eqz v25, :cond_2d1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v31

    invoke-virtual {v0, v1, v9, v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_2d1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, v27

    if-ne v0, v12, :cond_39a

    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_397

    add-int/lit8 v31, v11, -0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    move-object/from16 v12, v31

    :goto_306
    goto :goto_2b2

    :cond_307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2f

    move/from16 v29, v13

    goto/16 :goto_2f

    :cond_31d
    move/from16 v0, v17

    if-le v11, v0, :cond_331

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v12, v19

    move/from16 v11, v17

    goto/16 :goto_14f

    :cond_331
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_14f

    :cond_33d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-eqz v31, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v31

    if-eqz v31, :cond_35d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v31

    if-nez v31, :cond_14f

    :cond_35d
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/16 v20, 0x1

    goto/16 :goto_14f

    :cond_375
    const/16 v25, 0x0

    goto/16 :goto_153

    :cond_379
    const/16 v31, 0x0

    goto/16 :goto_179

    :cond_37d
    move-object/from16 v12, v28

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_193

    :cond_383
    if-lez v11, :cond_391

    add-int/lit8 v31, v11, -0x1

    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    move-object/from16 v12, v31

    :goto_38f
    goto/16 :goto_1f9

    :cond_391
    const/4 v12, 0x0

    goto :goto_38f

    :cond_393
    const/16 v31, 0x0

    goto/16 :goto_296

    :cond_397
    const/4 v12, 0x0

    goto/16 :goto_306

    :cond_39a
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    if-ltz v18, :cond_3b9

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    move/from16 v0, v18

    if-ge v0, v11, :cond_3b9

    add-int/lit8 v11, v11, -0x1

    :cond_3b9
    const/4 v14, 0x0

    if-eqz v25, :cond_3de

    if-eqz v12, :cond_3de

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v31, 0x7d4

    move/from16 v0, v24

    move/from16 v1, v31

    if-eq v0, v1, :cond_3d8

    const/16 v31, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v31

    if-ne v0, v1, :cond_3de

    :cond_3d8
    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    :cond_3de
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    or-int/lit8 v4, v4, 0x2

    goto/16 :goto_2b2

    :cond_3f1
    if-eqz v20, :cond_3f3

    :cond_3f3
    return v4
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_b
.end method

.method checkDrawnWindowsLocked()V
    .registers 8

    const/16 v6, 0x18

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6c

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_12
    if-ltz v0, :cond_6c

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_53

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3e
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_6f

    :goto_46
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    :cond_50
    :goto_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_53
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v3, :cond_50

    :try_start_59
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_61} :catch_6d

    :goto_61
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_50

    :cond_6c
    return-void

    :catch_6d
    move-exception v3

    goto :goto_61

    :catch_6f
    move-exception v3

    goto :goto_46
.end method

.method public clearForcedDisplayDensity(I)V
    .registers 7
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz p1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only set the default display"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_37

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "display_density_forced"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_37
    monitor-exit v2

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public clearForcedDisplaySize(I)V
    .registers 7
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz p1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only set the default display"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_39

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "display_size_forced"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_39
    monitor-exit v2

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_34

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_31

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_36

    if-eqz v6, :cond_2e

    :try_start_29
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_39
    .catchall {:try_start_29 .. :try_end_2e} :catchall_36

    :cond_2e
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_34
    :try_start_34
    monitor-exit v7

    return-void

    :catchall_36
    move-exception v6

    monitor-exit v7
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v6

    :catch_39
    move-exception v6

    goto :goto_2e
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const-string v1, "new-config"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_17
    monitor-exit v2

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .registers 3

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return-object v0
.end method

.method computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z
    .registers 30
    .param p1    # Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_7
    return v3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_185

    :cond_1a
    const/4 v5, 0x1

    :goto_1b
    if-eqz v5, :cond_188

    iget v0, v14, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v25, v0

    :goto_21
    if-eqz v5, :cond_18e

    iget v0, v14, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v24, v0

    :goto_27
    move/from16 v6, v25

    move/from16 v7, v24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eqz v3, :cond_49

    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_194

    move/from16 v0, v24

    int-to-float v3, v0

    const v8, 0x3fa66666

    div-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_49

    move/from16 v6, v21

    :cond_49
    :goto_49
    if-eqz p1, :cond_52

    if-gt v6, v7, :cond_1a8

    const/4 v3, 0x1

    :goto_4e
    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v6, v7, v8}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v6, v7, v8}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v10

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v8, v14, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_71
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    iput v3, v4, Landroid/view/DisplayInfo;->rotation:I

    iput v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, v14, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v3, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v11, v4, Landroid/view/DisplayInfo;->appWidth:I

    iput v10, v4, Landroid/view/DisplayInfo;->appHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v9, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v3, v9, v0}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-virtual {v3, v9, v4}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    monitor-exit v8
    :try_end_a3
    .catchall {:try_start_71 .. :try_end_a3} :catchall_1ab

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v15, v3}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    if-eqz p1, :cond_224

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v6, v7, v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v3

    int-to-float v3, v3

    iget v8, v15, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v8

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v3, v6, v7, v8}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v3

    int-to-float v3, v3

    iget v8, v15, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v8

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, v15, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowManagerService;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v3, v8

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v3, v8

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v6, v7}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v3, v14, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v13

    array-length v0, v13

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_136
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1ce

    aget-object v12, v13, v17

    invoke-virtual {v12}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_182

    invoke-virtual {v12}, Landroid/view/InputDevice;->getSources()I

    move-result v26

    invoke-virtual {v12}, Landroid/view/InputDevice;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_1ae

    const/16 v23, 0x2

    :goto_150
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v3, :cond_1b1

    move/from16 v0, v26

    and-int/lit16 v3, v0, 0x1002

    const/16 v8, 0x1002

    if-ne v3, v8, :cond_163

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_163
    :goto_163
    const v3, 0x10004

    and-int v3, v3, v26

    const v8, 0x10004

    if-ne v3, v8, :cond_1b7

    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int v22, v22, v23

    :cond_174
    :goto_174
    invoke-virtual {v12}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_182

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    or-int v18, v18, v23

    :cond_182
    add-int/lit8 v17, v17, 0x1

    goto :goto_136

    :cond_185
    const/4 v5, 0x0

    goto/16 :goto_1b

    :cond_188
    iget v0, v14, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v25, v0

    goto/16 :goto_21

    :cond_18e
    iget v0, v14, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v24, v0

    goto/16 :goto_27

    :cond_194
    move/from16 v0, v25

    int-to-float v3, v0

    const v8, 0x3fa66666

    div-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_49

    move/from16 v7, v20

    goto/16 :goto_49

    :cond_1a8
    const/4 v3, 0x2

    goto/16 :goto_4e

    :catchall_1ab
    move-exception v3

    :try_start_1ac
    monitor-exit v8
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ab

    throw v3

    :cond_1ae
    const/16 v23, 0x1

    goto :goto_150

    :cond_1b1
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_163

    :cond_1b7
    move/from16 v0, v26

    and-int/lit16 v3, v0, 0x201

    const/16 v8, 0x201

    if-ne v3, v8, :cond_174

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_174

    const/4 v3, 0x2

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigation:I

    or-int v22, v22, v23

    goto :goto_174

    :cond_1ce
    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_227

    const/16 v16, 0x1

    :goto_1d7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move/from16 v0, v16

    if-eq v0, v3, :cond_1fd

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_1fd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-nez v3, :cond_208

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_208
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/content/res/Configuration;->navigationHidden:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-interface {v3, v0, v1, v2}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    :cond_224
    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_227
    const/16 v16, 0x0

    goto :goto_1d7
.end method

.method copyAnimToLayoutParamsLocked()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    # setter for: Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService$LayoutFields;->access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z

    const/4 v1, 0x1

    :cond_10
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/4 v1, 0x1

    :cond_19
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    const/4 v1, 0x1

    :cond_22
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    :cond_2b
    :goto_2b
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_31

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    :cond_31
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    :cond_39
    return v1

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mLastWindowFreezeSource:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_2b
.end method

.method public createDisplayContentLocked(Landroid/view/Display;)V
    .registers 4
    .param p1    # Landroid/view/Display;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getDisplayContent: display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public createStack(IIIF)V
    .registers 13
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # F

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    const/4 v4, 0x5

    if-gt p3, v4, :cond_30

    const v4, 0x3e4ccccd

    cmpg-float v4, p4, v4

    if-ltz v4, :cond_14

    const v4, 0x3f4ccccd

    cmpl-float v4, p4, v4

    if-lez v4, :cond_30

    :cond_14
    :try_start_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createStack: weight must be between 0.2 and 0.8, weight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_2d
    move-exception v4

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2d

    throw v4

    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v2, :cond_58

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->createStack(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v5

    :goto_54
    return-void

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_58
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createStack: Unable to find relativeStackBoxId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_71
    .catchall {:try_start_30 .. :try_end_71} :catchall_2d

    goto :goto_54
.end method

.method createWatermarkInTransaction()V
    .registers 12

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v7, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v7, "/system/etc/setup.conf"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_54
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_65
    .catchall {:try_start_e .. :try_end_13} :catchall_76

    :try_start_13
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_95
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_8e
    .catchall {:try_start_13 .. :try_end_18} :catchall_87

    :try_start_18
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3c

    array-length v7, v6

    if-lez v7, :cond_3c

    new-instance v7, Lcom/android/server/wm/Watermark;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/android/server/wm/Watermark;-><init>(Landroid/view/Display;Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_3c} :catch_98
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_3c} :catch_91
    .catchall {:try_start_18 .. :try_end_3c} :catchall_8a

    :cond_3c
    if-eqz v4, :cond_48

    :try_start_3e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_44

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :catch_44
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :cond_48
    if-eqz v2, :cond_9c

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :catch_50
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_4

    :catch_54
    move-exception v7

    :goto_55
    if-eqz v3, :cond_5d

    :try_start_57
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_4

    :catch_5b
    move-exception v7

    goto :goto_4

    :cond_5d
    if-eqz v1, :cond_4

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_4

    :catch_63
    move-exception v7

    goto :goto_4

    :catch_65
    move-exception v7

    :goto_66
    if-eqz v3, :cond_6e

    :try_start_68
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_4

    :catch_6c
    move-exception v7

    goto :goto_4

    :cond_6e
    if-eqz v1, :cond_4

    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_4

    :catch_74
    move-exception v7

    goto :goto_4

    :catchall_76
    move-exception v7

    :goto_77
    if-eqz v3, :cond_7d

    :try_start_79
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_85

    :cond_7c
    :goto_7c
    throw v7

    :cond_7d
    if-eqz v1, :cond_7c

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_7c

    :catch_83
    move-exception v8

    goto :goto_7c

    :catch_85
    move-exception v8

    goto :goto_7c

    :catchall_87
    move-exception v7

    move-object v1, v2

    goto :goto_77

    :catchall_8a
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_77

    :catch_8e
    move-exception v7

    move-object v1, v2

    goto :goto_66

    :catch_91
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_66

    :catch_95
    move-exception v7

    move-object v1, v2

    goto :goto_55

    :catch_98
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_55

    :cond_9c
    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_4
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2b

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public detectSafeMode()Z
    .registers 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v11, -0x100

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "WindowManager"

    const-string v8, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x52

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x2f

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v2

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x201

    const/16 v9, 0x17

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v8, 0x10004

    const/16 v9, 0x110

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x19

    invoke-virtual {v7, v10, v11, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v4

    if-gtz v1, :cond_4d

    if-gtz v2, :cond_4d

    if-gtz v0, :cond_4d

    if-gtz v3, :cond_4d

    if-lez v4, :cond_4e

    :cond_4d
    move v5, v6

    :cond_4e
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    :try_start_50
    const-string v5, "persist.sys.safemode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_63

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    const-string v5, "persist.sys.safemode"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_63} :catch_b5

    :cond_63
    :goto_63
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v5, :cond_ad

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAFE MODE ENABLED (menu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trackball="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->setSafeMode(Z)V

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v5

    :cond_ad
    const-string v5, "WindowManager"

    const-string v6, "SAFE MODE not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :catch_b5
    move-exception v5

    goto :goto_63
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1    # Landroid/os/IBinder;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dismissKeyguard()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw()V

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .registers 4
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Z

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v0, p2, :cond_b

    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    :try_start_6
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public displayReady()V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeAndDensityLocked(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_38

    :try_start_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_40

    :goto_18
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.touchscreen"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->configureDisplayPolicyLocked(Lcom/android/server/wm/DisplayContent;)V

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_3b

    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_37} :catch_3e

    :goto_37
    return-void

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1

    :catch_3e
    move-exception v1

    goto :goto_37

    :catch_40
    move-exception v1

    goto :goto_18
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_35
    array-length v0, p3

    if-ge v4, v0, :cond_4b

    aget-object v6, p3, v4

    if-eqz v6, :cond_4b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6d

    :cond_4b
    array-length v0, p3

    if-ge v4, v0, :cond_1e4

    aget-object v2, p3, v4

    add-int/lit8 v4, v4, 0x1

    const-string v0, "lastanr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "l"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_62
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_65
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    monitor-exit v1

    goto :goto_32

    :catchall_6a
    move-exception v0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    const-string v0, "-a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/4 v5, 0x1

    goto :goto_35

    :cond_79
    const-string v0, "-h"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    const-string v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    a[animator]: animator state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    d[isplays]: active display contents"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_f1
    const-string v0, "policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    const-string v0, "p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    :cond_101
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_105
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_10b
    move-exception v0

    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_10b

    throw v0

    :cond_10e
    const-string v0, "animator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11e

    const-string v0, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    :cond_11e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_122
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_128
    move-exception v0

    monitor-exit v1
    :try_end_12a
    .catchall {:try_start_122 .. :try_end_12a} :catchall_128

    throw v0

    :cond_12b
    const-string v0, "sessions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    :cond_13b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_13f
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_145
    move-exception v0

    monitor-exit v1
    :try_end_147
    .catchall {:try_start_13f .. :try_end_147} :catchall_145

    throw v0

    :cond_148
    const-string v0, "displays"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_158

    const-string v0, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    :cond_158
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_15c
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpDisplayContentsLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_162
    move-exception v0

    monitor-exit v1
    :try_end_164
    .catchall {:try_start_15c .. :try_end_164} :catchall_162

    throw v0

    :cond_165
    const-string v0, "tokens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_175

    const-string v0, "t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    :cond_175
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_179
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_17f
    move-exception v0

    monitor-exit v1
    :try_end_181
    .catchall {:try_start_179 .. :try_end_181} :catchall_17f

    throw v0

    :cond_182
    const-string v0, "windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_192

    const-string v0, "w"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    :cond_192
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_197
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_19d
    move-exception v0

    monitor-exit v1
    :try_end_19f
    .catchall {:try_start_197 .. :try_end_19f} :catchall_19d

    throw v0

    :cond_1a0
    const-string v0, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    const-string v0, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    :cond_1b0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_1b5
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_1bb
    move-exception v0

    monitor-exit v1
    :try_end_1bd
    .catchall {:try_start_1b5 .. :try_end_1bd} :catchall_1bb

    throw v0

    :cond_1be
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_1e4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1e7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_1f1

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_1fe

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1fe
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_20b

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20b
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_218

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_218
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_225

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_225
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpDisplayContentsLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_232

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_232
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz v5, :cond_23f

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23f
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v1

    goto/16 :goto_32

    :catchall_246
    move-exception v0

    monitor-exit v1
    :try_end_248
    .catchall {:try_start_1e7 .. :try_end_248} :catchall_246

    throw v0
.end method

.method dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # [Ljava/lang/String;
    .param p3    # Z

    const-string v0, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v1, "    "

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method dumpAppTokensLocked()V
    .registers 13

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_82

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Display "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->numTokens()I

    move-result v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_3b
    if-ltz v4, :cond_7f

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :goto_4b
    if-ltz v6, :cond_7c

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_4b

    :cond_7c
    add-int/lit8 v4, v4, -0x1

    goto :goto_3b

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_82
    return-void
.end method

.method dumpDisplayContentsLocked(Ljava/io/PrintWriter;Z)V
    .registers 7
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Z

    const-string v3, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_27

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    const-string v3, "  "

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    const-string v3, "  NO DISPLAY"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1    # Ljava/io/PrintWriter;

    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e
.end method

.method dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # [Ljava/lang/String;
    .param p3    # Z

    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Z

    const-string v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_32

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    const-string v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    return-void
.end method

.method dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .registers 9
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Z

    const/16 v5, 0x20

    const/16 v4, 0x3a

    const-string v3, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_43

    const-string v3, "  All tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_3f

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_20

    :cond_3f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_20

    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_84

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Wallpaper tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5b
    if-ltz v0, :cond_84

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Wallpaper #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_80

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_7d
    add-int/lit8 v0, v0, -0x1

    goto :goto_5b

    :cond_80
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7d

    :cond_84
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Finishing start of application tokens:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9c
    if-ltz v0, :cond_c5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Finished Starting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_c1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_be
    add-int/lit8 v0, v0, -0x1

    goto :goto_9c

    :cond_c1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_be

    :cond_c5
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_d5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_fc

    :cond_d5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ea

    const-string v3, "  mOpeningApps="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_ea
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_fc

    const-string v3, "  mClosingApps="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_fc
    return-void
.end method

.method dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 15
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # I
    .param p5    # Z

    new-instance v6, Lcom/android/server/wm/WindowList;

    invoke-direct {v6}, Lcom/android/server/wm/WindowList;-><init>()V

    const-string v7, "visible"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_10
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_42

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_2b
    if-ltz v4, :cond_3f

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v7, :cond_3c

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_4b

    :goto_43
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-gtz v7, :cond_a6

    const/4 v7, 0x0

    :goto_4a
    return v7

    :catchall_4b
    move-exception v7

    :try_start_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v7

    :cond_4e
    const/4 v2, 0x0

    const/16 v7, 0x10

    :try_start_51
    invoke-static {p2, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_54} :catch_b2

    move-result v2

    const/4 p2, 0x0

    :goto_56
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_59
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_60
    if-ge v0, v1, :cond_a4

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_74
    if-ltz v4, :cond_a1

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_94

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    :cond_91
    :goto_91
    add-int/lit8 v4, v4, -0x1

    goto :goto_74

    :cond_94
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v2, :cond_91

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto :goto_91

    :catchall_9e
    move-exception v7

    monitor-exit v8
    :try_end_a0
    .catchall {:try_start_59 .. :try_end_a0} :catchall_9e

    throw v7

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_a4
    :try_start_a4
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_9e

    goto :goto_43

    :cond_a6
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_a9
    invoke-virtual {p0, p1, p5, v6}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    monitor-exit v8

    const/4 v7, 0x1

    goto :goto_4a

    :catchall_af
    move-exception v7

    monitor-exit v8
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_af

    throw v7

    :catch_b2
    move-exception v7

    goto :goto_56
.end method

.method dumpWindowsLocked()V
    .registers 10

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v3, :cond_4f

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    move v2, v1

    :goto_1d
    if-ltz v4, :cond_4b

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, -0x1

    move v2, v1

    goto :goto_1d

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_8

    :cond_4f
    return-void
.end method

.method dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 5
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    return-void
.end method

.method dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 16
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/16 v11, 0x20

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_53

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    :goto_1e
    if-ltz v6, :cond_50

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_2e

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    :cond_2e
    const-string v8, "  Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "    "

    if-nez p2, :cond_47

    if-eqz p3, :cond_4e

    :cond_47
    move v8, v9

    :goto_48
    invoke-virtual {v5, p1, v10, v8}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_4b
    add-int/lit8 v6, v6, -0x1

    goto :goto_1e

    :cond_4e
    const/4 v8, 0x0

    goto :goto_48

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_53
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_90

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Input method dialogs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_6b
    if-ltz v2, :cond_90

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_7d

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    :cond_7d
    const-string v8, "  IM Dialog #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8d
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    :cond_90
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_db

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Remove pending for:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_a8
    if-ltz v2, :cond_db

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_ba

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d4

    :cond_ba
    const-string v8, "  Remove #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_d7

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_d4
    :goto_d4
    add-int/lit8 v2, v2, -0x1

    goto :goto_a8

    :cond_d7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_d4

    :cond_db
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v8, :cond_122

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_122

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Windows force removing:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_f7
    if-ltz v2, :cond_122

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    const-string v8, "  Removing #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_11e

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_11b
    add-int/lit8 v2, v2, -0x1

    goto :goto_f7

    :cond_11e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_11b

    :cond_122
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_16d

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_13a
    if-ltz v2, :cond_16d

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_14c

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_166

    :cond_14c
    const-string v8, "  Destroy #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_169

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_166
    :goto_166
    add-int/lit8 v2, v2, -0x1

    goto :goto_13a

    :cond_169
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_166

    :cond_16d
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1b8

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Windows losing focus:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_185
    if-ltz v2, :cond_1b8

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_197

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b1

    :cond_197
    const-string v8, "  Losing #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_1b4

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_1b1
    :goto_1b1
    add-int/lit8 v2, v2, -0x1

    goto :goto_185

    :cond_1b4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1b1

    :cond_1b8
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_203

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Windows waiting to resize:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_1d0
    if-ltz v2, :cond_203

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_1e2

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1fc

    :cond_1e2
    const-string v8, "  Resizing #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_1ff

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_1fc
    :goto_1fc
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d0

    :cond_1ff
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1fc

    :cond_203
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_242

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_21b
    if-ltz v2, :cond_242

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    const-string v8, "  Waiting #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_21b

    :cond_242
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v8, "  mCurConfiguration="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v8, "  mCurrentFocus="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v8, v9, :cond_269

    const-string v8, "  mLastFocus="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_269
    const-string v8, "  mFocusedApp="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_281

    const-string v8, "  mInputMethodTarget="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_281
    const-string v8, "  mInTouchMode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " mLayoutSeq="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    const-string v8, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v8, v8

    invoke-static {v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v8, :cond_2ae

    const-string v8, " due to "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_2ae
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p2, :cond_430

    const-string v8, "  mSystemDecorLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mScreenRect="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v8, :cond_2dd

    const-string v8, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2dd
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_2eb

    const-string v8, "  mInputMethodWindow="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2eb
    const-string v8, "  mWallpaperTarget="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_2fd

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_311

    :cond_2fd
    const-string v8, "  mLowerWallpaperTarget="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v8, "  mUpperWallpaperTarget="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_311
    const-string v8, "  mLastWallpaperX="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(F)V

    const-string v8, " mLastWallpaperY="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(F)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    if-nez v8, :cond_32d

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    if-eqz v8, :cond_341

    :cond_32d
    const-string v8, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    :cond_341
    const-string v8, "  mSystemBooted="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " mDisplayEnabled="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v8

    if-eqz v8, :cond_37c

    const-string v8, "  layoutNeeded on displays="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_361
    if-ge v1, v3, :cond_379

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-eqz v8, :cond_376

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    :cond_376
    add-int/lit8 v1, v1, 0x1

    goto :goto_361

    :cond_379
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_37c
    const-string v8, "  mTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    const-string v8, "  mDisplayFrozen="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " windows="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " client="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " apps="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " waitingForConfig="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    const-string v8, "  mRotation="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mAltOrientation="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    const-string v8, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mForcedAppOrientation="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    const-string v8, "  mDeferredRotationPauseCount="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    const-string v8, "  mWindowAnimationScale="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(F)V

    const-string v8, " mTransitionWindowAnimationScale="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(F)V

    const-string v8, " mAnimatorDurationScale="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(F)V

    const-string v8, "  mTraversalScheduled="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    const-string v8, "  mStartingIconInTransition="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    const-string v8, " mSkipAppTransitionAnimation="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    const-string v8, "  mLayoutToAnim:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/AppTransition;->dump(Ljava/io/PrintWriter;)V

    :cond_430
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x17

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_22

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method enableScreenIfNeededLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_4

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method public executeAppTransition()V
    .registers 5

    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setReady()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2c
    monitor-exit v3

    return-void

    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .param p1    # Landroid/view/IOnKeyguardExitResult;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4
    .param p1    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_b
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .registers 15
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v10

    const/4 v7, 0x0

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    :goto_b
    if-ltz v4, :cond_3c

    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_5f

    move-object v7, v9

    if-nez p1, :cond_3c

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3c

    if-lez v4, :cond_3c

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_3c

    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_3c

    add-int/lit8 v4, v4, -0x1

    move-object v7, v8

    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_62

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v11

    if-eqz v11, :cond_62

    if-eqz v7, :cond_58

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v12, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v11, v12, :cond_62

    :cond_58
    invoke-virtual {v10, v0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    :goto_5e
    return v11

    :cond_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    :cond_62
    if-eqz p1, :cond_d1

    if-eqz v7, :cond_d1

    if-nez v0, :cond_9f

    const/4 v6, 0x0

    :goto_69
    if-eqz v6, :cond_d1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v11, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v11, :cond_79

    iget-object v11, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_8d

    :cond_79
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    :goto_81
    if-ltz v5, :cond_8d

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v6, :cond_a2

    :cond_8d
    if-eqz v3, :cond_d1

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v11

    if-eqz v11, :cond_b7

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v2, 0x1

    goto :goto_5e

    :cond_9f
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_69

    :cond_a2
    iget-boolean v11, v9, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_b4

    if-eqz v3, :cond_b2

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v11, v12, :cond_b4

    :cond_b2
    move-object v3, v9

    move v2, v5

    :cond_b4
    add-int/lit8 v5, v5, -0x1

    goto :goto_81

    :cond_b7
    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_d1

    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v12, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v11, v12, :cond_d1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    add-int/lit8 v11, v2, 0x1

    goto :goto_5e

    :cond_d1
    if-eqz v7, :cond_f0

    if-eqz p1, :cond_e7

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_eb

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v11, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v11, v11, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    :cond_e7
    :goto_e7
    add-int/lit8 v11, v4, 0x1

    goto/16 :goto_5e

    :cond_eb
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_e7

    :cond_f0
    if-eqz p1, :cond_f9

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    :cond_f9
    const/4 v11, -0x1

    goto/16 :goto_5e
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 9
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_39

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v3, v5

    if-eqz v3, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_29
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_36

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public freezeRotation(I)V
    .registers 8
    .param p1    # I

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v2, "android.permission.SET_ORIENTATION"

    const-string v3, "freezeRotation()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires SET_ORIENTATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    if-lt p1, v4, :cond_19

    const/4 v2, 0x3

    if-le p1, v2, :cond_21

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_25
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x1

    if-ne p1, v4, :cond_2c

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    :cond_2c
    invoke-interface {v2, v3, p1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_36

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getAnimationScale(I)F
    .registers 3
    .param p1    # I

    packed-switch p1, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_4

    :pswitch_8
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_4

    :pswitch_b
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .registers 5
    .param p1    # Landroid/view/IApplicationToken;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v1, -0x1

    monitor-exit v2

    :goto_f
    return v1

    :cond_10
    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_f

    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getBaseDisplayDensity(I)I
    .registers 6
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    :try_start_16
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    :goto_1a
    return v1

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .registers 7
    .param p1    # I
    .param p2    # Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_24

    :try_start_16
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    :cond_1f
    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_24

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .registers 8
    .param p1    # Landroid/os/IBinder;

    const/4 v2, 0x0

    const-string v3, "android.permission.MAGNIFY_DISPLAY"

    const-string v4, "getCompatibleMagnificationSpecForWindow()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MAGNIFY_DISPLAY permission."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_16
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_23

    monitor-exit v3

    move-object v0, v2

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    :cond_2e
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_36
    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-nez v4, :cond_41

    monitor-exit v3

    move-object v0, v2

    goto :goto_22

    :cond_41
    if-nez v0, :cond_53

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    :goto_47
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v4

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F

    monitor-exit v3

    goto :goto_22

    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_16 .. :try_end_52} :catchall_50

    throw v2

    :cond_53
    :try_start_53
    invoke-static {v0}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    move-result-object v0

    goto :goto_47
.end method

.method public getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;
    .registers 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->newDisplayContentLocked(Landroid/view/Display;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :cond_16
    return-object v1
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .registers 4

    const-string v1, "android.permission.RETRIEVE_WINDOW_INFO"

    const-string v2, "getFocusedWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires RETRIEVE_WINDOW_INFO permission."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v2

    :goto_22
    return-object v1

    :cond_23
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_22

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getInitialDisplayDensity(I)I
    .registers 6
    .param p1    # I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    :try_start_16
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    :goto_1a
    return v1

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .registers 7
    .param p1    # I
    .param p2    # Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_24

    :try_start_16
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    :cond_1f
    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_24

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method public getLidState()I
    .registers 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v4, -0x100

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-lez v0, :cond_d

    :goto_c
    return v1

    :cond_d
    if-nez v0, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    move v1, v2

    goto :goto_c
.end method

.method public getOrientationFromAppTokensLocked()I
    .registers 15

    const/4 v12, -0x1

    const/4 v13, 0x3

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    :goto_13
    if-ltz v7, :cond_63

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    move v9, v3

    :goto_24
    if-ltz v9, :cond_60

    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_39

    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v11, :cond_39

    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v11, :cond_39

    :cond_36
    :goto_36
    add-int/lit8 v9, v9, -0x1

    goto :goto_24

    :cond_39
    if-ne v9, v3, :cond_41

    if-eq v5, v13, :cond_41

    if-eqz v4, :cond_41

    move v6, v5

    :cond_40
    :goto_40
    return v6

    :cond_41
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v11, :cond_36

    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v11, :cond_36

    if-nez v9, :cond_4d

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    :cond_4d
    iget v6, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v4, :cond_55

    if-ne v6, v13, :cond_40

    :cond_55
    if-eq v6, v12, :cond_59

    if-ne v6, v13, :cond_40

    :cond_59
    if-ne v6, v13, :cond_5e

    const/4 v11, 0x1

    :goto_5c
    or-int/2addr v2, v11

    goto :goto_36

    :cond_5e
    const/4 v11, 0x0

    goto :goto_5c

    :cond_60
    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    :cond_63
    move v6, v12

    goto :goto_40
.end method

.method public getOrientationFromWindowsLocked()I
    .registers 7

    const/4 v4, -0x1

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_15

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    :cond_15
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    :goto_17
    return v1

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :cond_22
    if-ltz v0, :cond_4a

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    add-int/lit8 v0, v0, -0x1

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_34

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v4

    goto :goto_17

    :cond_34
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_22

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v5, :cond_22

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v4, :cond_22

    const/4 v5, 0x3

    if-eq v1, v5, :cond_22

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    goto :goto_17

    :cond_4a
    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v4

    goto :goto_17
.end method

.method public getPendingAppTransition()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 9

    const v4, 0x800053

    const/16 v3, 0x55

    const/16 v2, 0x51

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v6, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v7, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v6, v7, :cond_28

    packed-switch v1, :pswitch_data_36

    monitor-exit v5

    :goto_1c
    return v2

    :pswitch_1d
    monitor-exit v5

    move v2, v3

    goto :goto_1c

    :pswitch_20
    monitor-exit v5

    goto :goto_1c

    :catchall_22
    move-exception v2

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v2

    :pswitch_25
    :try_start_25
    monitor-exit v5

    move v2, v4

    goto :goto_1c

    :cond_28
    packed-switch v1, :pswitch_data_40

    monitor-exit v5

    move v2, v3

    goto :goto_1c

    :pswitch_2e
    monitor-exit v5

    goto :goto_1c

    :pswitch_30
    monitor-exit v5

    move v2, v4

    goto :goto_1c

    :pswitch_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_22

    goto :goto_1c

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
        :pswitch_25
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getStackBounds(I)Landroid/graphics/Rect;
    .registers 6
    .param p1    # I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_1b

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_18

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getStackBoxInfos()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfos()Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method getTokenWindowsOnDisplay(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowList;
    .registers 8
    .param p1    # Lcom/android/server/wm/WindowToken;
    .param p2    # Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/WindowList;

    invoke-direct {v3}, Lcom/android/server/wm/WindowList;-><init>()V

    iget-object v4, p1, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    iget-object v4, p1, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, p2, :cond_1d

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-object v3
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;
    .param p3    # Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v2

    :goto_e
    return-void

    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v2

    goto :goto_e

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/graphics/Rect;

    const-string v1, "android.permission.RETRIEVE_WINDOW_INFO"

    const-string v2, "getWindowInfo()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires RETRIEVE_WINDOW_INFO permission."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_24
    monitor-exit v2

    return-void

    :cond_26
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_24

    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 5
    .param p1    # Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    :goto_f
    monitor-exit v2

    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getWindowListLocked(I)Lcom/android/server/wm/WindowList;
    .registers 4
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;
    .registers 3
    .param p1    # Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I
    .registers 46
    .param p1    # Lcom/android/server/wm/WindowList;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    if-nez v2, :cond_43

    const/16 v31, 0x0

    :goto_1e
    move/from16 v0, v31

    move/from16 v1, v16

    if-ge v0, v1, :cond_43

    if-eqz v30, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_40

    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v2, :cond_40

    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v2, :cond_40

    const/16 v30, 0x0

    :cond_40
    add-int/lit8 v31, v31, 0x1

    goto :goto_1e

    :cond_43
    if-eqz v30, :cond_37d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v2, :cond_54

    const/4 v6, -0x1

    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->goodToGo()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_f8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_f8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_f8

    const/16 v36, 0x0

    :goto_91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    const/4 v4, 0x0

    const/16 v19, -0x1

    const/16 v29, 0x0

    const/16 v37, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_ff

    const/16 v41, 0x0

    move-object/from16 v34, v41

    :goto_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v16, v15, v2

    const/16 v31, 0x0

    :goto_bf
    move/from16 v0, v31

    move/from16 v1, v16

    if-ge v0, v1, :cond_142

    move/from16 v0, v31

    if-ge v0, v15, :cond_110

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v34

    if-eq v3, v0, :cond_dd

    move-object/from16 v0, v41

    if-ne v3, v0, :cond_df

    :cond_dd
    const/16 v22, 0x1

    :cond_df
    :goto_df
    iget-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v2, :cond_127

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v43

    if-eqz v43, :cond_f5

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    const/16 v29, 0x1

    :cond_f5
    :goto_f5
    add-int/lit8 v31, v31, 0x1

    goto :goto_bf

    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v36, v0

    goto :goto_91

    :cond_ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v41, v0

    goto :goto_ab

    :cond_110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    sub-int v5, v31, v15

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v34

    if-eq v3, v0, :cond_124

    move-object/from16 v0, v41

    if-ne v3, v0, :cond_df

    :cond_124
    const/16 v37, 0x1

    goto :goto_df

    :cond_127
    if-nez v29, :cond_f5

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v43

    if-eqz v43, :cond_f5

    move-object/from16 v0, v43

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v19

    if-le v2, v0, :cond_f5

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    goto :goto_f5

    :cond_142
    if-eqz v22, :cond_1bf

    if-eqz v37, :cond_1bf

    sparse-switch v6, :sswitch_data_3b8

    :cond_149
    :goto_149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v2

    if-nez v2, :cond_154

    const/4 v4, 0x0

    :cond_154
    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v31, 0x0

    :goto_162
    move/from16 v0, v31

    move/from16 v1, v16

    if-ge v0, v1, :cond_233

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    const/16 v32, 0x0

    :goto_19f
    move/from16 v0, v32

    if-ge v0, v14, :cond_1e7

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v32, 0x1

    goto :goto_19f

    :sswitch_1b9
    const/16 v6, 0x100e

    goto :goto_149

    :sswitch_1bc
    const/16 v6, 0x200f

    goto :goto_149

    :cond_1bf
    if-eqz v36, :cond_1d3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d3

    const/16 v6, 0x200c

    goto/16 :goto_149

    :cond_1d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_149

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_149

    const/16 v6, 0x100d

    goto/16 :goto_149

    :cond_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v5, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v8

    or-int/2addr v5, v8

    iput-boolean v5, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v4, :cond_22f

    const/16 v33, -0x1

    const/16 v32, 0x0

    :goto_1fa
    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_223

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v42

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v0, v33

    if-le v2, v0, :cond_220

    move-object/from16 v0, v42

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v33, v0

    :cond_220
    add-int/lit8 v32, v32, 0x1

    goto :goto_1fa

    :cond_223
    if-eqz v39, :cond_22b

    move/from16 v0, v33

    move/from16 v1, v40

    if-le v0, v1, :cond_22f

    :cond_22b
    move-object/from16 v39, v3

    move/from16 v40, v33

    :cond_22f
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_162

    :cond_233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v31, 0x0

    :goto_23d
    move/from16 v0, v31

    move/from16 v1, v16

    if-ge v0, v1, :cond_272

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iget-object v2, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    add-int/lit8 v31, v31, 0x1

    goto :goto_23d

    :cond_272
    if-nez v39, :cond_37e

    const/16 v18, 0x0

    :goto_276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;

    move-result-object v35

    if-eqz v35, :cond_338

    if-eqz v18, :cond_338

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_338

    new-instance v23, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_299
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v24

    new-instance v7, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v9, "thumbnail anim"

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, -0x3

    const/4 v13, 0x4

    invoke-direct/range {v7 .. v13}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    new-instance v27, Landroid/view/Surface;

    invoke-direct/range {v27 .. v27}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v20

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v2, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual/range {v27 .. v27}, Landroid/view/Surface;->release()V

    move/from16 v0, v40

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, v26

    iget v12, v0, Landroid/view/DisplayInfo;->appWidth:I

    move-object/from16 v0, v26

    iget v13, v0, Landroid/view/DisplayInfo;->appHeight:I

    move v9, v6

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->restrictDuration(J)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    new-instance v38, Landroid/graphics/Point;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTransition;->getStartingPoint(Landroid/graphics/Point;)V

    move-object/from16 v0, v38

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    move-object/from16 v0, v38

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I
    :try_end_338
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_299 .. :try_end_338} :catch_386

    :cond_338
    :goto_338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    or-int/lit8 v21, v21, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_371

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v2

    if-nez v2, :cond_371

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    :cond_371
    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_37d
    return v21

    :cond_37e
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    goto/16 :goto_276

    :catch_386
    move-exception v28

    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t allocate thumbnail/Canvas surface w="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " h="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_338

    nop

    :sswitch_data_3b8
    .sparse-switch
        0x1006 -> :sswitch_1b9
        0x1008 -> :sswitch_1b9
        0x100a -> :sswitch_1b9
        0x2007 -> :sswitch_1bc
        0x2009 -> :sswitch_1bc
        0x200b -> :sswitch_1bc
    .end sparse-switch
.end method

.method public hasNavigationBar()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessagesLocked()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    :cond_c
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 12
    .param p1    # Lcom/android/internal/view/IInputMethodClient;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    if-lez v1, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_6e

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_55

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_55

    const/4 v0, 0x0

    :goto_26
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-ge v0, v7, :cond_55

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eq v3, v2, :cond_6b

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switching to real app window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :cond_55
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_6e

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_6e

    monitor-exit v6

    :goto_6a
    return v4

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_6e
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_8f

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_8f

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_8f

    monitor-exit v6

    goto :goto_6a

    :catchall_8c
    move-exception v4

    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_6 .. :try_end_8e} :catchall_8c

    throw v4

    :cond_8f
    :try_start_8f
    monitor-exit v6
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8c

    move v4, v5

    goto :goto_6a
.end method

.method public isHardKeyboardAvailable()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isHardKeyboardEnabled()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isRotationFrozen()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->getUserRotationMode()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSafeModeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public isViewServerRunning()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1    # Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_12

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1a

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    return-void
.end method

.method logWindowList(Lcom/android/server/wm/WindowList;Ljava/lang/String;)V
    .registers 7
    .param p1    # Lcom/android/server/wm/WindowList;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    :goto_4
    if-lez v0, :cond_33

    add-int/lit8 v0, v0, -0x1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_33
    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1    # Lcom/android/server/wm/WindowState;

    const/16 v3, 0xb

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_24

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_24

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_24
    return-void
.end method

.method public monitor()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    monitor-exit v1

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method moveInputMethodDialogsLocked(I)V
    .registers 10
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v7}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    if-ltz p1, :cond_44

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    if-ge p1, v7, :cond_32

    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_32

    add-int/lit8 p1, p1, 0x1

    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_56

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_56

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_56
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .registers 15
    .param p1    # Z

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v6, :cond_12

    if-nez v0, :cond_12

    move v9, v10

    :goto_11
    return v9

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v8

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    if-ltz v5, :cond_9d

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v5, v1, :cond_29

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    move-object v4, v9

    :cond_29
    if-eqz v6, :cond_6b

    move-object v2, v6

    :goto_2c
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    if-lez v9, :cond_41

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget v9, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v9, :cond_41

    move-object v2, v3

    :cond_41
    if-ne v4, v2, :cond_7b

    add-int/lit8 v7, v5, 0x1

    :goto_45
    if-ge v7, v1, :cond_51

    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v9, :cond_75

    :cond_51
    add-int/lit8 v7, v7, 0x1

    :goto_53
    if-ge v7, v1, :cond_5f

    invoke-virtual {v8, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v9, :cond_78

    :cond_5f
    if-lt v7, v1, :cond_7b

    if-eqz v6, :cond_69

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v9, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    :cond_69
    move v9, v10

    goto :goto_11

    :cond_6b
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    move-object v2, v9

    goto :goto_2c

    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_7b
    if-eqz v6, :cond_99

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v9, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    if-lez v0, :cond_91

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    :cond_91
    :goto_91
    if-eqz p1, :cond_96

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    :cond_96
    move v9, v11

    goto/16 :goto_11

    :cond_99
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_91

    :cond_9d
    if-eqz v6, :cond_ad

    invoke-direct {p0, v10, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    iput-object v4, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    if-lez v0, :cond_91

    invoke-virtual {p0, v12}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_91

    :cond_ad
    invoke-virtual {p0, v12}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_91
.end method

.method moveStackWindowsLocked(Lcom/android/server/wm/TaskStack;)V
    .registers 14
    .param p1    # Lcom/android/server/wm/TaskStack;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v2, :cond_2f

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    :goto_1e
    if-ltz v7, :cond_2c

    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_1e

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v2, :cond_63

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v8, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WindowManagerService;->findAppWindowInsertionPointLocked(Lcom/android/server/wm/AppWindowToken;)I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_49
    if-ge v7, v3, :cond_60

    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_5d

    invoke-direct {p0, v0, v4, v9}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(Lcom/android/server/wm/DisplayContent;ILcom/android/server/wm/WindowToken;)I

    move-result v1

    if-eq v1, v4, :cond_5c

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_5c
    move v4, v1

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_63
    const/4 v10, 0x3

    invoke-direct {p0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v10

    if-nez v10, :cond_71

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    :cond_71
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v10}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method public moveTaskToBottom(I)V
    .registers 10
    .param p1    # I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_44

    :try_start_7
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    if-nez v3, :cond_34

    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveTaskToBottom: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found in mTaskIdToTask"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_41

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_33
    return-void

    :cond_34
    :try_start_34
    iget-object v2, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->moveTaskToBottom(Lcom/android/server/wm/Task;)Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->moveStackWindowsLocked(Lcom/android/server/wm/TaskStack;)V

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_41

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_41
    move-exception v4

    :try_start_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public moveTaskToTop(I)V
    .registers 10
    .param p1    # I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    :try_start_7
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    if-nez v5, :cond_16

    monitor-exit v7
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_35

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_15
    return-void

    :cond_16
    :try_start_16
    iget-object v4, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isHomeStack()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v6

    if-eq v1, v6, :cond_29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->moveHomeStackBox(Z)Z

    :cond_29
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->moveTaskToTop(Lcom/android/server/wm/Task;)Z

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_35

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    :catchall_35
    move-exception v6

    :try_start_36
    monitor-exit v7
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v6
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    if-eqz v2, :cond_f

    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    :cond_f
    return-void

    :catchall_10
    move-exception v3

    :try_start_11
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v3
.end method

.method okToDisplay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onDisplayAdded(I)V
    .registers 6
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Z

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;Z)V

    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 6
    .param p1    # Lcom/android/internal/view/IInputMethodClient;
    .param p2    # Lcom/android/internal/view/IInputContext;

    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 10
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_25

    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_14

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_13
    return v3

    :cond_14
    :try_start_14
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v5, "from-client"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/os/IRemoteCallback;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .registers 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 13
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/os/IRemoteCallback;
    .param p5    # Z

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    monitor-exit v6

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .param p1    # Landroid/os/IBinder;

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_24
    monitor-exit v2

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method pauseRotationLocked()V
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public performBootTimeout()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHeadless:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    const-string v0, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_c

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 8
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_13

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_12
    return-void

    :cond_13
    :try_start_13
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public performEnableScreen()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v15, :cond_f

    monitor-exit v16

    :goto_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v15, :cond_20

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v15, :cond_20

    monitor-exit v16

    goto :goto_e

    :catchall_1d
    move-exception v15

    monitor-exit v16
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v15

    :cond_20
    :try_start_20
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v15, :cond_d7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v17, 0x1110033

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_7d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v15, :cond_7d

    const/4 v13, 0x1

    :goto_43
    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v2, :cond_bb

    invoke-virtual {v14, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x7d4

    move/from16 v0, v17

    if-ne v15, v0, :cond_6b

    iget v15, v12, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v15, :cond_7f

    iget-boolean v15, v12, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v15, :cond_7f

    const/4 v11, 0x1

    :goto_68
    if-nez v11, :cond_81

    const/4 v7, 0x1

    :cond_6b
    :goto_6b
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v15

    if-eqz v15, :cond_83

    iget-boolean v15, v12, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v15, :cond_83

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v15

    if-nez v15, :cond_83

    monitor-exit v16

    goto :goto_e

    :cond_7d
    const/4 v13, 0x0

    goto :goto_43

    :cond_7f
    const/4 v11, 0x0

    goto :goto_68

    :cond_81
    const/4 v7, 0x0

    goto :goto_6b

    :cond_83
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v15

    if-eqz v15, :cond_94

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x7e5

    move/from16 v0, v17

    if-ne v15, v0, :cond_97

    const/4 v6, 0x1

    :cond_94
    :goto_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    :cond_97
    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_a3

    const/4 v5, 0x1

    goto :goto_94

    :cond_a3
    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x7dd

    move/from16 v0, v17

    if-ne v15, v0, :cond_af

    const/4 v8, 0x1

    goto :goto_94

    :cond_af
    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x7d4

    move/from16 v0, v17

    if-ne v15, v0, :cond_94

    const/4 v7, 0x1

    goto :goto_94

    :cond_bb
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v15, :cond_c6

    if-nez v6, :cond_c6

    monitor-exit v16

    goto/16 :goto_e

    :cond_c6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v15, :cond_d7

    if-nez v5, :cond_d0

    if-eqz v7, :cond_d4

    :cond_d0
    if-eqz v13, :cond_d7

    if-nez v8, :cond_d7

    :cond_d4
    monitor-exit v16

    goto/16 :goto_e

    :cond_d7
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_dc
    .catchall {:try_start_20 .. :try_end_dc} :catchall_1d

    :try_start_dc
    const-string v15, "SurfaceFlinger"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_fc

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v15, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v15}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v15, v3, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_fc} :catch_11f
    .catchall {:try_start_dc .. :try_end_fc} :catchall_1d

    :cond_fc
    :goto_fc
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    monitor-exit v16
    :try_end_10c
    .catchall {:try_start_fc .. :try_end_10c} :catchall_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v15}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    goto/16 :goto_e

    :catch_11f
    move-exception v4

    :try_start_120
    const-string v15, "WindowManager"

    const-string v17, "Boot completed: SurfaceFlinger is dead!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_120 .. :try_end_129} :catchall_1d

    goto :goto_fc
.end method

.method public prepareAppTransition(IZ)V
    .registers 8
    .param p1    # I
    .param p2    # Z

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionNone()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->prepare()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_4b
    monitor-exit v1

    return-void

    :cond_4d
    if-nez p2, :cond_30

    const/16 v0, 0x1008

    if-ne p1, v0, :cond_66

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v2, 0x2009

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    goto :goto_30

    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_15 .. :try_end_65} :catchall_63

    throw v0

    :cond_66
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_30

    :try_start_6a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v2, 0x2007

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_63

    goto :goto_30
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 24
    .param p1    # Landroid/view/IWindow;
    .param p2    # Landroid/view/SurfaceSession;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/view/Surface;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    const/4 v15, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_c8

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v9

    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "drag surface"

    const/4 v6, -0x3

    const/4 v7, 0x4

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    invoke-virtual {v9}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V
    :try_end_42
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_42} :catch_85
    .catchall {:try_start_10 .. :try_end_42} :catchall_cb

    :try_start_42
    new-instance v2, Lcom/android/server/wm/DragState;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    iput-object v15, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_5a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_42 .. :try_end_5a} :catch_ce
    .catchall {:try_start_42 .. :try_end_5a} :catchall_c0

    :try_start_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v12, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_76
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5a .. :try_end_76} :catch_85
    .catchall {:try_start_5a .. :try_end_76} :catchall_cb

    move-object v4, v15

    :cond_77
    :goto_77
    :try_start_77
    monitor-exit v16
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_c0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_7c
    :try_start_7c
    const-string v2, "WindowManager"

    const-string v3, "Drag already in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7c .. :try_end_83} :catch_85
    .catchall {:try_start_7c .. :try_end_83} :catchall_cb

    move-object v4, v15

    goto :goto_77

    :catch_85
    move-exception v11

    move-object v4, v15

    :goto_87
    :try_start_87
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " h="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_77

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_77

    :catchall_c0
    move-exception v2

    :goto_c1
    monitor-exit v16
    :try_end_c2
    .catchall {:try_start_87 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw v2
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    :catchall_c3
    move-exception v2

    :goto_c4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_c8
    move-exception v2

    move-object v4, v15

    goto :goto_c4

    :catchall_cb
    move-exception v2

    move-object v4, v15

    goto :goto_c1

    :catch_ce
    move-exception v11

    goto :goto_87
.end method

.method public reboot()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public rebootSafeMode(Z)V
    .registers 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    return-void
.end method

.method final rebuildAppWindowListLocked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 26
    .param p1    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x7918

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    aput-object p2, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_4c

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    :cond_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_50
    const-string v18, "WindowManager"

    const-string v19, "Out of memory for surface!  Looking for leaks..."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v5, 0x0

    :goto_62
    if-ge v5, v9, :cond_1b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_7b
    if-ge v14, v10, :cond_1b3

    invoke-virtual {v15, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13e

    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " surface="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " token="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " uid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl;->destroy()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_13a
    :goto_13a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7b

    :cond_13e
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13a

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13a

    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LEAKED SURFACE (app token hidden): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " surface="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " token="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl;->destroy()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v8, 0x1

    goto :goto_13a

    :cond_1b3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_62

    :cond_1b7
    if-nez v8, :cond_265

    const-string v18, "WindowManager"

    const-string v19, "No leaked surfaces; killing applicatons!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v5, 0x0

    :goto_1c6
    if-ge v5, v9, :cond_265

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    const/4 v14, 0x0

    :goto_1df
    if-ge v14, v10, :cond_22d

    invoke-virtual {v15, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1fa

    :cond_1f7
    :goto_1f7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1df

    :cond_1fa
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f7

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_227
    .catchall {:try_start_50 .. :try_end_227} :catchall_228

    goto :goto_1f7

    :catchall_228
    move-exception v18

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    :cond_22d
    :try_start_22d
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v18

    if-lez v18, :cond_261

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v12, v0, [I

    const/4 v6, 0x0

    :goto_23c
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_24c

    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    aput v18, v12, v6
    :try_end_249
    .catchall {:try_start_22d .. :try_end_249} :catchall_228

    add-int/lit8 v6, v6, 0x1

    goto :goto_23c

    :cond_24c
    :try_start_24c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v18, v0

    const-string v19, "Free memory"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-interface {v0, v12, v1, v2}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_25d
    .catch Landroid/os/RemoteException; {:try_start_24c .. :try_end_25d} :catch_2c4
    .catchall {:try_start_24c .. :try_end_25d} :catchall_228

    move-result v18

    if-eqz v18, :cond_261

    const/4 v7, 0x1

    :cond_261
    :goto_261
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c6

    :cond_265
    if-nez v8, :cond_269

    if-eqz v7, :cond_2b5

    :cond_269
    :try_start_269
    const-string v18, "WindowManager"

    const-string v19, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_2a6

    invoke-virtual {v13}, Landroid/view/SurfaceControl;->destroy()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindow(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_2a6
    .catchall {:try_start_269 .. :try_end_2a6} :catchall_228

    :cond_2a6
    :try_start_2a6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_2b5
    .catch Landroid/os/RemoteException; {:try_start_2a6 .. :try_end_2b5} :catch_2c2
    .catchall {:try_start_2a6 .. :try_end_2b5} :catchall_228

    :cond_2b5
    :goto_2b5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v8, :cond_2bc

    if-eqz v7, :cond_2bf

    :cond_2bc
    const/16 v18, 0x1

    :goto_2be
    return v18

    :cond_2bf
    const/16 v18, 0x0

    goto :goto_2be

    :catch_2c2
    move-exception v18

    goto :goto_2b5

    :catch_2c4
    move-exception v18

    goto :goto_261
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .param p1    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v2

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .registers 3
    .param p1    # Landroid/view/WindowManagerPolicy$PointerEventListener;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    return-void
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 48
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;
    .param p3    # I
    .param p4    # Landroid/view/WindowManager$LayoutParams;
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # Landroid/graphics/Rect;
    .param p10    # Landroid/graphics/Rect;
    .param p11    # Landroid/graphics/Rect;
    .param p12    # Landroid/graphics/Rect;
    .param p13    # Landroid/content/res/Configuration;
    .param p14    # Landroid/view/Surface;

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    if-eqz p4, :cond_2f

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v30, v0

    or-int v23, v29, v30

    const/high16 v29, 0x3ff0000

    and-int v29, v29, v23

    if-eqz v29, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "android.permission.STATUS_BAR"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_2f

    const v29, -0x3ff0001

    and-int v23, v23, v29

    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v30, v0

    monitor-enter v30

    const/16 v29, 0x0

    :try_start_3c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v27

    if-nez v27, :cond_4e

    const/16 v29, 0x0

    monitor-exit v30

    :goto_4d
    return v29

    :cond_4e
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p5

    if-ne v0, v1, :cond_6c

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p6

    if-eq v0, v1, :cond_80

    :cond_6c
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    move/from16 v0, p5

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v0, p6

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_80
    if-eqz p4, :cond_94

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v29, v0

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_94

    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_94
    if-eqz p4, :cond_a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    :cond_a3
    and-int/lit8 v29, p8, 0x2

    if-eqz v29, :cond_da

    const/16 v29, 0x1

    :goto_a9
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    const/4 v6, 0x0

    const/4 v10, 0x0

    if-eqz p4, :cond_111

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_dd

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v31, "Window type can not be changed after the window is added."

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :catchall_d7
    move-exception v29

    monitor-exit v30
    :try_end_d9
    .catchall {:try_start_3c .. :try_end_d9} :catchall_d7

    throw v29

    :cond_da
    const/16 v29, 0x0

    goto :goto_a9

    :cond_dd
    :try_start_dd
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v32, v0

    xor-int v10, v31, v32

    move-object/from16 v0, v29

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    and-int/lit16 v0, v6, 0x4001

    move/from16 v29, v0

    if-eqz v29, :cond_111

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    :cond_111
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_490

    const/16 v29, 0x1

    :goto_127
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    and-int/lit16 v0, v6, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_13f

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    :cond_13f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x4000

    move/from16 v29, v0

    if-eqz v29, :cond_494

    const/16 v20, 0x1

    :goto_155
    if-eqz v20, :cond_4a0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p5

    if-eq v0, v1, :cond_498

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v29, v29, v31

    :goto_175
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p6

    if-eq v0, v1, :cond_49c

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v29, v29, v31

    :goto_199
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    :goto_19f
    const v29, 0x20008

    and-int v29, v29, v10

    if-eqz v29, :cond_4b0

    const/4 v12, 0x1

    :goto_1a7
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v14

    if-eqz v14, :cond_4b3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p7

    if-ne v0, v1, :cond_1c5

    and-int/lit8 v29, v10, 0x8

    if-nez v29, :cond_1c5

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v29, v0

    if-nez v29, :cond_4b3

    :cond_1c5
    const/4 v11, 0x1

    :goto_1c6
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p7

    if-eq v0, v1, :cond_4b6

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v31, 0x100000

    and-int v29, v29, v31

    if-eqz v29, :cond_4b6

    const/16 v26, 0x1

    :goto_1e6
    const/high16 v29, 0x100000

    and-int v29, v29, v10

    if-eqz v29, :cond_4ba

    const/16 v29, 0x1

    :goto_1ee
    or-int v26, v26, v29

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    move/from16 v0, p7

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez p7, :cond_519

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_21c

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v29, v0

    if-nez v29, :cond_519

    :cond_21c
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v29

    if-nez v29, :cond_4be

    const/16 v24, 0x1

    :goto_224
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v29, v0

    if-eqz v29, :cond_237

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->cancelExitAnimationForNextAnimationLocked()V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    :cond_237
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v29, v0

    if-eqz v29, :cond_254

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_254
    const/16 v29, 0x8

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_264

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    :cond_264
    if-eqz v24, :cond_2a2

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v29

    if-eqz v29, :cond_275

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v29

    if-eqz v29, :cond_275

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    :cond_275
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v31, 0x200000

    and-int v29, v29, v31

    if-eqz v29, :cond_28f

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :cond_28f
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v29

    if-eqz v29, :cond_2a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, p13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2a2
    and-int/lit8 v29, v6, 0x8

    if-eqz v29, :cond_2ad

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V
    :try_end_2a9
    .catchall {:try_start_dd .. :try_end_2a9} :catchall_d7

    const/16 v24, 0x1

    const/16 v21, 0x1

    :cond_2ad
    :try_start_2ad
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v29, v0

    if-nez v29, :cond_2b7

    const/16 v21, 0x1

    :cond_2b7
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked()Landroid/view/SurfaceControl;

    move-result-object v22

    if-eqz v22, :cond_4c2

    move-object/from16 v0, p14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2c4} :catch_4c7
    .catchall {:try_start_2ad .. :try_end_2c4} :catchall_d7

    :goto_2c4
    if-eqz v24, :cond_2c7

    move v11, v14

    :cond_2c7
    :try_start_2c7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x7db

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_2ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_2ea

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v12, 0x1

    :cond_2ea
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_34d

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_34d

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_34d

    const v15, 0x480001

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const v31, -0x480002

    and-int v29, v29, v31

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    const v32, 0x480001

    and-int v31, v31, v32

    or-int v29, v29, v31

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_34d
    :goto_34d
    if-eqz v11, :cond_360

    const/16 v29, 0x3

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v29

    if-eqz v29, :cond_360

    const/4 v12, 0x0

    :cond_360
    if-eqz v12, :cond_37b

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v29

    if-nez v29, :cond_370

    if-eqz v24, :cond_37b

    :cond_370
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    :cond_37b
    if-eqz v26, :cond_38f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v31, v0

    or-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_38f
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    and-int/lit8 v29, p8, 0x1

    if-eqz v29, :cond_5da

    const/16 v29, 0x1

    :goto_3a3
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    if-eqz v24, :cond_3db

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3db

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v0, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v29, v0

    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_3db
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3ec

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_3ec
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5de

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v29

    if-eqz v29, :cond_5de

    const/4 v5, 0x1

    :goto_43f
    if-eqz v5, :cond_45e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_45e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRelayoutWhileAnimating:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v30
    :try_end_46e
    .catchall {:try_start_2c7 .. :try_end_46e} :catchall_d7

    if-eqz v7, :cond_473

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_473
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v13, :cond_5e1

    const/16 v29, 0x1

    move/from16 v30, v29

    :goto_47c
    if-eqz v24, :cond_5e7

    const/16 v29, 0x2

    :goto_480
    or-int v30, v30, v29

    if-eqz v21, :cond_5eb

    const/16 v29, 0x4

    :goto_486
    or-int v30, v30, v29

    if-eqz v5, :cond_5ef

    const/16 v29, 0x8

    :goto_48c
    or-int v29, v29, v30

    goto/16 :goto_4d

    :cond_490
    const/16 v29, 0x0

    goto/16 :goto_127

    :cond_494
    const/16 v20, 0x0

    goto/16 :goto_155

    :cond_498
    const/high16 v29, 0x3f800000

    goto/16 :goto_175

    :cond_49c
    const/high16 v29, 0x3f800000

    goto/16 :goto_199

    :cond_4a0
    const/high16 v29, 0x3f800000

    :try_start_4a2
    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F
    :try_end_4ae
    .catchall {:try_start_4a2 .. :try_end_4ae} :catchall_d7

    goto/16 :goto_19f

    :cond_4b0
    const/4 v12, 0x0

    goto/16 :goto_1a7

    :cond_4b3
    const/4 v11, 0x0

    goto/16 :goto_1c6

    :cond_4b6
    const/16 v26, 0x0

    goto/16 :goto_1e6

    :cond_4ba
    const/16 v29, 0x0

    goto/16 :goto_1ee

    :cond_4be
    const/16 v24, 0x0

    goto/16 :goto_224

    :cond_4c2
    :try_start_4c2
    invoke-virtual/range {p14 .. p14}, Landroid/view/Surface;->release()V
    :try_end_4c5
    .catch Ljava/lang/Exception; {:try_start_4c2 .. :try_end_4c5} :catch_4c7
    .catchall {:try_start_4c2 .. :try_end_4c5} :catchall_d7

    goto/16 :goto_2c4

    :catch_4c7
    move-exception v9

    :try_start_4c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    const-string v29, "WindowManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception thrown when creating surface for client "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v29, 0x0

    monitor-exit v30

    goto/16 :goto_4d

    :cond_519
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v29, v0

    if-eqz v29, :cond_585

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v29, v0

    if-nez v29, :cond_585

    const/16 v21, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_54b

    const/16 v25, 0x5

    :cond_54b
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v29

    if-eqz v29, :cond_58a

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v29

    if-eqz v29, :cond_58a

    move v11, v14

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    :goto_568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v29, v0

    if-eqz v29, :cond_585

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v29

    if-nez v29, :cond_585

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_585
    invoke-virtual/range {p14 .. p14}, Landroid/view/Surface;->release()V

    goto/16 :goto_34d

    :cond_58a
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v29

    if-eqz v29, :cond_59f

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_568

    :cond_59f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_5c2

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_568

    :cond_5c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5d6

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    :cond_5d6
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V
    :try_end_5d9
    .catchall {:try_start_4c8 .. :try_end_5d9} :catchall_d7

    goto :goto_568

    :cond_5da
    const/16 v29, 0x0

    goto/16 :goto_3a3

    :cond_5de
    const/4 v5, 0x0

    goto/16 :goto_43f

    :cond_5e1
    const/16 v29, 0x0

    move/from16 v30, v29

    goto/16 :goto_47c

    :cond_5e7
    const/16 v29, 0x0

    goto/16 :goto_480

    :cond_5eb
    const/16 v29, 0x0

    goto/16 :goto_486

    :cond_5ef
    const/16 v29, 0x0

    goto/16 :goto_48c
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 16
    .param p1    # Landroid/os/IBinder;

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    iget-object v13, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    if-eqz v6, :cond_b7

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_b7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v7, 0x1

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v2, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Task;

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-eqz v7, :cond_a9

    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    :goto_5c
    invoke-virtual {v12, v1}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v2, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_69
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_71

    move-object v11, v1

    :cond_71
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_88

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_88
    :goto_88
    if-nez v7, :cond_8f

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_8f
    monitor-exit v13
    :try_end_90
    .catchall {:try_start_1c .. :try_end_90} :catchall_b4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindow(Lcom/android/server/wm/AppWindowToken;)V

    return-void

    :cond_97
    :try_start_97
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    const/4 v7, 0x1

    goto :goto_47

    :cond_a9
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    goto :goto_5c

    :catchall_b4
    move-exception v0

    monitor-exit v13
    :try_end_b6
    .catchall {:try_start_97 .. :try_end_b6} :catchall_b4

    throw v0

    :cond_b7
    :try_start_b7
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_b7 .. :try_end_cf} :catchall_b4

    goto :goto_88
.end method

.method removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z
    .registers 6
    .param p1    # Landroid/view/WindowManagerPolicy$FakeWindow;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .registers 6
    .param p1    # Landroid/view/IRotationWatcher;

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_25

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_28
    monitor-exit v3

    return-void

    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public removeStack(I)I
    .registers 7
    .param p1    # I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->remove()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    monitor-exit v3

    :goto_21
    return v0

    :cond_22
    monitor-exit v3

    const/4 v0, 0x0

    goto :goto_21

    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method removeStartingWindowTimeout(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1    # Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public removeTask(I)V
    .registers 7
    .param p1    # I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    if-nez v1, :cond_f

    monitor-exit v3

    :goto_e
    return-void

    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    monitor-exit v3

    goto :goto_e

    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_c

    monitor-exit v2

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    monitor-exit v2

    goto :goto_b

    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .param p1    # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 11
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Lcom/android/server/wm/WindowState;

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_e

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->removeStartingWindowTimeout(Lcom/android/server/wm/AppWindowToken;)V

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    const/4 v3, 0x0

    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v2, 0x2

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_2e

    const/4 v2, 0x5

    :cond_2e
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v2, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v4

    if-eqz v4, :cond_38

    iput-boolean v6, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    :cond_38
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v4, :cond_47

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v4, p2, v2}, Lcom/android/server/wm/DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_47
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_53

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_6e

    :cond_53
    iput-boolean v6, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v6, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0, v5, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_6a

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_6a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6d
    return-void

    :cond_6e
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    if-eqz v3, :cond_80

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_80

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_80
    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6d
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 15
    .param p1    # Landroid/os/IBinder;

    const-string v9, "android.permission.MANAGE_APP_TOKENS"

    const-string v10, "removeWindowToken()"

    invoke-virtual {p0, v9, v10}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    const/4 v3, 0x0

    :try_start_1a
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowToken;

    if-eqz v8, :cond_98

    const/4 v2, 0x0

    iget-boolean v9, v8, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v9, :cond_7e

    iget-object v9, v8, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v0, :cond_6a

    iget-object v9, v8, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_46

    const/4 v2, 0x1

    :cond_46
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_67

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v9, :cond_63

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v9

    if-eqz v9, :cond_63

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    const/4 v11, 0x2

    invoke-virtual {v9, v7, v11}, Lcom/android/server/wm/DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_63
    const/4 v1, 0x1

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_6a
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_77

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_77
    if-eqz v2, :cond_89

    iget-object v9, v3, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    :goto_7e
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :goto_84
    monitor-exit v10
    :try_end_85
    .catchall {:try_start_1a .. :try_end_85} :catchall_95

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_89
    :try_start_89
    iget v9, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v11, 0x7dd

    if-ne v9, v11, :cond_7e

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7e

    :catchall_95
    move-exception v9

    monitor-exit v10
    :try_end_97
    .catchall {:try_start_89 .. :try_end_97} :catchall_95

    throw v9

    :cond_98
    :try_start_98
    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempted to remove non-existing token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_95

    goto :goto_84
.end method

.method public requestTraversal()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method requestTraversalLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_d
    return-void
.end method

.method public resizeStackBox(IF)V
    .registers 8
    .param p1    # I
    .param p2    # F

    const v2, 0x3e4ccccd

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_e

    const v2, 0x3f4ccccd

    cmpl-float v2, p2, v2

    if-lez v2, :cond_27

    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeStack: weight must be between 0.2 and 0.8, weight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_2a
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v1, :cond_49

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayContent;->resizeStack(IF)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v3

    return-void

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_69

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeStack: stackBoxId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .param p1    # Landroid/os/IBinder;

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_24
    monitor-exit v2

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method resumeRotationLocked()V
    .registers 4

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_1c

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_1c
    return-void
.end method

.method public saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 9
    .param p1    # Lcom/android/server/wm/AppWindowToken;
    .param p2    # Lcom/android/server/wm/WindowState;
    .param p3    # Ljava/lang/String;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4a
    if-eqz p2, :cond_68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_68
    if-eqz p3, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_80
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    return-void
.end method

.method public saveLastInputMethodWindowForTransition()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManagerPolicy;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_14
    monitor-exit v2

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method scheduleAnimationLocked()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-nez v0, :cond_11

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method scheduleRemoveStartingWindow(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1    # Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeStartingWindowTimeout(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;
    .registers 54
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Z

    const-string v6, "android.permission.READ_FRAME_BUFFER"

    const-string v7, "screenshotApplications()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_14
    const/16 v34, 0x0

    const/16 v32, 0x0

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    const/16 v39, 0x0

    const/16 v38, 0x0

    if-nez p1, :cond_47

    const/16 v40, 0x1

    const/16 v33, 0x0

    :goto_27
    const/16 v35, 0x0

    const/4 v14, 0x0

    move/from16 v36, v35

    :goto_2c
    add-int/lit8 v35, v36, 0x1

    if-lez v36, :cond_35

    const-wide/16 v6, 0x64

    :try_start_32
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_393

    :cond_35
    :goto_35
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_3a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    if-nez v19, :cond_4d

    const/4 v4, 0x0

    monitor-exit v7

    :goto_46
    return-object v4

    :cond_47
    const/16 v40, 0x0

    const v33, 0x7fffffff

    goto :goto_27

    :cond_4d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v12, v6, 0x3e8

    add-int/lit16 v12, v12, 0x2710

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_bd

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_bd

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v6, :cond_bd

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_bd

    const/16 v29, 0x1

    :goto_96
    const/16 v28, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v46

    new-instance v41, Landroid/graphics/Rect;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v27, v6, -0x1

    :goto_a8
    if-ltz v27, :cond_189

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v47

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v6, :cond_c0

    :cond_ba
    add-int/lit8 v27, v27, -0x1

    goto :goto_a8

    :cond_bd
    const/16 v29, 0x0

    goto :goto_96

    :cond_c0
    move-object/from16 v0, v47

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v6, v12, :cond_ba

    if-nez v28, :cond_ed

    if-eqz p1, :cond_ed

    move-object/from16 v0, v47

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v6, :cond_d2

    if-nez v29, :cond_ed

    :cond_d2
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_ba

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_ba

    move-object/from16 v14, v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_ed
    move-object/from16 v0, v47

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v25

    move-object/from16 v0, v47

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_194

    if-nez v25, :cond_194

    const/16 v28, 0x1

    :goto_101
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v0, v32

    if-ge v0, v6, :cond_115

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v32, v0

    :cond_115
    move-object/from16 v0, v45

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v0, v33

    if-le v0, v6, :cond_123

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v33, v0

    :cond_123
    move-object/from16 v0, v47

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v6, :cond_16f

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int v30, v6, v8

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int v43, v6, v8

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v37, v6, v8

    move-object/from16 v0, v44

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v6, v8

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v43

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/graphics/Rect;->union(IIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_16f
    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_187

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_187

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-eqz v6, :cond_187

    const/16 v40, 0x1

    :cond_187
    if-eqz v25, :cond_ba

    :cond_189
    if-eqz p1, :cond_198

    if-nez v14, :cond_198

    const/4 v4, 0x0

    monitor-exit v7

    goto/16 :goto_46

    :catchall_191
    move-exception v6

    monitor-exit v7
    :try_end_193
    .catchall {:try_start_3a .. :try_end_193} :catchall_191

    throw v6

    :cond_194
    const/16 v28, 0x0

    goto/16 :goto_101

    :cond_198
    if-nez v40, :cond_212

    :try_start_19a
    monitor-exit v7
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_191

    :goto_19b
    if-nez v40, :cond_1a2

    const/4 v6, 0x3

    move/from16 v0, v35

    if-le v0, v6, :cond_396

    :cond_1a2
    const/4 v6, 0x3

    move/from16 v0, v35

    if-le v0, v6, :cond_1db

    const-string v7, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot max retries "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " appWin="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v14, :cond_288

    const-string v6, "null"

    :goto_1d0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1db
    if-nez v34, :cond_2a5

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot failure taking screenshot for ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to layer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_46

    :cond_212
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_214
    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_225

    if-nez v32, :cond_229

    :cond_225
    const/4 v4, 0x0

    monitor-exit v7

    goto/16 :goto_46

    :cond_229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v38

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v26

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, v26

    int-to-float v8, v0

    div-float/2addr v6, v8

    move/from16 v0, p4

    int-to-float v8, v0

    move/from16 v0, v22

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v39

    move/from16 v0, v21

    int-to-float v6, v0

    mul-float v6, v6, v39

    float-to-int v0, v6

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v6, v0

    mul-float v6, v6, v39

    float-to-int v0, v6

    move/from16 v18, v0

    const/4 v6, 0x1

    move/from16 v0, v38

    if-eq v0, v6, :cond_269

    const/4 v6, 0x3

    move/from16 v0, v38

    if-ne v0, v6, :cond_276

    :cond_269
    move/from16 v42, v21

    move/from16 v21, v18

    move/from16 v18, v42

    const/4 v6, 0x1

    move/from16 v0, v38

    if-ne v0, v6, :cond_285

    const/16 v38, 0x3

    :cond_276
    :goto_276
    move/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v33

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v34

    monitor-exit v7
    :try_end_283
    .catchall {:try_start_214 .. :try_end_283} :catchall_191

    goto/16 :goto_19b

    :cond_285
    const/16 v38, 0x1

    goto :goto_276

    :cond_288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " drawState="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1d0

    :cond_2a5
    if-eqz p5, :cond_387

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_2a9
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    new-instance v31, Landroid/graphics/Matrix;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v38

    move/from16 v1, v21

    move/from16 v2, v18

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    neg-float v6, v6

    move-object/from16 v0, v24

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    neg-float v7, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v6, -0x1000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    new-array v5, v6, [I

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v13, 0x1

    const/4 v6, 0x0

    aget v23, v5, v6

    const/16 v27, 0x0

    :goto_322
    array-length v6, v5

    move/from16 v0, v27

    if-ge v0, v6, :cond_32e

    aget v6, v5, v27

    move/from16 v0, v23

    if-eq v6, v0, :cond_38d

    const/4 v13, 0x0

    :cond_32e
    if-eqz v13, :cond_382

    const-string v7, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenshot "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " was monochrome("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")! mSurfaceLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v14, :cond_390

    iget-object v6, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_35f
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " maxLayer="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_382
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_46

    :cond_387
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    goto/16 :goto_2a9

    :cond_38d
    add-int/lit8 v27, v27, 0x1

    goto :goto_322

    :cond_390
    const-string v6, "null"

    goto :goto_35f

    :catch_393
    move-exception v6

    goto/16 :goto_35

    :cond_396
    move/from16 v36, v35

    goto/16 :goto_2c
.end method

.method sendNewConfiguration()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 20
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Landroid/os/Bundle;
    .param p7    # Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_46

    :cond_c
    move/from16 v9, p7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_14
    if-lez v7, :cond_44

    add-int/lit8 v7, v7, -0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    :goto_26
    if-lez v8, :cond_14

    add-int/lit8 v8, v8, -0x1

    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    :try_start_32
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_48

    const/16 p7, 0x0

    goto :goto_26

    :cond_44
    if-eqz v9, :cond_46

    :cond_46
    const/4 v0, 0x0

    return-object v0

    :catch_48
    move-exception v0

    goto :goto_26
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .param p1    # I
    .param p2    # F

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    packed-switch p1, :pswitch_data_2a

    :goto_19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void

    :pswitch_21
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_19

    :pswitch_24
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_19

    :pswitch_27
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    goto :goto_19

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 6
    .param p1    # [F

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-lt v0, v2, :cond_22

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    :cond_22
    array-length v0, p1

    if-lt v0, v3, :cond_2d

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    :cond_2d
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3a

    aget v0, p1, v3

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1    # Landroid/os/IBinder;
    .param p2    # Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_b
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .registers 10
    .param p1    # Landroid/os/IBinder;
    .param p2    # I

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppGroupId()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_34
    return-void

    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    if-nez v1, :cond_58

    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v5, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-direct {p0, p2, v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->createTask(IIILcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_58
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_34

    :catchall_5f
    move-exception v3

    monitor-exit v4
    :try_end_61
    .catchall {:try_start_15 .. :try_end_61} :catchall_5f

    throw v3
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .registers 8
    .param p1    # Landroid/view/IApplicationToken;
    .param p2    # I

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_38
    return-void

    :cond_39
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_38

    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V
    .registers 33
    .param p1    # Landroid/os/IBinder;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/content/res/CompatibilityInfo;
    .param p5    # Ljava/lang/CharSequence;
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I
    .param p10    # Landroid/os/IBinder;
    .param p11    # Z

    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingWindow()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v19

    if-nez v19, :cond_3d

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v20

    :goto_3c
    return-void

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v2

    if-nez v2, :cond_48

    monitor-exit v20

    goto :goto_3c

    :catchall_45
    move-exception v2

    monitor-exit v20
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :try_start_48
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_50

    monitor-exit v20

    goto :goto_3c

    :cond_50
    if-eqz p10, :cond_1fb

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v17

    if-eqz v17, :cond_1fb

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_182

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_6d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    :cond_6d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeStartingWindowTimeout(Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_fc

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :cond_fc
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_107

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    :cond_107
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_11c

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    :cond_11c
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_131

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_131
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_16b

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    :cond_16b
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v20

    goto/16 :goto_3c

    :cond_182
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_1af

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    monitor-exit v20

    goto/16 :goto_3c

    :cond_1af
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1fb

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1ce

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    :cond_1ce
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    :cond_1fb
    if-nez p11, :cond_200

    monitor-exit v20

    goto/16 :goto_3c

    :cond_200
    if-eqz p3, :cond_248

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v11

    if-nez v11, :cond_219

    monitor-exit v20

    goto/16 :goto_3c

    :cond_219
    iget-object v2, v11, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_226

    monitor-exit v20

    goto/16 :goto_3c

    :cond_226
    iget-object v2, v11, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_233

    monitor-exit v20

    goto/16 :goto_3c

    :cond_233
    iget-object v2, v11, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_248

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_27b

    const/high16 v2, 0x100000

    or-int p9, p9, v2

    :cond_248
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    new-instance v2, Lcom/android/server/wm/StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v12}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    monitor-exit v20

    goto/16 :goto_3c

    :cond_27b
    monitor-exit v20
    :try_end_27c
    .catchall {:try_start_48 .. :try_end_27c} :catchall_45

    goto/16 :goto_3c
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 12
    .param p1    # Landroid/os/IBinder;
    .param p2    # Z

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppVisibility()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_37

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_36
    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_9f

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_9f

    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v3, p2, :cond_4e

    monitor-exit v8

    goto :goto_36

    :catchall_4b
    move-exception v0

    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    if-nez p2, :cond_90

    :goto_50
    :try_start_50
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_5b

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz p2, :cond_92

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v0, :cond_8e

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_8e

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_8e
    :goto_8e
    monitor-exit v8

    goto :goto_36

    :cond_90
    move v0, v2

    goto :goto_50

    :cond_92
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v0, :cond_8e

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->waitingToHide:Z

    goto :goto_8e

    :cond_9f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_50 .. :try_end_b2} :catchall_4b

    goto :goto_36
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .registers 7
    .param p1    # Landroid/os/IBinder;

    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_34
    return-void

    :cond_35
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    monitor-exit v2

    goto :goto_34

    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setCurrentUser(I)V
    .registers 8
    .param p1    # I

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_3
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1}, Landroid/view/WindowManagerPolicy;->setCurrentUserLw(I)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v2, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/DisplayContent;->switchUserStacks(II)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked(Lcom/android/server/wm/DisplayContent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2b
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v5

    return-void

    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v4
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .param p1    # Z

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    :cond_20
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->sendScreenStatusToClientsLocked()V

    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 11
    .param p1    # Landroid/os/IBinder;
    .param p2    # Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    const/4 v0, 0x0

    if-nez p1, :cond_3e

    :try_start_1a
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3c

    move v0, v4

    :goto_1f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2a

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_3a

    if-eqz v0, :cond_3a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3a
    monitor-exit v6

    :goto_3b
    return-void

    :cond_3c
    move v0, v5

    goto :goto_1f

    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_61

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_3b

    :catchall_5e
    move-exception v4

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_1a .. :try_end_60} :catchall_5e

    throw v4

    :cond_61
    :try_start_61
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v7, v1, :cond_70

    move v0, v4

    :goto_66
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2a

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_5e

    goto :goto_2a

    :cond_70
    move v0, v5

    goto :goto_66
.end method

.method setFocusedStackFrame()V
    .registers 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v3, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V

    :goto_1a
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    if-nez v3, :cond_2b

    :try_start_1f
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackFrame:Lcom/android/server/wm/FocusedStackFrame;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/FocusedStackFrame;->setVisibility(Z)V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_3f

    :goto_25
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void

    :cond_29
    const/4 v3, 0x0

    goto :goto_1a

    :cond_2b
    :try_start_2b
    iget-object v1, v3, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v0, v1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_34

    const/4 v2, 0x1

    :cond_34
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackFrame:Lcom/android/server/wm/FocusedStackFrame;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/FocusedStackFrame;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackFrame:Lcom/android/server/wm/FocusedStackFrame;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/FocusedStackFrame;->setVisibility(Z)V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_3f

    goto :goto_25

    :catchall_3f
    move-exception v5

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v5
.end method

.method setFocusedStackLayer()V
    .registers 7

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_32

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_11
    if-ltz v1, :cond_32

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackLayer:I

    if-le v0, v4, :cond_2f

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackLayer:I

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackFrame:Lcom/android/server/wm/FocusedStackFrame;

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedStackLayer:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/FocusedStackFrame;->setLayer(I)V

    return-void
.end method

.method public setForcedDisplayDensity(II)V
    .registers 8
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz p1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only set the default display"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "display_density_forced"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_37
    monitor-exit v2

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setForcedDisplaySize(III)V
    .registers 13
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    if-eqz p1, :cond_1c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can only set the default display"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    const/16 v2, 0xc8

    const/16 v1, 0xc8

    const/4 v0, 0x2

    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_6b

    const/16 v4, 0xc8

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v4, 0xc8

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "display_size_forced"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6b
    monitor-exit v5

    return-void

    :catchall_6d
    move-exception v4

    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_24 .. :try_end_6f} :catchall_6d

    throw v4
.end method

.method public setHardKeyboardEnabled(Z)V
    .registers 5
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v0, p1, :cond_10

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .registers 7
    .param p1    # Lcom/android/server/wm/Session;

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_15

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v2, p1, :cond_15

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget v4, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v0, v1, :cond_2b

    if-eqz v0, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->keepScreenOnStartedLw()V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_3

    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2b
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 4
    .param p1    # Landroid/view/IInputFilter;

    const-string v0, "android.permission.FILTER_EVENTS"

    const-string v1, "setInputFilter()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FILTER_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 8
    .param p1    # I

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_27

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    :goto_13
    if-lez v3, :cond_27

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_13

    :cond_27
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2d
    if-lez v1, :cond_41

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_2d

    :cond_41
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;
    .param p3    # I
    .param p4    # Landroid/graphics/Rect;
    .param p5    # Landroid/graphics/Rect;
    .param p6    # Landroid/graphics/Region;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4f

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_47

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    :cond_3f
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_4c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception v3

    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMagnificationCallbacks(Landroid/view/IMagnificationCallbacks;)V
    .registers 5
    .param p1    # Landroid/view/IMagnificationCallbacks;

    const-string v0, "android.permission.MAGNIFY_DISPLAY"

    const-string v1, "setMagnificationCallbacks()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MAGNIFY_DISPLAY permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-nez v0, :cond_22

    new-instance v0, Lcom/android/server/wm/DisplayMagnifier;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IMagnificationCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    :cond_20
    :goto_20
    monitor-exit v1

    return-void

    :cond_22
    if-nez p1, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayMagnifier;->destroyLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    goto :goto_20

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    :try_start_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Magnification callbacks already set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 5
    .param p1    # Landroid/view/MagnificationSpec;

    const-string v0, "android.permission.MAGNIFY_DISPLAY"

    const-string v1, "setMagnificationSpec()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MAGNIFY_DISPLAY permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_35

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_2c

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_2c
    return-void

    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Magnification callbacks not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v0
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    const-string v0, "new-config"

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_27
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .registers 4
    .param p1    # Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setOverscan(IIIII)V
    .registers 13
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_23

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V

    :cond_23
    monitor-exit v6

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v6
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .registers 17
    .param p1    # Lcom/android/server/wm/AppWindowToken;
    .param p2    # Landroid/view/WindowManager$LayoutParams;
    .param p3    # Z
    .param p4    # I
    .param p5    # Z

    const/4 v2, 0x0

    iget-boolean v8, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v8, p3, :cond_d

    if-nez p3, :cond_5c

    const/4 v8, 0x1

    :goto_8
    iput-boolean v8, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    :cond_d
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    iget-boolean v8, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-ne v8, p3, :cond_d1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, -0x1

    if-eq p4, v8, :cond_44

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v8, v9, :cond_26

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :cond_26
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/4 v4, 0x1

    move v2, v4

    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_43

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v8, :cond_43

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_43

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual {v8, v7, p4}, Lcom/android/server/wm/DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_43
    const/4 v1, 0x1

    :cond_44
    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_4b
    if-ge v3, v0, :cond_ac

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v8, :cond_5e

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_5c
    const/4 v8, 0x0

    goto :goto_8

    :cond_5e
    if-eqz p3, :cond_86

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-nez v8, :cond_59

    if-nez v4, :cond_7f

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v8, :cond_7f

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_7f

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wm/DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_7f
    const/4 v1, 0x1

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_59

    :cond_86
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_59

    if-nez v4, :cond_a5

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v8, :cond_a5

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_a5

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    const/4 v9, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wm/DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_a5
    const/4 v1, 0x1

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_59

    :cond_ac
    if-nez p3, :cond_f8

    const/4 v8, 0x1

    :goto_af
    iput-boolean v8, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v8, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez p3, :cond_fa

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    :cond_ba
    :goto_ba
    if-eqz v1, :cond_d1

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p5, :cond_cb

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_cb
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_d1
    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_d8

    const/4 v2, 0x1

    :cond_d8
    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_e0
    if-ltz v3, :cond_10b

    if-nez v2, :cond_10b

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v8

    if-eqz v8, :cond_f5

    const/4 v2, 0x1

    :cond_f5
    add-int/lit8 v3, v3, -0x1

    goto :goto_e0

    :cond_f8
    const/4 v8, 0x0

    goto :goto_af

    :cond_fa
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_ba

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v8

    if-nez v8, :cond_ba

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_ba

    :cond_10b
    return v2
.end method

.method public setTouchExplorationEnabled(Z)V
    .registers 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->setTouchExplorationEnabled(Z)V

    return-void
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;
    .param p3    # Landroid/graphics/Region;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1f

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_17

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V

    :cond_17
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setUniverseTransformLocked(Lcom/android/server/wm/WindowState;FFFFFFF)V
    .registers 19
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v9, p2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    invoke-virtual {v9}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v1, 0x5

    aput p4, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v1, 0x0

    aput p5, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v1, 0x3

    aput p6, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v1, 0x1

    aput p7, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v1, 0x4

    aput p8, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    new-instance v6, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v1, v6, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v6, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v6, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .registers 8
    .param p1    # I

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_8
    if-lez v0, :cond_2e

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :goto_1a
    if-lez v1, :cond_8

    add-int/lit8 v1, v1, -0x1

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_1a

    :cond_2e
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    :cond_18
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_a

    monitor-exit v2

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_16

    if-nez p2, :cond_15

    monitor-exit v2

    goto :goto_9

    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    const/4 v0, 0x1

    :cond_16
    :try_start_16
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_1c

    monitor-exit v2

    goto :goto_9

    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_12

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_9
.end method

.method public showStrictModeViolation(Z)V
    .registers 7
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHeadless:Z

    if-eqz v1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x19

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v3, v4, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_1a
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public shutdown(Z)V
    .registers 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .registers 10
    .param p1    # Landroid/os/IBinder;
    .param p2    # I

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    if-nez p2, :cond_1f

    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_1f

    monitor-exit v4

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_46

    :cond_29
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_1e

    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_43

    throw v3

    :cond_46
    :try_start_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_43

    goto :goto_1e
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 11
    .param p1    # Lcom/android/server/wm/AppWindowToken;
    .param p2    # I

    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_45

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-nez v3, :cond_2f

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v4, v3, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v6, :cond_2f

    invoke-direct {p0, v4, v4, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZII)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_2f
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_45

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iput-boolean v6, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_45
    return-void
.end method

.method public startFreezingScreen(II)V
    .registers 10
    .param p1    # I
    .param p2    # I

    const-string v2, "android.permission.FREEZE_SCREEN"

    const-string v3, "startFreezingScreen()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FREEZE_SCREEN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_15
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v2, :cond_37

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_3e

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_21
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZII)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_39

    :try_start_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_37
    monitor-exit v3

    return-void

    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public startViewServer(I)Z
    .registers 6
    .param p1    # I

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    const-string v2, "android.permission.DUMP"

    const-string v3, "startViewServer"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x400

    if-lt p1, v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v1

    goto :goto_7

    :catch_29
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_32
    :try_start_32
    new-instance v2, Lcom/android/server/wm/ViewServer;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3e} :catch_40

    move-result v1

    goto :goto_7

    :catch_40
    move-exception v0

    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public statusBarVisibilityChanged(I)V
    .registers 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_15
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1    # Landroid/os/IBinder;
    .param p2    # Z

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_21

    :cond_1f
    monitor-exit v4

    :goto_20
    return-void

    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_20

    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public stopFreezingScreen()V
    .registers 5

    const-string v2, "android.permission.FREEZE_SCREEN"

    const-string v3, "stopFreezingScreen()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FREEZE_SCREEN permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_15
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    const-string v2, "client"

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_31

    move-result-wide v0

    :try_start_24
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2a
    monitor-exit v3

    return-void

    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public stopViewServer()Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_7
.end method

.method public switchKeyboardLayout(II)V
    .registers 4
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    return-void
.end method

.method public systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    return-void
.end method

.method public thawRotation()V
    .registers 7

    const/4 v5, 0x0

    const-string v2, "android.permission.SET_ORIENTATION"

    const-string v3, "thawRotation()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires SET_ORIENTATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_17
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x0

    const/16 v4, 0x309

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_26

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void

    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .registers 3
    .param p1    # Landroid/view/WindowManagerPolicy$PointerEventListener;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .registers 13
    .param p1    # Lcom/android/server/wm/AppWindowToken;
    .param p2    # Z
    .param p3    # Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v4, :cond_5e

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_38

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_35

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_2e

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_2e

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    :cond_2e
    iput v5, v3, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    const/4 v2, 0x1

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_38
    if-nez p3, :cond_3c

    if-eqz v2, :cond_54

    :cond_3c
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean v5, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_54
    if-eqz p2, :cond_5e

    if-eqz v2, :cond_5b

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_5b
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_5e
    return-void
.end method

.method public updateAppOpsState()V
    .registers 13

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_3
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_48

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v3, :cond_45

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget v7, v4, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_40

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v9, v4, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v10

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v10, v11}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_43

    const/4 v7, 0x1

    :goto_3d
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_43
    const/4 v7, 0x0

    goto :goto_3d

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_48
    monitor-exit v8

    return-void

    :catchall_4a
    move-exception v7

    monitor-exit v8
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v7
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 8
    .param p1    # Landroid/content/res/Configuration;
    .param p2    # Landroid/os/IBinder;

    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .registers 6
    .param p1    # Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v2

    :cond_f
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v2, v3, :cond_25

    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2a

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public updateRotation(ZZ)V
    .registers 3
    .param p1    # Z
    .param p2    # Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    return-void
.end method

.method public updateRotationUnchecked(ZZ)V
    .registers 9
    .param p1    # Z
    .param p2    # Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_1a

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    :cond_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_26

    if-nez v0, :cond_1f

    if-eqz p1, :cond_22

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    :cond_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception v3

    :try_start_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v3
.end method

.method public updateRotationUncheckedLocked(Z)Z
    .registers 19
    .param p1    # Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v4, :cond_8

    const/4 v4, 0x0

    :goto_7
    return v4

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    goto :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v4, :cond_23

    const/4 v4, 0x0

    goto :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v4

    if-nez v4, :cond_50

    const/4 v10, 0x1

    :goto_42
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-ne v4, v3, :cond_52

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-ne v4, v10, :cond_52

    const/4 v4, 0x0

    goto :goto_7

    :cond_50
    const/4 v10, 0x0

    goto :goto_42

    :cond_52
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0xb

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    const/4 v4, 0x2

    new-array v11, v4, [I

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_112

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v11, v5

    aput v6, v11, v4

    :goto_9a
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(ZII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->computeScreenConfigurationLocked(Landroid/content/res/Configuration;)Z

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    if-nez p1, :cond_bf

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :cond_bf
    if-eqz v2, :cond_de

    :try_start_c1
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v4

    if-eqz v4, :cond_de

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    iget v8, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z

    move-result v4

    if-eqz v4, :cond_de

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_de
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionFromWindowManager()V
    :try_end_e5
    .catchall {:try_start_c1 .. :try_end_e5} :catchall_11a

    if-nez p1, :cond_ea

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_ea
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_f4
    if-ltz v14, :cond_121

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v15, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_10c

    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    :cond_10c
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    add-int/lit8 v14, v14, -0x1

    goto :goto_f4

    :cond_112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v11}, Landroid/view/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    goto :goto_9a

    :catchall_11a
    move-exception v4

    if-nez p1, :cond_120

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_120
    throw v4

    :cond_121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_12b
    if-ltz v14, :cond_13d

    :try_start_12d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IRotationWatcher;

    invoke-interface {v4, v3}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_13a} :catch_157

    :goto_13a
    add-int/lit8 v14, v14, -0x1

    goto :goto_12b

    :cond_13d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v4, :cond_154

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_154

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    :cond_154
    const/4 v4, 0x1

    goto/16 :goto_7

    :catch_157
    move-exception v4

    goto :goto_13a
.end method

.method updateStatusBarVisibilityLocked(I)V
    .registers 11
    .param p1    # I

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_42

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    :try_start_16
    iget v1, v6, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    xor-int v2, v1, p1

    and-int/lit8 v2, v2, 0x7

    xor-int/lit8 v7, p1, -0x1

    and-int/2addr v2, v7

    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v7, v1

    and-int v8, p1, v2

    or-int v4, v7, v8

    if-eq v4, v1, :cond_30

    iget v7, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    iput v4, v6, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_30
    if-ne v4, v1, :cond_38

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v7, :cond_3f

    :cond_38
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v8, v6, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v7, v8, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_3f} :catch_43

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_42
    return-void

    :catch_43
    move-exception v7

    goto :goto_3f
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 15
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # Z

    const/4 v11, 0x0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_23

    iget v10, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_59

    iget v10, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    :cond_19
    :goto_19
    iget v10, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_64

    iget v10, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    :cond_23
    :goto_23
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_29
    if-lez v0, :cond_6f

    add-int/lit8 v0, v0, -0x1

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    iget-object v10, v7, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :cond_3b
    :goto_3b
    if-lez v1, :cond_29

    add-int/lit8 v1, v1, -0x1

    iget-object v10, v7, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v8, v5, v2, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v10

    if-eqz v10, :cond_3b

    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/RectF;)V

    const/4 p2, 0x0

    goto :goto_3b

    :cond_59
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_19

    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_19

    :cond_64
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_23

    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_23

    :cond_6f
    return-void
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 24
    .param p1    # Lcom/android/server/wm/WindowState;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_139

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move/from16 v16, v0

    :goto_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v9, v2, p2

    if-lez v9, :cond_141

    int-to-float v2, v9

    mul-float/2addr v2, v15

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    :goto_36
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v2, v11, :cond_144

    const/4 v10, 0x1

    :goto_3d
    if-eqz v10, :cond_43

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    :cond_43
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_53

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_5e

    :cond_53
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/4 v12, 0x1

    :cond_5e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_147

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move/from16 v17, v0

    :goto_6d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move/from16 v18, v0

    :goto_7c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v8, v2, p3

    if-lez v8, :cond_14f

    int-to-float v2, v8

    mul-float v2, v2, v17

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    :goto_95
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v2, v11, :cond_a0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    :cond_a0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v17

    if-nez v2, :cond_b0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_bd

    :cond_b0
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v12, 0x1

    :cond_bd
    if-eqz v12, :cond_138

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_138

    if-eqz p4, :cond_d1

    :try_start_cb
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    :cond_d1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    if-eqz p4, :cond_138

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_138

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_fa} :catch_152

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_133

    :try_start_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_10a
    .catch Ljava/lang/InterruptedException; {:try_start_101 .. :try_end_10a} :catch_154
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10a} :catch_152

    :goto_10a
    const-wide/16 v2, 0x96

    add-long/2addr v2, v13

    :try_start_10d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_133

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    :cond_133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_138} :catch_152

    :cond_138
    :goto_138
    return v10

    :cond_139
    const/high16 v15, 0x3f000000

    goto/16 :goto_f

    :cond_13d
    const/high16 v16, -0x40800000

    goto/16 :goto_1e

    :cond_141
    const/4 v11, 0x0

    goto/16 :goto_36

    :cond_144
    const/4 v10, 0x0

    goto/16 :goto_3d

    :cond_147
    const/high16 v17, 0x3f000000

    goto/16 :goto_6d

    :cond_14b
    const/high16 v18, -0x40800000

    goto/16 :goto_7c

    :cond_14f
    const/4 v11, 0x0

    goto/16 :goto_95

    :catch_152
    move-exception v2

    goto :goto_138

    :catch_154
    move-exception v2

    goto :goto_10a
.end method

.method updateWallpaperVisibilityLocked()V
    .registers 13

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v9, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1a
    if-lez v0, :cond_52

    add-int/lit8 v0, v0, -0x1

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    iget-boolean v9, v6, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v9, v7, :cond_35

    if-nez v7, :cond_50

    move v9, v10

    :goto_2d
    iput-boolean v9, v6, Lcom/android/server/wm/WindowToken;->hidden:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iput-boolean v10, v9, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_35
    iget-object v9, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :goto_3b
    if-lez v1, :cond_1a

    add-int/lit8 v1, v1, -0x1

    iget-object v9, v6, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_4c

    invoke-virtual {p0, v8, v5, v2, v11}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_4c
    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_3b

    :cond_50
    move v9, v11

    goto :goto_2d

    :cond_52
    return-void
.end method

.method public validateAppTokens(ILjava/util/List;)V
    .registers 22
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    if-gez v7, :cond_1a

    const-string v15, "WindowManager"

    const-string v17, "validateAppTokens: empty task list"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v16

    :goto_19
    return-void

    :cond_1a
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskGroup;

    iget v10, v9, Lcom/android/server/wm/TaskGroup;->taskId:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_56

    const-string v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "validateAppTokens: no Display for taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v16

    goto :goto_19

    :catchall_53
    move-exception v15

    monitor-exit v16
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_53

    throw v15

    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v15}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v11, v15, -0x1

    :goto_6c
    if-ltz v11, :cond_ce

    if-ltz v7, :cond_ce

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    iget-object v6, v15, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskGroup;

    iget-object v13, v9, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    move-object v4, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eq v3, v4, :cond_9f

    const-string v15, "WindowManager"

    const-string v17, "validateAppTokens: displayContent changed in TaskGroup list!"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v16

    goto/16 :goto_19

    :cond_9f
    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    iget-object v15, v9, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v14, v15, -0x1

    :goto_ad
    if-ltz v12, :cond_ca

    if-ltz v14, :cond_ca

    invoke-virtual {v6, v12}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v15, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v15, :cond_be

    add-int/lit8 v12, v12, -0x1

    goto :goto_ad

    :cond_be
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_12f

    :cond_ca
    if-gez v12, :cond_ce

    if-ltz v14, :cond_135

    :cond_ce
    if-gez v11, :cond_d2

    if-ltz v7, :cond_12c

    :cond_d2
    const-string v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "validateAppTokens: Mismatch! ActivityManager="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "validateAppTokens: Mismatch! WindowManager="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "validateAppTokens: Mismatch! Callers="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    monitor-exit v16
    :try_end_12d
    .catchall {:try_start_56 .. :try_end_12d} :catchall_53

    goto/16 :goto_19

    :cond_12f
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_ad

    :cond_135
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_6c
.end method

.method public validateStackOrder([Ljava/lang/Integer;)V
    .registers 2
    .param p1    # [Ljava/lang/Integer;

    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 10
    .param p1    # Ljava/net/Socket;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v5, 0x0

    :cond_7
    :goto_7
    return v5

    :cond_8
    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_4c
    .catchall {:try_start_e .. :try_end_1e} :catchall_57

    if-eqz v2, :cond_39

    :try_start_20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_39
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_64
    .catchall {:try_start_20 .. :try_end_41} :catchall_61

    if-eqz v4, :cond_67

    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_48

    move-object v3, v4

    goto :goto_7

    :catch_48
    move-exception v1

    const/4 v5, 0x0

    move-object v3, v4

    goto :goto_7

    :catch_4c
    move-exception v1

    :goto_4d
    const/4 v5, 0x0

    if-eqz v3, :cond_7

    :try_start_50
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_7

    :catch_54
    move-exception v1

    const/4 v5, 0x0

    goto :goto_7

    :catchall_57
    move-exception v6

    :goto_58
    if-eqz v3, :cond_5d

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    :cond_5d
    :goto_5d
    throw v6

    :catch_5e
    move-exception v1

    const/4 v5, 0x0

    goto :goto_5d

    :catchall_61
    move-exception v6

    move-object v3, v4

    goto :goto_58

    :catch_64
    move-exception v1

    move-object v3, v4

    goto :goto_4d

    :cond_67
    move-object v3, v4

    goto :goto_7
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 16
    .param p1    # Ljava/net/Socket;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v9, 0x0

    :cond_7
    :goto_7
    return v9

    :cond_8
    const/4 v9, 0x1

    new-instance v11, Lcom/android/server/wm/WindowList;

    invoke-direct {v11}, Lcom/android/server/wm/WindowList;-><init>()V

    iget-object v13, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_11
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v6, :cond_2c

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_6c

    const/4 v7, 0x0

    :try_start_2e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v13, 0x2000

    invoke-direct {v8, v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3e} :catch_82
    .catchall {:try_start_2e .. :try_end_3e} :catchall_8f

    :try_start_3e
    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v1, :cond_6f

    invoke-virtual {v11, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v12, 0x20

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/16 v12, 0xa

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_69} :catch_9c
    .catchall {:try_start_3e .. :try_end_69} :catchall_99

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :catchall_6c
    move-exception v12

    :try_start_6d
    monitor-exit v13
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v12

    :cond_6f
    :try_start_6f
    const-string v12, "DONE.\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_9c
    .catchall {:try_start_6f .. :try_end_77} :catchall_99

    if-eqz v8, :cond_9f

    :try_start_79
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7e

    move-object v7, v8

    goto :goto_7

    :catch_7e
    move-exception v4

    const/4 v9, 0x0

    move-object v7, v8

    goto :goto_7

    :catch_82
    move-exception v4

    :goto_83
    const/4 v9, 0x0

    if-eqz v7, :cond_7

    :try_start_86
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8b

    goto/16 :goto_7

    :catch_8b
    move-exception v4

    const/4 v9, 0x0

    goto/16 :goto_7

    :catchall_8f
    move-exception v12

    :goto_90
    if-eqz v7, :cond_95

    :try_start_92
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    :cond_95
    :goto_95
    throw v12

    :catch_96
    move-exception v4

    const/4 v9, 0x0

    goto :goto_95

    :catchall_99
    move-exception v12

    move-object v7, v8

    goto :goto_90

    :catch_9c
    move-exception v4

    move-object v7, v8

    goto :goto_83

    :cond_9f
    move-object v7, v8

    goto/16 :goto_7
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .param p1    # Ljava/net/Socket;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v10, 0x0

    :cond_7
    :goto_7
    return v10

    :cond_8
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v12, 0x20

    :try_start_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v12, -0x1

    if-ne v6, v12, :cond_1b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    :cond_1b
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x10

    invoke-static {v2, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_50

    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_37
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_b5
    .catchall {:try_start_e .. :try_end_3a} :catchall_f1

    move-result-object v11

    if-nez v11, :cond_53

    const/4 v10, 0x0

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_43
    if-eqz v9, :cond_48

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_48
    if-eqz v7, :cond_7

    :try_start_4a
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_7

    :catch_4e
    move-exception v12

    goto :goto_7

    :cond_50
    :try_start_50
    const-string p3, ""

    goto :goto_37

    :cond_53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v12, "android.view.IWindow"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v3, v9, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v12

    if-nez v12, :cond_a1

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_98} :catch_b5
    .catchall {:try_start_50 .. :try_end_98} :catchall_f1

    :try_start_98
    const-string v12, "DONE\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a0} :catch_107
    .catchall {:try_start_98 .. :try_end_a0} :catchall_104

    move-object v7, v8

    :cond_a1
    if-eqz v3, :cond_a6

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_a6
    if-eqz v9, :cond_ab

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_ab
    if-eqz v7, :cond_7

    :try_start_ad
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b2

    goto/16 :goto_7

    :catch_b2
    move-exception v12

    goto/16 :goto_7

    :catch_b5
    move-exception v4

    :goto_b6
    :try_start_b6
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not send command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with parameters "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_b6 .. :try_end_dc} :catchall_f1

    const/4 v10, 0x0

    if-eqz v3, :cond_e2

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_e2
    if-eqz v9, :cond_e7

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_e7
    if-eqz v7, :cond_7

    :try_start_e9
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ee

    goto/16 :goto_7

    :catch_ee
    move-exception v12

    goto/16 :goto_7

    :catchall_f1
    move-exception v12

    :goto_f2
    if-eqz v3, :cond_f7

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_f7
    if-eqz v9, :cond_fc

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_fc
    if-eqz v7, :cond_101

    :try_start_fe
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102

    :cond_101
    :goto_101
    throw v12

    :catch_102
    move-exception v13

    goto :goto_101

    :catchall_104
    move-exception v12

    move-object v7, v8

    goto :goto_f2

    :catch_107
    move-exception v4

    move-object v7, v8

    goto :goto_b6
.end method

.method public waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z
    .registers 11
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/os/IRemoteCallback;

    const/4 v3, 0x1

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_a
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x18

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    monitor-exit v4

    :goto_2d
    return v3

    :cond_2e
    const-string v3, "WindowManager"

    const-string v5, "waitForWindowDrawn: win null"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :cond_36
    const/4 v3, 0x0

    goto :goto_2d

    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_38

    throw v3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/IBinder;
    .param p2    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .registers 7
    .param p1    # Landroid/view/IRotationWatcher;

    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v0, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_c
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_20
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    :goto_19
    :try_start_19
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v3

    return v2

    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v2

    :catch_20
    move-exception v2

    goto :goto_19
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 9
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/os/IBinder;
    .param p3    # Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2c

    throw v0

    :cond_2c
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    :cond_34
    :goto_34
    return-object v1

    :cond_35
    if-eqz p1, :cond_34

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_6c

    throw v0

    :cond_6c
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_34
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1    # Lcom/android/server/wm/Session;
    .param p2    # Landroid/view/IWindow;
    .param p3    # Z

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
