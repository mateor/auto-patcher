.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/dev/urandom"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v1, Lcom/android/server/EntropyMixer$1;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez p3, :cond_1b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "randomDevice"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    if-nez p2, :cond_25

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entropyFile"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EntropyMixer;)V
    .registers 1
    .param p0    # Lcom/android/server/EntropyMixer;

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyMixer;)V
    .registers 1
    .param p0    # Lcom/android/server/EntropyMixer;

    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_8a
    .catchall {:try_start_1 .. :try_end_d} :catchall_98

    :try_start_d
    const-string v3, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "All Your Randomness Are Belong To Us"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-wide v3, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    sget-wide v3, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const-string v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.carrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.bootloader"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.hardware"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "ro.build.fingerprint"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_83} :catch_a2
    .catchall {:try_start_d .. :try_end_83} :catchall_9f

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_88
    move-object v1, v2

    :cond_89
    :goto_89
    return-void

    :catch_8a
    move-exception v0

    :goto_8b
    :try_start_8b
    const-string v3, "EntropyMixer"

    const-string v4, "Unable to add device specific data to the entropy pool"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_98

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_89

    :catchall_98
    move-exception v3

    :goto_99
    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_9e
    throw v3

    :catchall_9f
    move-exception v3

    move-object v1, v2

    goto :goto_99

    :catch_a2
    move-exception v0

    move-object v1, v2

    goto :goto_8b
.end method

.method private static getSystemDir()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadInitialEntropy()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_16

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "EntropyMixer"

    const-string v2, "No existing entropy file -- first boot?"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_16
    move-exception v0

    const-string v1, "EntropyMixer"

    const-string v2, "Failure loading existing entropy file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private scheduleEntropyWriter()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xa4cb80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private writeEntropy()V
    .registers 5

    :try_start_0
    const-string v1, "EntropyMixer"

    const-string v2, "Writing entropy..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "EntropyMixer"

    const-string v2, "Unable to write entropy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
