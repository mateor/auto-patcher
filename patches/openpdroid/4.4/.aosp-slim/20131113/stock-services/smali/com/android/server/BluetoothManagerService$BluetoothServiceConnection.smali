.class Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothServiceConnection"
.end annotation


# instance fields
.field private mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/BluetoothManagerService;
    .param p2    # Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;)V

    return-void
.end method


# virtual methods
.method public isGetNameAddressOnly()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->mGetNameAddressOnly:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothServiceConnection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.bluetooth.btservice.AdapterService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :goto_37
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_42
    return-void

    :cond_43
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_37

    :cond_53
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothServiceConnection, disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.bluetooth.btservice.AdapterService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :goto_37
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_40
    return-void

    :cond_41
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_37

    :cond_51
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public setGetNameAddressOnly(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->mGetNameAddressOnly:Z

    return-void
.end method
