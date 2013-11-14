.class Lcom/android/server/am/TaskRecord$1;
.super Landroid/app/IThumbnailRetriever$Stub;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskRecord;->getTaskAccessInfoLocked(Z)Lcom/android/server/am/TaskAccessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskRecord;

.field final synthetic val$thumbs:Lcom/android/server/am/TaskAccessInfo;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskAccessInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iput-object p2, p0, Lcom/android/server/am/TaskRecord$1;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {p0}, Landroid/app/IThumbnailRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnail(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1    # I

    if-ltz p1, :cond_c

    iget-object v2, p0, Lcom/android/server/am/TaskRecord$1;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    iget-object v2, v2, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_e

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return-object v2

    :cond_e
    iget-object v2, p0, Lcom/android/server/am/TaskRecord$1;->val$thumbs:Lcom/android/server/am/TaskAccessInfo;

    iget-object v2, v2, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskAccessInfo$SubTask;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2f

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v3, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/server/am/TaskRecord$1;->this$0:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_d

    :cond_2f
    iget-object v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v2, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_d
.end method
