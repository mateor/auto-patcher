.class Lcom/android/server/VibratorService$4;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    :try_start_13
    iget-object v2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    iget-object v2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v1, :cond_39

    iget-object v4, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v4, v2}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_39
    iget-object v2, p0, Lcom/android/server/VibratorService$4;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3

    :cond_43
    return-void

    :catchall_44
    move-exception v2

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_44

    throw v2
.end method
