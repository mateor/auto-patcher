.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1    # Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1
    .param p0    # Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v16, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v11, 0x0

    :goto_3a
    if-ge v11, v13, :cond_120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v15, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v15, :cond_7b

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_7b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v18

    if-eqz v18, :cond_a9

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_7b
    :goto_7b
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_91
    if-ge v12, v3, :cond_11c

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_91

    :cond_a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_c0
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_c0} :catch_c1
    .catchall {:try_start_2f .. :try_end_c0} :catchall_1c7

    goto :goto_7b

    :catch_c1
    move-exception v9

    :try_start_c2
    const-string v18, "WindowAnimator"

    const-string v19, "Unhandled exception in Window Manager"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_1c7

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_d0
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v7, 0x0

    :goto_e2
    if-ge v7, v13, :cond_1cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v14

    and-int/lit8 v18, v14, 0x4

    if-eqz v18, :cond_116

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_116
    if-eqz v14, :cond_119

    const/4 v10, 0x1

    :cond_119
    add-int/lit8 v7, v7, 0x1

    goto :goto_e2

    :cond_11c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3a

    :cond_120
    const/4 v11, 0x0

    :goto_121
    if-ge v11, v13, :cond_18b

    :try_start_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v15, :cond_14b

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_14b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v18, v0

    if-eqz v18, :cond_188

    if-nez v6, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_188
    add-int/lit8 v11, v11, 0x1

    goto :goto_121

    :cond_18b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_1c2
    .catch Ljava/lang/RuntimeException; {:try_start_123 .. :try_end_1c2} :catch_c1
    .catchall {:try_start_123 .. :try_end_1c2} :catchall_1c7

    :cond_1c2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_d0

    :catchall_1c7
    move-exception v18

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v18

    :cond_1cc
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    if-eqz v18, :cond_1df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v8

    :cond_1df
    if-nez v10, :cond_1e3

    if-eqz v8, :cond_1ec

    :cond_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_1ec
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_8
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3
    .param p0    # I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_1a

    :pswitch_1e
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_1a

    :pswitch_21
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_1a

    :pswitch_24
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_1a

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .registers 2
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    return-void
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .registers 14
    .param p1    # I

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_67

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v3, :cond_64

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_46

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_46

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_49

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    const/4 v9, 0x4

    const-string v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_49
    const/16 v9, 0x8

    const-string v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_46

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_67
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .registers 18
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v6, :cond_72

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/Task;

    iget-object v11, v13, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v11}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v7, :cond_6f

    invoke-virtual {v11, v10}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v13, :cond_49

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v14, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v13, v14, :cond_49

    const/4 v12, 0x1

    :goto_37
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v13, v14}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v13

    if-eqz v13, :cond_4b

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_46
    :goto_46
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_49
    const/4 v12, 0x0

    goto :goto_37

    :cond_4b
    if-eqz v12, :cond_46

    const/4 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "appToken "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " done"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v14}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_46

    :cond_6f
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_72
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_79
    if-ge v5, v1, :cond_c6

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v13, :cond_a0

    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v14, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v13, v14, :cond_a0

    const/4 v12, 0x1

    :goto_8e
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v13, v14}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v13

    if-eqz v13, :cond_a2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_9d
    :goto_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_a0
    const/4 v12, 0x0

    goto :goto_8e

    :cond_a2
    if-eqz v12, :cond_9d

    const/4 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exiting appToken "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " done"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v14}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_9d

    :cond_c6
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .registers 12
    .param p1    # I

    const/high16 v9, 0x100000

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    :goto_18
    if-ltz v4, :cond_7b

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v8, :cond_29

    :cond_26
    :goto_26
    add-int/lit8 v4, v4, -0x1

    goto :goto_18

    :cond_29
    iget v3, v6, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    iget-boolean v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v8, :cond_52

    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_4f

    and-int v8, v3, v9

    if-eqz v8, :cond_40

    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v8

    if-eqz v8, :cond_40

    move-object v2, v5

    :cond_40
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    :cond_4f
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_52
    iget-object v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_26

    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_26

    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v8, :cond_26

    and-int v8, v3, v9

    if-eqz v8, :cond_6b

    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v8

    if-eqz v8, :cond_6b

    move-object v2, v5

    :cond_6b
    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_26

    :cond_7b
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v8, v2, :cond_87

    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_87
    return-void
.end method

.method private updateWindowsLocked(I)V
    .registers 23
    .param p1    # I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v17

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    :goto_2c
    if-ltz v10, :cond_288

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_108

    move-object/from16 v0, v16

    iget-boolean v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v11

    if-eqz v14, :cond_a2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v18, v0

    if-nez v18, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-ne v0, v15, :cond_a2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 2"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v18

    if-eqz v18, :cond_19e

    if-nez v14, :cond_f0

    if-eqz v11, :cond_f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_f0
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v18

    if-eqz v18, :cond_108

    if-eqz v11, :cond_194

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18a

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    :cond_108
    :goto_108
    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_140

    if-eqz v5, :cond_120

    iget-boolean v0, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_140

    :cond_120
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v18

    if-eqz v18, :cond_140

    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_140
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v4, :cond_186

    iget-object v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_186

    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_16c
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_186

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_186
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2c

    :cond_18a
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_108

    :cond_194
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_108

    :cond_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v18

    if-eqz v18, :cond_108

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x80000

    and-int v18, v18, v19

    if-nez v18, :cond_22b

    const/4 v9, 0x1

    :goto_1bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_1e5

    if-nez v9, :cond_1e5

    :cond_1d5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22d

    if-eqz v9, :cond_22d

    :cond_1e5
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v6

    :cond_1f1
    :goto_1f1
    if-eqz v6, :cond_108

    const/high16 v18, 0x100000

    and-int v18, v18, v8

    if-eqz v18, :cond_108

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string v19, "updateWindowsAndWallpaperLocked 4"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_108

    :cond_22b
    const/4 v9, 0x0

    goto :goto_1bf

    :cond_22d
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1f1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_25e

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v18

    if-eqz v18, :cond_25e

    if-nez v12, :cond_252

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_252
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v18, 0x100000

    and-int v18, v18, v8

    if-eqz v18, :cond_25e

    const/4 v13, 0x1

    :cond_25e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_278

    iget v0, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v18, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f1

    :cond_278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_1f1

    :cond_288
    if-eqz v12, :cond_2b6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    :goto_290
    if-ltz v10, :cond_2b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_2b3

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    :cond_2b3
    add-int/lit8 v10, v10, -0x1

    goto :goto_290

    :cond_2b6
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .registers 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_8
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 14
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_27
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_9d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v0, :cond_7e

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_7e
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_92

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_8f
    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_92
    if-eqz p3, :cond_8f

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8f

    :cond_9d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_cc

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cc
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_ea

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ea
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_fb

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_fb
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_116

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    :cond_116
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method getWallpaperAppAnimator()Lcom/android/server/wm/AppWindowAnimator;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_7
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .registers 14
    .param p1    # Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    if-ne v7, p1, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    if-nez v7, :cond_4e

    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_19
    if-ltz v0, :cond_4e

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_29
    if-ltz v1, :cond_48

    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v10, :cond_45

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    const/4 v10, 0x4

    invoke-virtual {p0, v11, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_48
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_4e
    return-void
.end method

.method removeDisplayLocked(I)V
    .registers 4
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .registers 10
    .param p1    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2    # I
    .param p3    # Ljava/lang/String;

    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_10
    if-ltz v2, :cond_34

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_31

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_34
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .registers 5
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4
    .param p1    # I
    .param p2    # Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-void
.end method
