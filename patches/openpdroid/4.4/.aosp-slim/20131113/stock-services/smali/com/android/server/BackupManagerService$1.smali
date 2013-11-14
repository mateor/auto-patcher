.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v11, 0x0

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_3b

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    aput-object v4, v3, v11

    :cond_46
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :cond_52
    :goto_52
    if-eqz v3, :cond_3a

    array-length v8, v3

    if-eqz v8, :cond_3a

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_95

    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    if-eqz v5, :cond_6b

    :try_start_66
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    :cond_6b
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    monitor-exit v9

    goto :goto_3a

    :catchall_72
    move-exception v8

    monitor-exit v9
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_72

    throw v8

    :cond_75
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    const/4 v1, 0x1

    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    :cond_85
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    const/4 v1, 0x0

    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    :cond_95
    if-nez v5, :cond_3a

    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v8, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_9c
    iget-object v8, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v8, v3, v6}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    monitor-exit v9

    goto :goto_3a

    :catchall_a3
    move-exception v8

    monitor-exit v9
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_a3

    throw v8
.end method
