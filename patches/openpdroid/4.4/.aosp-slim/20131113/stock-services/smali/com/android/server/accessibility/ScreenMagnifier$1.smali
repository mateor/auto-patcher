.class Lcom/android/server/accessibility/ScreenMagnifier$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1    # Landroid/os/Message;

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_36

    :goto_5
    return-void

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    invoke-static {v7, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$000(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_5

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRectangleOnScreenRequested(IIII)V
    invoke-static {v7, v3, v6, v4, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$100(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :pswitch_28
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnUserContextChanged()V
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$200(Lcom/android/server/accessibility/ScreenMagnifier;)V

    goto :goto_5

    :pswitch_2e
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRotationChanged(I)V
    invoke-static {v7, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$300(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_5

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method
