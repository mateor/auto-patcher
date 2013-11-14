.class abstract Lcom/android/server/MountService$ObbAction;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/MountService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 3
    .param p2    # Lcom/android/server/MountService$ObbState;

    iput-object p1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/MountService$ObbActionHandler;)V
    .registers 6
    .param p1    # Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x3

    :try_start_1
    iget v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    iget v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    if-le v1, v3, :cond_20

    const-string v1, "MountService"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleExecute()V

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_3a

    goto :goto_1f

    :catch_2e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_1f

    :catch_3a
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_1f
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v3, v3, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_2d

    move-result-object v1

    :goto_e
    if-nez v1, :cond_4c

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read OBB file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2d
    move-exception v0

    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_e

    :cond_4c
    return-object v1
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .registers 6
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v2, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v3, v3, Lcom/android/server/MountService$ObbState;->nonce:I

    invoke-interface {v1, v2, v3, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_a

    :catch_1b
    move-exception v0

    const-string v1, "MountService"

    const-string v2, "MountServiceListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
