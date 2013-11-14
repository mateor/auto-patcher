.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_20

    :goto_7
    const/4 v1, 0x0

    :try_start_8
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_29

    move-result v1

    :goto_16
    if-nez v1, :cond_1f

    :try_start_18
    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v3, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_29

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v2, "BootReceiver"

    const-string v3, "Can\'t log boot events"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_29
    move-exception v0

    const-string v2, "BootReceiver"

    const-string v3, "Can\'t remove old update packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_32
    move-exception v2

    goto :goto_16
.end method
