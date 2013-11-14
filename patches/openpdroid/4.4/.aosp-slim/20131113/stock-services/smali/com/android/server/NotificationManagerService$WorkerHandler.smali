.class final Lcom/android/server/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/NotificationManagerService;
    .param p2    # Lcom/android/server/NotificationManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/NotificationManagerService$ToastRecord;

    # invokes: Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V

    goto :goto_5

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
