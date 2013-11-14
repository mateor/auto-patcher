.class Lcom/android/server/NotificationManagerService$7;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$id:I

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    iput-object p4, p0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    iput p6, p0, Lcom/android/server/NotificationManagerService$7;->val$mustHaveFlags:I

    iput p7, p0, Lcom/android/server/NotificationManagerService$7;->val$mustNotHaveFlags:I

    iput-boolean p8, p0, Lcom/android/server/NotificationManagerService$7;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/16 v2, 0xabf

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/android/server/NotificationManagerService$7;->val$mustHaveFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/android/server/NotificationManagerService$7;->val$mustNotHaveFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_3d
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$7;->val$pkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService$7;->val$tag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/NotificationManagerService$7;->val$id:I

    iget v7, p0, Lcom/android/server/NotificationManagerService$7;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3200(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_8d

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    iget v4, p0, Lcom/android/server/NotificationManagerService$7;->val$mustHaveFlags:I

    and-int/2addr v2, v4

    iget v4, p0, Lcom/android/server/NotificationManagerService$7;->val$mustHaveFlags:I

    if-eq v2, v4, :cond_68

    monitor-exit v3

    :goto_67
    return-void

    :cond_68
    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    iget v4, p0, Lcom/android/server/NotificationManagerService$7;->val$mustNotHaveFlags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_78

    monitor-exit v3

    goto :goto_67

    :catchall_75
    move-exception v2

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_3d .. :try_end_77} :catchall_75

    throw v2

    :cond_78
    :try_start_78
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService$7;->val$sendDelete:Z

    # invokes: Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    invoke-static {v2, v1, v4}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    :cond_8d
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_78 .. :try_end_8e} :catchall_75

    goto :goto_67
.end method
