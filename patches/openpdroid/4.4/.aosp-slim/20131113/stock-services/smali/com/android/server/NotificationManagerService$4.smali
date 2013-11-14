.class Lcom/android/server/NotificationManagerService$4;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/StatusBarManagerService$NotificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearAll()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/NotificationManagerService;->cancelAll(I)V

    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    # invokes: Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    # invokes: Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 18
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotification error pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; will crashApplication(uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    # invokes: Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZI)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_5b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad notification posted from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p5

    invoke-interface {v1, p4, v0, p1, v2}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_83} :catch_87

    :goto_83
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_87
    move-exception v1

    goto :goto_83
.end method

.method public onPanelRevealed()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v3, v5}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_54

    move-result-wide v0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_5c
    .catchall {:try_start_11 .. :try_end_20} :catchall_4f

    :cond_20
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_23
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v3, v5}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_54

    move-result-wide v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_57

    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v3, v5}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    monitor-exit v4

    return-void

    :catchall_4f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_54
    move-exception v3

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_54

    throw v3

    :catchall_57
    move-exception v3

    :try_start_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_5c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_54

    goto :goto_23
.end method

.method public onSetDisabled(I)V
    .registers 8
    .param p1    # I

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v3, p1}, Lcom/android/server/NotificationManagerService;->access$502(Lcom/android/server/NotificationManagerService;I)I

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    const/high16 v5, 0x40000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_44

    move-result-wide v0

    :try_start_1b
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_4c
    .catchall {:try_start_1b .. :try_end_2a} :catchall_3f

    :cond_2a
    :try_start_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_44

    move-result-wide v0

    :try_start_31
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_47

    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3d
    monitor-exit v4

    return-void

    :catchall_3f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_44
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw v3

    :catchall_47
    move-exception v3

    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_4c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_44

    goto :goto_2d
.end method
