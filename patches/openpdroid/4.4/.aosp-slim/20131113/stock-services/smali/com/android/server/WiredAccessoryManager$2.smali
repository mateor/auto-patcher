.class Lcom/android/server/WiredAccessoryManager$2;
.super Landroid/os/Handler;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/os/Handler$Callback;
    .param p4    # Z

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/WiredAccessoryManager;->access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
