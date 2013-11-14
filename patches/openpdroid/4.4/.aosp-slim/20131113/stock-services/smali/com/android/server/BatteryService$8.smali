.class Lcom/android/server/BatteryService$8;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5
    .param p1    # Landroid/os/UEventObserver$UEvent;

    const-string v1, "1"

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :goto_f
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_16
    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v1, v0, :cond_23

    iget-object v1, p0, Lcom/android/server/BatteryService$8;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;I)I

    :cond_23
    monitor-exit v2

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_f

    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_27

    throw v1
.end method
