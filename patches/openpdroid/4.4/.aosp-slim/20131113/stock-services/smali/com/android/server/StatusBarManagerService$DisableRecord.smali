.class Lcom/android/server/StatusBarManagerService$DisableRecord;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableRecord"
.end annotation


# instance fields
.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field token:Landroid/os/IBinder;

.field userId:I

.field what:I


# direct methods
.method private constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/StatusBarManagerService;
    .param p2    # Lcom/android/server/StatusBarManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    const/4 v4, 0x0

    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/StatusBarManagerService;->access$000(Lcom/android/server/StatusBarManagerService;IILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
