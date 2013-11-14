.class final Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$002(Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_a
    const/4 v0, 0x1

    return v0
.end method
