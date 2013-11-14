.class final Lcom/android/server/am/TaskAccessInfo$SubTask;
.super Ljava/lang/Object;
.source "TaskAccessInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskAccessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubTask"
.end annotation


# instance fields
.field activity:Lcom/android/server/am/ActivityRecord;

.field holder:Lcom/android/server/am/ThumbnailHolder;

.field index:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
