.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localForegroundNoti:Landroid/app/Notification;

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;III)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-nez v1, :cond_9e

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_3d

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_3d} :catch_ac

    :cond_3d
    const/4 v11, 0x0

    :try_start_3e
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v14, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10403fe

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10403ff

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v2, v3, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_9e} :catch_e6
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_9e} :catch_ac

    :cond_9e
    :goto_9e
    :try_start_9e
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-nez v1, :cond_ed

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "icon must be non-zero"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception v12

    const-string v1, "ActivityManager"

    const-string v2, "Error showing notification for service"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad notification for startForeground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_e6
    move-exception v12

    :try_start_e7
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->icon:I

    goto :goto_9e

    :cond_ed
    const/4 v1, 0x1

    new-array v8, v1, [I

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iget-object v7, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v9, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_104
    .catch Ljava/lang/RuntimeException; {:try_start_e7 .. :try_end_104} :catch_ac

    goto/16 :goto_8
.end method
