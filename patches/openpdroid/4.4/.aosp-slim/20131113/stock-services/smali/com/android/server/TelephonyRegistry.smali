.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput-boolean v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    new-instance v1, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :cond_5f
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Bundle;
    .registers 2
    .param p0    # Lcom/android/server/TelephonyRegistry;

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0    # Lcom/android/server/TelephonyRegistry;

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .registers 9
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p1, :cond_37

    :try_start_6
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_3d
    .catchall {:try_start_6 .. :try_end_b} :catchall_3f

    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_37
    :try_start_37
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3f

    goto :goto_b

    :catch_3d
    move-exception v3

    goto :goto_b

    :catchall_3f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .registers 14
    .param p1    # I
    .param p2    # Z
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/net/LinkProperties;
    .param p7    # Landroid/net/LinkCapabilities;
    .param p8    # Z

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_1c

    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1c
    if-eqz p3, :cond_23

    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    if-eqz p6, :cond_35

    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    if-eqz p7, :cond_3c

    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3c
    if-eqz p8, :cond_43

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_43
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8
    .param p1    # Landroid/telephony/ServiceState;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_2f
    .catchall {:try_start_4 .. :try_end_d} :catchall_2a

    :goto_d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_2a
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_2f
    move-exception v4

    goto :goto_d
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .registers 8
    .param p1    # Landroid/telephony/SignalStrength;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_30
    .catchall {:try_start_4 .. :try_end_9} :catchall_2b

    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_2b
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_30
    move-exception v4

    goto :goto_9
.end method

.method private checkListenerPermission(I)V
    .registers 5
    .param p1    # I

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_b
.end method

.method private handleRemoveListLocked()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_e

    :cond_1e
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_23
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6
    .param p1    # Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_22

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    monitor-exit v3

    goto :goto_1e

    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 8
    .param p1    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2    # I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_17

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_19

    and-int/2addr v4, p2

    if-eqz v4, :cond_17

    const/4 v3, 0x1

    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_13

    :catchall_19
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_36
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "last known state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallIncomingNumber="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mServiceState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSignalStrength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMessageWaiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallForwarding="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionPossible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionReason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionApn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkProperties="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellLocation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCellInfo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registrations: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c5

    :catchall_1fa
    move-exception v3

    monitor-exit v4
    :try_end_1fc
    .catchall {:try_start_36 .. :try_end_1fc} :catchall_1fa

    throw v3

    :cond_1fd
    :try_start_1fd
    monitor-exit v4
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fa

    goto/16 :goto_32
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 20
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3    # I
    .param p4    # Z

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz p3, :cond_150

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    const/4 v8, 0x0

    :try_start_13
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_f7

    move-result v1

    const/4 v6, 0x0

    move-object v9, v8

    :goto_1f
    if-ge v6, v1, :cond_de

    :try_start_21
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_158

    :try_start_29
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_d9

    :goto_2d
    iget v11, v8, Lcom/android/server/TelephonyRegistry$Record;->events:I

    xor-int v11, v11, p3

    and-int v10, p3, v11

    move/from16 v0, p3

    iput v0, v8, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_f7

    if-eqz p4, :cond_d7

    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_49

    :try_start_3d
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/telephony/ServiceState;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_49} :catch_fa
    .catchall {:try_start_3d .. :try_end_49} :catchall_f7

    :cond_49
    :goto_49
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_5d

    :try_start_4d
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v5, v13, :cond_5a

    const/4 v5, -0x1

    :cond_5a
    invoke-interface {v11, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5d} :catch_102
    .catchall {:try_start_4d .. :try_end_5d} :catchall_f7

    :cond_5d
    :goto_5d
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_68

    :try_start_61
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_68} :catch_10a
    .catchall {:try_start_61 .. :try_end_68} :catchall_f7

    :cond_68
    :goto_68
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_73

    :try_start_6c
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_73} :catch_112
    .catchall {:try_start_6c .. :try_end_73} :catchall_f7

    :cond_73
    :goto_73
    const/16 v11, 0x10

    :try_start_75
    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_f7

    move-result v11

    if-eqz v11, :cond_87

    :try_start_7b
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_87} :catch_11a
    .catchall {:try_start_7b .. :try_end_87} :catchall_f7

    :cond_87
    :goto_87
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_94

    :try_start_8b
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_94} :catch_122
    .catchall {:try_start_8b .. :try_end_94} :catchall_f7

    :cond_94
    :goto_94
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_a1

    :try_start_98
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a1} :catch_12a
    .catchall {:try_start_98 .. :try_end_a1} :catchall_f7

    :cond_a1
    :goto_a1
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_ae

    :try_start_a7
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ae} :catch_132
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_f7

    :cond_ae
    :goto_ae
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_bb

    :try_start_b4
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_bb} :catch_13a
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_f7

    :cond_bb
    :goto_bb
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_c8

    :try_start_c1
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c8} :catch_142
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_f7

    :cond_c8
    :goto_c8
    const/16 v11, 0x400

    :try_start_ca
    invoke-direct {p0, v8, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_f7

    move-result v11

    if-eqz v11, :cond_d7

    :try_start_d0
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d7} :catch_149
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_f7

    :cond_d7
    :goto_d7
    :try_start_d7
    monitor-exit v12
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_f7

    :goto_d8
    return-void

    :cond_d9
    add-int/lit8 v6, v6, 0x1

    move-object v9, v8

    goto/16 :goto_1f

    :cond_de
    :try_start_de
    new-instance v8, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_158

    :try_start_e4
    iput-object v2, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    iput v3, v8, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2d

    :catchall_f7
    move-exception v11

    :goto_f8
    monitor-exit v12
    :try_end_f9
    .catchall {:try_start_e4 .. :try_end_f9} :catchall_f7

    throw v11

    :catch_fa
    move-exception v4

    :try_start_fb
    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_49

    :catch_102
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_5d

    :catch_10a
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_68

    :catch_112
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_73

    :catch_11a
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_87

    :catch_122
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_94

    :catch_12a
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a1

    :catch_132
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_ae

    :catch_13a
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_bb

    :catch_142
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_c8

    :catch_149
    move-exception v4

    iget-object v11, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_14f
    .catchall {:try_start_fb .. :try_end_14f} :catchall_f7

    goto :goto_d7

    :cond_150
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_d8

    :catchall_158
    move-exception v11

    move-object v8, v9

    goto :goto_f8
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 8
    .param p1    # Z

    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 9
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-string v3, "notifyCallState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_37

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_16

    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37

    goto :goto_16

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v3

    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_37

    move-result v3

    if-eqz v3, :cond_14

    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37

    goto :goto_14

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v3

    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    goto :goto_8
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 8
    .param p1    # Landroid/os/Bundle;

    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_3c

    move-result v3

    if-eqz v3, :cond_14

    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_33
    .catchall {:try_start_28 .. :try_end_32} :catchall_3c

    goto :goto_14

    :catch_33
    move-exception v0

    :try_start_34
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v3

    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_3c

    goto :goto_8
