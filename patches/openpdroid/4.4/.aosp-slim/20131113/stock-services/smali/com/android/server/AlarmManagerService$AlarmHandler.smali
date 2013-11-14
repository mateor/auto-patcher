.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final DATE_CHANGE_EVENT:I = 0x3

.field public static final MINUTE_CHANGE_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_48

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V

    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_34

    const/4 v8, 0x0

    :goto_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_48

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    :try_start_2c
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_31
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2c .. :try_end_31} :catch_37

    :cond_31
    :goto_31
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v9
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catch_37
    move-exception v7

    iget-wide v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_31

    :cond_48
    return-void
.end method
