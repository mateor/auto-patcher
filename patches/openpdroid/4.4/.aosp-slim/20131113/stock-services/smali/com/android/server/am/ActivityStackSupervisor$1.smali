.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$NT:I

.field final synthetic val$thumbnailThread:Landroid/app/IApplicationThread;

.field final synthetic val$thumbnails:Ljava/util/ArrayList;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/IApplicationThread;Landroid/os/IBinder;ILjava/util/ArrayList;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$thumbnailThread:Landroid/app/IApplicationThread;

    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$token:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$NT:I

    iput-object p5, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$thumbnails:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$thumbnailThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_d

    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$thumbnailThread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$token:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_28

    :cond_d
    :goto_d
    const/4 v13, 0x0

    :goto_e
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$NT:I

    if-ge v13, v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :catch_28
    move-exception v12

    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown when requesting thumbnail"

    invoke-static {v0, v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$token:Landroid/os/IBinder;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_d

    :cond_3c
    return-void
.end method