.end method

.method public notifyDataActivity(I)V
    .registers 8
    .param p1    # I

    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .registers 24
    .param p1    # I
    .param p2    # Z
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/net/LinkProperties;
    .param p7    # Landroid/net/LinkCapabilities;
    .param p8    # I
    .param p9    # Z

    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v12, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_73

    :try_start_10
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_28

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v12, 0x1

    :cond_28
    :goto_28
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_43

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v12, 0x1

    :cond_43
    if-eqz v12, :cond_8c

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4b
    :goto_4b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_70

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4b

    :try_start_5d
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_66} :catch_67
    .catchall {:try_start_5d .. :try_end_66} :catchall_70

    goto :goto_4b

    :catch_67
    move-exception v10

    :try_start_68
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :catchall_70
    move-exception v1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_70

    throw v1

    :cond_73
    :try_start_73
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v12, 0x1

    goto :goto_28

    :cond_89
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    :cond_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_73 .. :try_end_8d} :catchall_70

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyMessageWaitingChanged(Z)V
    .registers 8
    .param p1    # Z

    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyOtaspChanged(I)V
    .registers 8
    .param p1    # I

    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .registers 8
    .param p1    # Landroid/telephony/ServiceState;

    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_3a

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31
    .catchall {:try_start_26 .. :try_end_30} :catchall_3a

    goto :goto_14

    :catch_31
    move-exception v0

    :try_start_32
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v3

    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_8
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 9
    .param p1    # Landroid/telephony/SignalStrength;

    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_4e

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_30

    :try_start_26
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_51
    .catchall {:try_start_26 .. :try_end_30} :catchall_4e

    :cond_30
    :goto_30
    :try_start_30
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_4e

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    :try_start_36
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_41

    const/4 v1, -0x1

    :cond_41
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_45
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e

    goto :goto_14

    :catch_45
    move-exception v0

    :try_start_46
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v4

    :catch_51
    move-exception v0

    :try_start_52
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_5a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_4e

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_8
.end method

.method public systemRunning()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
