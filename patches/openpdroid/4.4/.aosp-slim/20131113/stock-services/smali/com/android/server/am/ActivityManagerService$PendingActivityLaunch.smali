.class Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final r:Lcom/android/server/am/ActivityRecord;

.field final sourceRecord:Lcom/android/server/am/ActivityRecord;

.field final stack:Lcom/android/server/am/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1    # Lcom/android/server/am/ActivityRecord;
    .param p2    # Lcom/android/server/am/ActivityRecord;
    .param p3    # I
    .param p4    # Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    return-void
.end method
