.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth Adapter name changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_33

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v3}, Lcom/android/server/BluetoothManagerService;->access$100(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    monitor-enter v3

    :try_start_43
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;I)V

    :cond_59
    :goto_59
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)V

    :cond_66
    :goto_66
    monitor-exit v3

    goto :goto_33

    :catchall_68
    move-exception v2

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_43 .. :try_end_6a} :catchall_68

    throw v2

    :cond_6b
    :try_start_6b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;I)V

    goto :goto_59

    :cond_72
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_68

    goto :goto_66

    :cond_86
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x12c

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_33

    :cond_aa
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    monitor-enter v3

    :try_start_b9
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_db

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_db

    const-string v2, "BluetoothManagerService"

    const-string v4, "Auto-enabling Bluetooth."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v2, v4}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;Z)V

    :cond_db
    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_b9 .. :try_end_dc} :catchall_f2

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "BluetoothManagerService"

    const-string v3, "Retrieving Bluetooth Adapter name and address..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService;->getNameAndAddress()V

    goto/16 :goto_33

    :catchall_f2
    move-exception v2

    :try_start_f3
    monitor-exit v3
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v2
.end method
