.class Lcom/android/server/usb/UsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    # invokes: Lcom/android/server/usb/UsbService;->setCurrentUser(I)V
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbService;->access$000(Lcom/android/server/usb/UsbService;I)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    # getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_28
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    # getter for: Lcom/android/server/usb/UsbService;->mSettingsByUser:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3

    goto :goto_18

    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v2
.end method
