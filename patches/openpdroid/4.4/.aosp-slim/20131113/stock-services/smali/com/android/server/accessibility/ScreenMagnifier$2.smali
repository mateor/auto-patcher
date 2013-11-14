.class Lcom/android/server/accessibility/ScreenMagnifier$2;
.super Landroid/os/AsyncTask;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    iput p2, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->val$scale:F

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1    # [Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$2600(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$2;->val$scale:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    const/4 v0, 0x0

    return-object v0
.end method
