.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPriority(III)I
    .registers 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3f5

    if-ne v3, v4, :cond_15

    if-lt p3, v5, :cond_15

    if-gt p3, v2, :cond_15

    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v3

    if-eq v3, p1, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-ne v3, p1, :cond_1d

    const/4 v2, 0x4

    :cond_1d
    invoke-static {p2, v2}, Landroid/os/Process;->setThreadGroup(II)V

    const/4 v2, 0x1

    invoke-static {p2, v2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_24} :catch_26

    const/4 v1, 0x0

    goto :goto_15

    :catch_26
    move-exception v0

    goto :goto_15
.end method
