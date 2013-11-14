.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0xfaL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d


# instance fields
.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    const-string v0, "APP_STATE_IDLE"

    goto :goto_1a

    :pswitch_1e
    const-string v0, "APP_STATE_READY"

    goto :goto_1a

    :pswitch_21
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_1a

    :pswitch_24
    const-string v0, "APP_STATE_TIMEOUT"

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

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0    # I

    sparse-switch p0, :sswitch_data_2e

    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    :sswitch_6
    const-string v0, "TRANSIT_UNSET"

    goto :goto_5

    :sswitch_9
    const-string v0, "TRANSIT_NONE"

    goto :goto_5

    :sswitch_c
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_5

    :sswitch_f
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_5

    :sswitch_12
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_5

    :sswitch_15
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_5

    :sswitch_18
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_5

    :sswitch_1b
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_5

    :sswitch_1e
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_5

    :sswitch_21
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_5

    :sswitch_24
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_5

    :sswitch_27
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_5

    :sswitch_2a
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_5

    nop

    :sswitch_data_2e
    .sparse-switch
        -0x1 -> :sswitch_6
        0x0 -> :sswitch_9
        0x1006 -> :sswitch_f
        0x1008 -> :sswitch_15
        0x100a -> :sswitch_1b
        0x100d -> :sswitch_24
        0x100e -> :sswitch_27
        0x2000 -> :sswitch_c
        0x2007 -> :sswitch_12
        0x2009 -> :sswitch_18
        0x200b -> :sswitch_1e
        0x200c -> :sswitch_21
        0x200f -> :sswitch_2a
    .end sparse-switch
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0    # I
    .param p1    # F

    const/high16 v1, 0x3f800000

    sub-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    int-to-float v1, p0

    :goto_10
    return v1

    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_10
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .registers 21
    .param p1    # I
    .param p2    # Z
    .param p3    # I
    .param p4    # I

    const/4 v11, 0x0

    if-eqz p2, :cond_76

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000

    const/high16 v8, 0x3f800000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    move-object v11, v15

    :goto_57
    sparse-switch p1, :sswitch_data_a0

    const-wide/16 v13, 0xfa

    :goto_5c
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v11

    :cond_76
    const/16 v6, 0x100e

    move/from16 v0, p1

    if-eq v0, v6, :cond_82

    const/16 v6, 0x200f

    move/from16 v0, p1

    if-ne v0, v6, :cond_8f

    :cond_82
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_57

    :cond_8f
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000

    const/high16 v8, 0x3f800000

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_57

    :sswitch_99
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    goto :goto_5c

    nop

    :sswitch_data_a0
    .sparse-switch
        0x1006 -> :sswitch_99
        0x2007 -> :sswitch_99
    .end sparse-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7
    .param p1    # Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_27

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_27

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_c
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_17

    const-string v0, "android"

    :cond_17
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    :goto_23
    return-object v2

    :cond_24
    const-string v0, "android"

    goto :goto_c

    :cond_27
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    if-eqz p1, :cond_18

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_b

    const-string p1, "android"

    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    move v0, p2

    :cond_e
    if-eqz v0, :cond_15

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_1a

    :pswitch_1e
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_1a

    :pswitch_21
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_1a

    :pswitch_24
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_1a

    :pswitch_27
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_1a

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;
    .registers 30
    .param p1    # I
    .param p2    # Z
    .param p3    # Z
    .param p4    # I
    .param p5    # I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    if-lez v23, :cond_a0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    if-lez v21, :cond_a4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    :goto_1e
    if-eqz p3, :cond_d2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_a8

    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000

    const/high16 v7, 0x3f800000

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v5, v19

    :goto_7f
    sparse-switch p1, :sswitch_data_182

    const-wide/16 v17, 0xfa

    :goto_84
    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v5

    :cond_a0
    const/high16 v22, 0x3f800000

    goto/16 :goto_f

    :cond_a4
    const/high16 v20, 0x3f800000

    goto/16 :goto_1e

    :cond_a8
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v12, 0x3f800000

    div-float/2addr v12, v8

    invoke-static {v11, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_7f

    :cond_d2
    if-eqz p2, :cond_109

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_fe

    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v10, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v11, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_7f

    :cond_fe
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_7f

    :cond_109
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_12a

    const/16 v7, 0x100e

    move/from16 v0, p1

    if-ne v0, v7, :cond_11f

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_7f

    :cond_11f
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/high16 v9, 0x3f800000

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_7f

    :cond_12a
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000

    const/high16 v12, 0x3f800000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v7, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object v9, v4

    move v11, v6

    move v13, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object/from16 v5, v19

    goto/16 :goto_7f

    :sswitch_178
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    goto/16 :goto_84

    nop

    :sswitch_data_182
    .sparse-switch
        0x1006 -> :sswitch_178
        0x2007 -> :sswitch_178
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_32

    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_c0

    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_45

    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_45
    return-void

    :pswitch_46
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    :pswitch_6d
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_37

    :pswitch_96
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_37

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_6d
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    return-void
.end method

.method getAppTransition()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1    # Landroid/graphics/Point;

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method goodToGo()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method isReady()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionNone()Z
    .registers 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .param p1    # Landroid/view/WindowManager$LayoutParams;
    .param p2    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_14
    if-eqz v0, :cond_1b

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .registers 14
    .param p1    # Landroid/view/WindowManager$LayoutParams;
    .param p2    # I
    .param p3    # Z
    .param p4    # I
    .param p5    # I

    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_13

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_e
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    :goto_12
    return-object v6

    :cond_13
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_e

    :cond_16
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_20

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_12

    :cond_20
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v5, :cond_28

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v1, :cond_3a

    :cond_28
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v5, :cond_38

    :goto_2c
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_12

    :cond_38
    move v0, v3

    goto :goto_2c

    :cond_3a
    const/4 v7, 0x0

    sparse-switch p2, :sswitch_data_94

    :goto_3e
    if-eqz v7, :cond_91

    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    :goto_44
    goto :goto_12

    :sswitch_45
    if-eqz p3, :cond_49

    move v7, v1

    :goto_48
    goto :goto_3e

    :cond_49
    const/4 v7, 0x5

    goto :goto_48

    :sswitch_4b
    if-eqz p3, :cond_4f

    const/4 v7, 0x6

    :goto_4e
    goto :goto_3e

    :cond_4f
    const/4 v7, 0x7

    goto :goto_4e

    :sswitch_51
    if-eqz p3, :cond_56

    const/16 v7, 0x8

    :goto_55
    goto :goto_3e

    :cond_56
    const/16 v7, 0x9

    goto :goto_55

    :sswitch_59
    if-eqz p3, :cond_5e

    const/16 v7, 0xa

    :goto_5d
    goto :goto_3e

    :cond_5e
    const/16 v7, 0xb

    goto :goto_5d

    :sswitch_61
    if-eqz p3, :cond_66

    const/16 v7, 0xc

    :goto_65
    goto :goto_3e

    :cond_66
    const/16 v7, 0xd

    goto :goto_65

    :sswitch_69
    if-eqz p3, :cond_6e

    const/16 v7, 0xe

    :goto_6d
    goto :goto_3e

    :cond_6e
    const/16 v7, 0xf

    goto :goto_6d

    :sswitch_71
    if-eqz p3, :cond_76

    const/16 v7, 0x10

    :goto_75
    goto :goto_3e

    :cond_76
    const/16 v7, 0x11

    goto :goto_75

    :sswitch_79
    if-eqz p3, :cond_7e

    const/16 v7, 0x12

    :goto_7d
    goto :goto_3e

    :cond_7e
    const/16 v7, 0x13

    goto :goto_7d

    :sswitch_81
    if-eqz p3, :cond_86

    const/16 v7, 0x14

    :goto_85
    goto :goto_3e

    :cond_86
    const/16 v7, 0x15

    goto :goto_85

    :sswitch_89
    if-eqz p3, :cond_8e

    const/16 v7, 0x16

    :goto_8d
    goto :goto_3e

    :cond_8e
    const/16 v7, 0x17

    goto :goto_8d

    :cond_91
    const/4 v6, 0x0

    goto :goto_44

    nop

    :sswitch_data_94
    .sparse-switch
        0x1006 -> :sswitch_45
        0x1008 -> :sswitch_51
        0x100a -> :sswitch_61
        0x100d -> :sswitch_71
        0x100e -> :sswitch_81
        0x2007 -> :sswitch_4b
        0x2009 -> :sswitch_59
        0x200b -> :sswitch_69
        0x200c -> :sswitch_79
        0x200f -> :sswitch_89
    .end sparse-switch
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/os/IRemoteCallback;

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_17
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_1b
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 7
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/os/IRemoteCallback;
    .param p5    # Z

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p5, :cond_1c

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x4

    goto :goto_9

    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1b
.end method

.method postAnimationCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_16
    return-void
.end method

.method prepare()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    :cond_9
    return-void
.end method

.method setAppTransition(I)V
    .registers 2
    .param p1    # I

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1    # I

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    return-void
.end method

.method setIdle()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method setReady()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method setTimeout()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
