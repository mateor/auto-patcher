.class Lcom/android/server/MountService$ObbState;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObbState"
.end annotation


# instance fields
.field final canonicalPath:Ljava/lang/String;

.field final nonce:I

.field final ownerGid:I

.field final ownerPath:Ljava/lang/String;

.field final rawPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;

.field final token:Landroid/os/storage/IObbActionListener;

.field final voldPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V
    .registers 9
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Landroid/os/storage/IObbActionListener;
    .param p6    # I

    iput-object p1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/android/server/MountService;->buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/android/server/MountService;->buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    invoke-static {p4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iput-object p5, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iput p6, p0, Lcom/android/server/MountService$ObbState;->nonce:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Lcom/android/server/MountService$UnmountObbAction;

    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    invoke-direct {v0, v1, p0, v3}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v2}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public link()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObbState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "rawPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",canonicalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ownerPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",voldPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ownerGid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlink()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
