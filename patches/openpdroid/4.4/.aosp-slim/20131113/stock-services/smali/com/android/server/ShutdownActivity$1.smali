.class Lcom/android/server/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownActivity;


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    # getter for: Lcom/android/server/ShutdownActivity;->mReboot:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    # getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    # getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_1d

    :catch_29
    move-exception v1

    goto :goto_1d
.end method
