.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const-string v9, "bluetooth_manager"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v3, :cond_28

    :try_start_22
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_bb

    :cond_28
    move v4, v7

    :goto_29
    if-nez v4, :cond_36

    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_36} :catch_be

    :cond_36
    :goto_36
    if-eqz v0, :cond_3e

    :try_start_38
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_c9

    :cond_3e
    move v1, v7

    :goto_3f
    if-nez v1, :cond_4c

    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4c} :catch_cc

    :cond_4c
    :goto_4c
    if-eqz v5, :cond_54

    :try_start_4e
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v9

    if-nez v9, :cond_d7

    :cond_54
    move v6, v7

    :goto_55
    if-nez v6, :cond_62

    const-string v9, "ShutdownThread"

    const-string v10, "Turning off radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_62} :catch_da

    :cond_62
    :goto_62
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_ba

    if-nez v1, :cond_85

    :try_start_75
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_e7

    move-result v9

    if-nez v9, :cond_e5

    move v1, v7

    :goto_7c
    if-eqz v1, :cond_85

    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    if-nez v6, :cond_97

    :try_start_87
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_f3

    move-result v9

    if-nez v9, :cond_f1

    move v6, v7

    :goto_8e
    if-eqz v6, :cond_97

    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    if-nez v4, :cond_a9

    :try_start_99
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9c} :catch_ff

    move-result v9

    if-ne v9, v7, :cond_fd

    move v4, v7

    :goto_a0
    if-eqz v4, :cond_a9

    const-string v9, "ShutdownThread"

    const-string v10, "NFC turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    if-eqz v6, :cond_109

    if-eqz v1, :cond_109

    if-eqz v4, :cond_109

    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v7, v9, v8

    :cond_ba
    return-void

    :cond_bb
    move v4, v8

    goto/16 :goto_29

    :catch_be
    move-exception v2

    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto/16 :goto_36

    :cond_c9
    move v1, v8

    goto/16 :goto_3f

    :catch_cc
    move-exception v2

    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto/16 :goto_4c

    :cond_d7
    move v6, v8

    goto/16 :goto_55

    :catch_da
    move-exception v2

    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x1

    goto/16 :goto_62

    :cond_e5
    move v1, v8

    goto :goto_7c

    :catch_e7
    move-exception v2

    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_7c

    :cond_f1
    move v6, v8

    goto :goto_8e

    :catch_f3
    move-exception v2

    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x1

    goto :goto_8e

    :cond_fd
    move v4, v8

    goto :goto_a0

    :catch_ff
    move-exception v2

    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto :goto_a0

    :cond_109
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_69
.end method
