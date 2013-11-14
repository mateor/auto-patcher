.class Lcom/android/server/BootReceiver$2;
.super Landroid/os/FileObserver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$db:Landroid/os/DropBoxManager;

.field final synthetic val$headers:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    iput-object p4, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/BootReceiver$2;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 10
    .param p1    # I
    .param p2    # Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;
    invoke-static {}, Lcom/android/server/BootReceiver;->access$200()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/BootReceiver$2;->val$prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    # getter for: Lcom/android/server/BootReceiver;->LOG_SIZE:I
    invoke-static {}, Lcom/android/server/BootReceiver;->access$300()I

    move-result v4

    const-string v5, "SYSTEM_TOMBSTONE"

    # invokes: Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->access$400(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v6

    const-string v0, "BootReceiver"

    const-string v1, "Can\'t log tombstone"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method
