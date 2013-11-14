.class Lcom/android/server/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->registerListenerService(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mListener:Landroid/service/notification/INotificationListener;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$servicesBindingTag:Ljava/lang/String;

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$1;->val$servicesBindingTag:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/NotificationManagerService$1;->val$userid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$1;->val$servicesBindingTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_34

    :try_start_12
    invoke-static {p2}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NotificationManagerService$1;->mListener:Landroid/service/notification/INotificationListener;

    new-instance v0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$1;->mListener:Landroid/service/notification/INotificationListener;

    iget v4, p0, Lcom/android/server/NotificationManagerService$1;->val$userid:I

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;-><init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;ILandroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_32} :catch_37
    .catchall {:try_start_12 .. :try_end_32} :catchall_34

    :goto_32
    :try_start_32
    monitor-exit v6

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    throw v1

    :catch_37
    move-exception v1

    goto :goto_32
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1    # Landroid/content/ComponentName;

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification listener connection lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
