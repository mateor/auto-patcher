.class Lcom/android/server/connectivity/PacManager$2;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    const-string v2, "PacManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding service com.android.net.IProxyService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_42
    .catchall {:try_start_7 .. :try_end_23} :catchall_4b

    :goto_23
    :try_start_23
    const-string v2, "com.android.net.IProxyService"

    invoke-static {v2, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v4

    # setter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/PacManager;->access$1002(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$1000(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    move-result-object v2

    if-nez v2, :cond_4e

    const-string v2, "PacManager"

    const-string v4, "No proxy service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    monitor-exit v3

    return-void

    :catch_42
    move-exception v1

    const-string v2, "PacManager"

    const-string v4, "Remote Exception"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_4b

    throw v2

    :cond_4e
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$1000(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/net/IProxyService;->startPacSystem()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_57} :catch_65
    .catchall {:try_start_4e .. :try_end_57} :catchall_4b

    :goto_57
    :try_start_57
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_40

    :catch_65
    move-exception v0

    const-string v2, "PacManager"

    const-string v4, "Unable to reach ProxyService - PAC will not be started"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_57 .. :try_end_6d} :catchall_4b

    goto :goto_57
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/PacManager;->access$1002(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
