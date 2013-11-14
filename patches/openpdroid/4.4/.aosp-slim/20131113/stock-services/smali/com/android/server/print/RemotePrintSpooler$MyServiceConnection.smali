.class final Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$1;)V
    .registers 3
    .param p1    # Lcom/android/server/print/RemotePrintSpooler;
    .param p2    # Lcom/android/server/print/RemotePrintSpooler$1;

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    invoke-static {p2}, Landroid/print/IPrintSpooler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;

    move-result-object v2

    # setter for: Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintSpooler;->access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # invokes: Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$300(Lcom/android/server/print/RemotePrintSpooler;)V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$100(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    # invokes: Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$400(Lcom/android/server/print/RemotePrintSpooler;)V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;->this$0:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintSpooler;->access$202(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method
