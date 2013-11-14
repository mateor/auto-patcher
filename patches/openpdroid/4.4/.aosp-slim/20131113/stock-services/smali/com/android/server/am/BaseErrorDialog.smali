.class Lcom/android/server/am/BaseErrorDialog;
.super Landroid/app/AlertDialog;
.source "BaseErrorDialog.java"


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1    # Landroid/content/Context;

    const/high16 v3, 0x20000

    const v1, 0x1030307

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/server/am/BaseErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Error Dialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x1010355

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->setIconAttribute(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/BaseErrorDialog;Z)Z
    .registers 2
    .param p0    # Lcom/android/server/am/BaseErrorDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BaseErrorDialog;Z)V
    .registers 2
    .param p0    # Lcom/android/server/am/BaseErrorDialog;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    return-void
.end method

.method private setEnabled(Z)V
    .registers 4
    .param p1    # Z

    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_e
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1c
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/am/BaseErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1    # Landroid/view/KeyEvent;

    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onStart()V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-direct {p0, v2}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
