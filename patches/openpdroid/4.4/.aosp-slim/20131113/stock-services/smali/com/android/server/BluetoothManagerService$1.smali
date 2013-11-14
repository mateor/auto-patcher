.class Lcom/android/server/BluetoothManagerService$1;
.super Landroid/bluetooth/IBluetoothCallback$Stub;
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

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$1;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(II)V
    .registers 6
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$1;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$1;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
