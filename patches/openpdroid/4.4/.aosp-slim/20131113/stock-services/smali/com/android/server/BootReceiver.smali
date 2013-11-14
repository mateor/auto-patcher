.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final LOG_SIZE:I

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const v0, 0x18000

    :goto_d
    sput v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    return-void

    :cond_1c
    const/high16 v0, 0x10000

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2
    .param p0    # Lcom/android/server/BootReceiver;
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 2
    .param p0    # Lcom/android/server/BootReceiver;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    return v0
.end method

.method static synthetic access$400(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p0    # Landroid/os/DropBoxManager;
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .registers 21
    .param p0    # Landroid/os/DropBoxManager;
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v13, "BootReceiver"

    const-string v14, "Copying audit failures to DropBox"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    const-string v13, "/proc/last_kmsg"

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-lez v13, :cond_c

    if-eqz p1, :cond_42

    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v13, v7, v4

    if-eqz v13, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v13, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_42
    const-string v13, "[[TRUNCATED]]\n"

    move/from16 v0, p3

    invoke-static {v3, v0, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v9, v2

    const/4 v6, 0x0

    :goto_57
    if-ge v6, v9, :cond_7c

    aget-object v10, v2, v6

    const-string v13, "audit"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_79

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_7c
    const-string v13, "BootReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Copied "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " worth of audits to DropBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p0    # Landroid/os/DropBoxManager;
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v5, v1, v6

    if-lez v5, :cond_a

    if-eqz p1, :cond_2d

    invoke-interface {p1, p3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_a

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2d
    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to DropBox ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[[TRUNCATED]]\n"

    invoke-static {v0, p4, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p5, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .registers 23
    .param p0    # Landroid/os/DropBoxManager;
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v17, 0x0

    if-eqz p0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string v2, "BootReceiver"

    const-string v3, "Checking for fsck errors"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/File;

    const-string v2, "/dev/fscklogs/log"

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_e

    const-string v2, "[[TRUNCATED]]\n"

    move/from16 v0, p3

    invoke-static {v9, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    const/4 v12, 0x0

    :goto_3c
    if-ge v12, v13, :cond_4a

    aget-object v14, v8, v12

    const-string v2, "FILE SYSTEM WAS MODIFIED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/16 v17, 0x1

    :cond_4a
    if-eqz v17, :cond_5b

    const-string v5, "/dev/fscklogs/log"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_5b
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_e

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_3c
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .registers 16
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v7, 0x0

    const-string v3, "dropbox"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    const-string v3, "log_files"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Build: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Hardware: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Revision: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.revision"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Bootloader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Radio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kernel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/version"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    const-string v6, "...\n"

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b9

    if-eqz v0, :cond_b9

    const-string v3, "SYSTEM_RECOVERY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    const-string v3, "ro.runtime.firstboot"

    invoke-static {v3, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_12b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const-string v3, "ro.runtime.firstboot"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_d7

    const-string v3, "SYSTEM_BOOT"

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    const-string v3, "/proc/last_kmsg"

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, v4

    const-string v5, "SYSTEM_LAST_KMSG"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "/cache/recovery/log"

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, v4

    const-string v5, "SYSTEM_RECOVERY_LOG"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "/data/dontpanic/apanic_console"

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, v4

    const-string v5, "APANIC_CONSOLE"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "/data/dontpanic/apanic_threads"

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v4, v4

    const-string v5, "APANIC_THREADS"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget v3, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v3, v3

    const-string v4, "SYSTEM_AUDIT"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    sget v3, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    neg-int v3, v3

    const-string v4, "SYSTEM_FSCK"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    :cond_10f
    :goto_10f
    sget-object v3, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    const/4 v10, 0x0

    :goto_116
    if-eqz v13, :cond_133

    array-length v3, v13

    if-ge v10, v3, :cond_133

    aget-object v3, v13, v10

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    const-string v5, "SYSTEM_TOMBSTONE"

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    :cond_12b
    if-eqz v0, :cond_10f

    const-string v3, "SYSTEM_RESTART"

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    :cond_133
    new-instance v3, Lcom/android/server/BootReceiver$2;

    sget-object v4, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    move-object v4, p0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    sget-object v3, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;

    const-string v0, "com.google.android.systemupdater"

    const-string v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    new-instance v0, Lcom/android/server/BootReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    return-void
.end method
