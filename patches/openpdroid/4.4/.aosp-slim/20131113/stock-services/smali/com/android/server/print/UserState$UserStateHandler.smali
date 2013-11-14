.class final Lcom/android/server/print/UserState$UserStateHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserStateHandler"
.end annotation


# static fields
.field public static final MSG_DISPATCH_PRINT_JOB_STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1    # Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobId;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    # invokes: Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V
    invoke-static {v2, v1, v0}, Lcom/android/server/print/UserState;->access$500(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V

    :cond_10
    return-void
.end method
