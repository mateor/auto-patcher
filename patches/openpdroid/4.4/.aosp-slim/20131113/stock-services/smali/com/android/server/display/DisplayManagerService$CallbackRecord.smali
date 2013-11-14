.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    .registers 4
    .param p2    # I
    .param p3    # Landroid/hardware/display/IDisplayManagerCallback;

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    # invokes: Lcom/android/server/display/DisplayManagerService;->onCallbackDied(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->access$1500(Lcom/android/server/display/DisplayManagerService;I)V

    return-void
.end method

.method public notifyDisplayEventAsync(II)V
    .registers 7
    .param p1    # I
    .param p2    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that displays changed, assuming it died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    goto :goto_5
.end method
