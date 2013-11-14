.class Lcom/android/server/am/CompatModePackages$1;
.super Landroid/os/Handler;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModePackages;


# direct methods
.method constructor <init>(Lcom/android/server/am/CompatModePackages;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/CompatModePackages$1;->this$0:Lcom/android/server/am/CompatModePackages;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages$1;->this$0:Lcom/android/server/am/CompatModePackages;

    invoke-virtual {v0}, Lcom/android/server/am/CompatModePackages;->saveCompatModes()V

    goto :goto_8

    nop

    :pswitch_data_10
    .packed-switch 0x12c
        :pswitch_9
    .end packed-switch
.end method
