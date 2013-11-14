.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field private mAdbNotificationShown:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentUser:I

.field private mDefaultFunctions:Ljava/lang/String;

.field private mUsbNotificationId:I

.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .registers 12
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    :try_start_17
    const-string v5, "persist.sys.usb.config"

    const-string v6, "adb"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v5, "sys.usb.config"

    const-string v6, "none"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetting config to persistent property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "sys.usb.config"

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v6, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {p1, v5}, Lcom/android/server/usb/UsbDeviceManager;->access$502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    const-string v5, "persist.service.adb.enable"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x31

    if-ne v2, v5, :cond_e7

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    :cond_9a
    :goto_9a
    const-string v5, "persist.service.adb.enable"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v8, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v5

    const-string v6, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v5, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v5

    const-string v6, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v5, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_e6
    return-void

    :cond_e7
    const/16 v5, 0x30

    if-ne v2, v5, :cond_9a

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_ef} :catch_f0

    goto :goto_9a

    :catch_f0
    move-exception v1

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error initializing UsbHandler"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6
.end method

.method private setAdbEnabled(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    :cond_16
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    :cond_2d
    return-void
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p1, :cond_72

    if-eqz p2, :cond_72

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->needsOemUsbOverride()Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1a
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to disable USB"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    :cond_38
    :goto_38
    return-void

    :cond_39
    const-string v0, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_40
    const-string v0, "persist.sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    goto :goto_38

    :cond_50
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switch persistent USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.sys.usb.config"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_72
    if-nez p1, :cond_76

    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    :cond_76
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const-string v0, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8a
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to disable USB"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto :goto_38

    :cond_a9
    const-string v0, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8a

    :cond_b0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    goto :goto_38

    :cond_b9
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switch USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_38
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;

    const-string v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateAdbNotification()V
    .registers 16

    const v14, 0x1040487

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const v6, 0x1040487

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_93

    const-string v0, "0"

    const-string v3, "persist.adb.notify"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const v0, 0x1040488

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    const v0, 0x10805c7

    iput v0, v8, Landroid/app/Notification;->icon:I

    const-wide/16 v12, 0x0

    iput-wide v12, v8, Landroid/app/Notification;->when:J

    const/4 v0, 0x2

    iput v0, v8, Landroid/app/Notification;->flags:I

    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v1, v8, Landroid/app/Notification;->defaults:I

    iput-object v4, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v4, v8, Landroid/app/Notification;->vibrate:[J

    const/4 v0, -0x1

    iput v0, v8, Landroid/app/Notification;->priority:I

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v14, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_d

    :cond_93
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v14, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_d
.end method

.method private updateAudioSourceFunction()V
    .registers 9

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "audio_source"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eq v3, v6, :cond_59

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x20000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x40000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "state"

    if-eqz v3, :cond_5a

    const/4 v6, 0x1

    :goto_26
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v3, :cond_49

    :try_start_2b
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    const-string v6, "card"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "device"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_49} :catch_5c

    :cond_49
    :goto_49
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    :cond_59
    return-void

    :cond_5a
    const/4 v6, 0x0

    goto :goto_26

    :catch_5c
    move-exception v2

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "could not open audio source PCM file"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method private updateCurrentAccessory()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1400(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering USB accessory mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_9

    :cond_53
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeGetAccessoryStrings failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_9

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_87
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->access$1402(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_9
.end method

.method private updateUsbNotification()V
    .registers 15

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const v6, 0x104047f

    :cond_2f
    :goto_2f
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eq v6, v0, :cond_12

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_46
    if-eqz v6, :cond_12

    const v0, 0x1040483

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    const v0, 0x10805e7

    iput v0, v8, Landroid/app/Notification;->icon:I

    const-wide/16 v12, 0x0

    iput-wide v12, v8, Landroid/app/Notification;->when:J

    const/4 v0, 0x2

    iput v0, v8, Landroid/app/Notification;->flags:I

    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v1, v8, Landroid/app/Notification;->defaults:I

    iput-object v4, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v4, v8, Landroid/app/Notification;->vibrate:[J

    const/4 v0, -0x2

    iput v0, v8, Landroid/app/Notification;->priority:I

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.UsbSettings"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    goto/16 :goto_12

    :cond_a1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    const v6, 0x1040480

    goto :goto_2f

    :cond_af
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "mass_storage"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    const v6, 0x1040481

    goto/16 :goto_2f

    :cond_be
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "accessory"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const v6, 0x1040482

    goto/16 :goto_2f
.end method

.method private updateUsbState()V
    .registers 6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_27
    array-length v3, v0

    if-ge v1, v3, :cond_33

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1b

    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_12
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;

    const-string v1, "  USB Device State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Mass storage backing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_f2} :catch_f3

    :goto_f2
    return-void

    :catch_f3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f2
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_d0

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_40

    move v3, v4

    :goto_d
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_42

    :goto_13
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "accessory"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    :cond_28
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    :cond_31
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    goto :goto_7

    :cond_40
    move v3, v5

    goto :goto_d

    :cond_42
    move v4, v5

    goto :goto_13

    :pswitch_44
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_4c

    :goto_48
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto :goto_7

    :cond_4c
    move v4, v5

    goto :goto_48

    :pswitch_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_5b

    move v1, v4

    :goto_57
    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_5b
    move v1, v5

    goto :goto_57

    :pswitch_5d
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    goto :goto_7

    :pswitch_6a
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1600(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_7e
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_7

    :pswitch_97
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v6, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v6, "ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    :cond_ab
    move v2, v4

    :goto_ac
    if-eqz v2, :cond_c7

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_c7

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Current user switched; resetting USB host stack for MTP"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "none"

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    :cond_c7
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    goto/16 :goto_7

    :cond_cd
    move v2, v5

    goto :goto_ac

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_44
        :pswitch_4e
        :pswitch_5d
        :pswitch_6a
        :pswitch_97
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .registers 6
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Z

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p3, :cond_12

    const/4 v1, 0x1

    :goto_c
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_12
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public sendMessage(IZ)V
    .registers 5
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_10

    const/4 v1, 0x1

    :goto_a
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_10
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public updateState(Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    const-string v3, "DISCONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_4f

    const-wide/16 v3, 0x3e8

    :goto_1a
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1d
    return-void

    :cond_1e
    const-string v3, "CONNECTED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v1, 0x1

    const/4 v0, 0x0

    goto :goto_b

    :cond_29
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto :goto_b

    :cond_34
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_4f
    const-wide/16 v3, 0x0

    goto :goto_1a
.end method
