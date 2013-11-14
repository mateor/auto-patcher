.class Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationListenerInfo"
.end annotation


# instance fields
.field component:Landroid/content/ComponentName;

.field connection:Landroid/content/ServiceConnection;

.field isSystem:Z

.field listener:Landroid/service/notification/INotificationListener;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;ILandroid/content/ServiceConnection;)V
    .registers 7
    .param p2    # Landroid/service/notification/INotificationListener;
    .param p3    # Landroid/content/ComponentName;
    .param p4    # I
    .param p5    # Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    iput-object p5, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;IZ)V
    .registers 7
    .param p2    # Landroid/service/notification/INotificationListener;
    .param p3    # Landroid/content/ComponentName;
    .param p4    # I
    .param p5    # Z

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    iget v2, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    :cond_d
    return-void
.end method

.method enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 7
    .param p1    # Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isEnabledForCurrentUser()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    iget v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v3, v4, :cond_14

    move v1, v2

    goto :goto_d

    :cond_14
    if-eq v0, v4, :cond_1a

    iget v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v0, v3, :cond_d

    :cond_1a
    move v1, v2

    goto :goto_d
.end method

.method public isEnabledForCurrentUser()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$000(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public notifyPostedIfUserMatch(Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1    # Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v1, p1}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    :catch_d
    move-exception v0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to notify listener (posted): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public notifyRemovedIfUserMatch(Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1    # Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v1, p1}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    :catch_d
    move-exception v0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to notify listener (removed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
