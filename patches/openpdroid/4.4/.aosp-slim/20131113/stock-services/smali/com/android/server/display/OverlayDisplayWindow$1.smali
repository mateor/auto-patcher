.class Lcom/android/server/display/OverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1    # I

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # invokes: Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$100(Lcom/android/server/display/OverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    goto :goto_19
.end method

.method public onDisplayRemoved(I)V
    .registers 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->access$000(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$1;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    :cond_11
    return-void
.end method
