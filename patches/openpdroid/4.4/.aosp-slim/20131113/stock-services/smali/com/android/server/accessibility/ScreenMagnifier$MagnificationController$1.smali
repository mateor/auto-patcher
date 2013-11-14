.class Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/view/MagnificationSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTempTransformationSpec:Landroid/view/MagnificationSpec;

.field final synthetic this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field final synthetic val$this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->this$1:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iput-object p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->val$this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->mTempTransformationSpec:Landroid/view/MagnificationSpec;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    .registers 8
    .param p1    # F
    .param p2    # Landroid/view/MagnificationSpec;
    .param p3    # Landroid/view/MagnificationSpec;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->mTempTransformationSpec:Landroid/view/MagnificationSpec;

    iget v1, p2, Landroid/view/MagnificationSpec;->scale:F

    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v1, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, p2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # F
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;

    check-cast p2, Landroid/view/MagnificationSpec;

    check-cast p3, Landroid/view/MagnificationSpec;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;->evaluate(FLandroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0
.end method
