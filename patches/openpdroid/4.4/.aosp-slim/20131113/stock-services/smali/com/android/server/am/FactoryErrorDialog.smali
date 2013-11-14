.class final Lcom/android/server/am/FactoryErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "FactoryErrorDialog.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/am/FactoryErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/FactoryErrorDialog$1;-><init>(Lcom/android/server/am/FactoryErrorDialog;)V

    iput-object v1, p0, Lcom/android/server/am/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Lcom/android/server/am/FactoryErrorDialog;->setCancelable(Z)V

    const v1, 0x104036c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/FactoryErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/FactoryErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    const v2, 0x104036f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/FactoryErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/android/server/am/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Factory Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method
