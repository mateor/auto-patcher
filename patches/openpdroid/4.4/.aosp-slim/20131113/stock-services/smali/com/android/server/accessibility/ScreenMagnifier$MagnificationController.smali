.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnificationController"
.end annotation


# static fields
.field private static final PROPERTY_NAME_MAGNIFICATION_SPEC:Ljava/lang/String; = "magnificationSpec"


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTransformationAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V
    .registers 9
    .param p2    # J

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    const-class v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const-class v3, Landroid/view/MagnificationSpec;

    const-string v4, "magnificationSpec"

    invoke-static {v2, v3, v4}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v1

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/MagnificationSpec;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .registers 6
    .param p1    # Landroid/view/MagnificationSpec;
    .param p2    # Landroid/view/MagnificationSpec;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getMinOffsetX()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v1

    sub-float v2, v1, v2

    return v2
.end method

.method private getMinOffsetY()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v1

    sub-float v2, v1, v2

    return v2
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getOffsetX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getScale()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public isMagnifying()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public offsetMagnifiedRegionCenter(FF)V
    .registers 8
    .param p1    # F
    .param p2    # F

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, v2, p1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v1, v2, p2

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    return-void
.end method

.method public reset(Z)V
    .registers 5
    .param p1    # Z

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    :goto_1b
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    goto :goto_1b
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 4
    .param p1    # Landroid/view/MagnificationSpec;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2800(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-static {p1}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public setMagnifiedRegionCenter(FFZ)V
    .registers 5
    .param p1    # F
    .param p2    # F
    .param p3    # Z

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 19
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v12}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v11, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v10, v11, Landroid/view/MagnificationSpec;->scale:F

    iget v12, v11, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v12, v13

    div-float v8, v12, v10

    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v12, v13

    div-float v9, v12, v10

    iget v12, v11, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v12, v12

    add-float v12, v12, p2

    div-float v4, v12, v10

    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v12, v12

    add-float v12, v12, p3

    div-float v5, v12, v10

    sub-float v12, v8, v4

    div-float v13, v10, p1

    mul-float v6, v12, v13

    sub-float v12, v9, v5

    div-float v13, v10, p1

    mul-float v7, v12, v13

    add-float v1, v4, v6

    add-float v2, v5, v7

    move/from16 v0, p4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    return-void
.end method

.method public setScaleAndMagnifiedRegionCenter(FFFZ)V
    .registers 7
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # Z

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->updateMagnificationSpec(FFF)V

    if-eqz p4, :cond_42

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    :goto_38
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2700(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    goto :goto_1e

    :cond_42
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    goto :goto_38
.end method

.method public updateMagnificationSpec(FFF)V
    .registers 12
    .param p1    # F
    .param p2    # F
    .param p3    # F

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v5, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    mul-float v6, p2, p1

    sub-float v1, v5, v6

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    mul-float v6, p3, p1

    sub-float v2, v5, v6

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v5, Landroid/view/MagnificationSpec;->offsetY:F

    return-void
.end method
