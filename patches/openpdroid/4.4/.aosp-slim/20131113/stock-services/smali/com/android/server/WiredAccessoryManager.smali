.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x1f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    new-instance v1, Lcom/android/server/WiredAccessoryManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1
    .param p0    # Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->bootCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4
    .param p0    # Lcom/android/server/WiredAccessoryManager;
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0    # Lcom/android/server/WiredAccessoryManager;

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 2
    .param p0    # Lcom/android/server/WiredAccessoryManager;

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 2
    .param p0    # Lcom/android/server/WiredAccessoryManager;

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2
    .param p0    # Lcom/android/server/WiredAccessoryManager;

    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .registers 3
    .param p0    # Lcom/android/server/WiredAccessoryManager;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private bootCompleted()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, -0x100

    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_26

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_14

    or-int/lit8 v0, v0, 0x4

    :cond_14
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1f

    or-int/lit8 v0, v0, 0x10

    :cond_1f
    const-wide/16 v1, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    :cond_26
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 11
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;

    const/4 v5, 0x1

    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_34

    and-int v2, p2, p1

    if-eqz v2, :cond_35

    const/4 v1, 0x1

    :goto_c
    if-ne p1, v5, :cond_37

    const/4 v0, 0x4

    :goto_f
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v5, :cond_6a

    const-string v2, " connected"

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    const/4 v1, 0x0

    goto :goto_c

    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3d

    const/16 v0, 0x8

    goto :goto_f

    :cond_3d
    const/4 v2, 0x4

    if-ne p1, v2, :cond_43

    const/16 v0, 0x800

    goto :goto_f

    :cond_43
    const/16 v2, 0x8

    if-ne p1, v2, :cond_4a

    const/16 v0, 0x1000

    goto :goto_f

    :cond_4a
    const/16 v2, 0x10

    if-ne p1, v2, :cond_51

    const/16 v0, 0x400

    goto :goto_f

    :cond_51
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceState() invalid headset type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_6a
    const-string v2, " disconnected"

    goto :goto_24
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 8
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/16 v0, 0x1f

    const/4 v1, 0x1

    :goto_6
    if-eqz v0, :cond_15

    and-int v2, v1, v0

    if-eqz v2, :cond_12

    :try_start_c
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    :cond_12
    shl-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    monitor-exit v3

    return-void

    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v2
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5
    .param p1    # I
    .param p2    # I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1f

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1f

    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .registers 13
    .param p1    # Ljava/lang/String;
    .param p2    # I

    and-int/lit8 v2, p2, 0x1f

    and-int/lit8 v5, v2, 0x4

    and-int/lit8 v6, v2, 0x8

    and-int/lit8 v1, v2, 0x3

    const/4 v0, 0x1

    const/4 v4, 0x1

    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prev headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v7, v2, :cond_4e

    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "No state change."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void

    :cond_4e
    const/4 v7, 0x3

    if-ne v1, v7, :cond_59

    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_59
    const/4 v7, 0x4

    if-ne v5, v7, :cond_68

    const/16 v7, 0x8

    if-ne v6, v7, :cond_68

    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_68
    if-nez v0, :cond_74

    if-nez v4, :cond_74

    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "invalid transition, returning ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_74
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v7, v8, v2, v9, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    goto :goto_4d
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 9
    .param p1    # J
    .param p3    # I
    .param p4    # I

    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_37
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    xor-int/lit8 v3, p4, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x14

    sparse-switch v1, :sswitch_data_5e

    const/4 v0, 0x0

    :goto_47
    const-string v1, "h2w"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x4

    or-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    monitor-exit v2

    return-void

    :sswitch_53
    const/4 v0, 0x0

    goto :goto_47

    :sswitch_55
    const/4 v0, 0x2

    goto :goto_47

    :sswitch_57
    const/4 v0, 0x1

    goto :goto_47

    :sswitch_59
    const/4 v0, 0x1

    goto :goto_47

    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_5b

    throw v1

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_53
        0x4 -> :sswitch_55
        0x10 -> :sswitch_59
        0x14 -> :sswitch_57
    .end sparse-switch
.end method
