.class final Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecurityPolicy"
.end annotation


# static fields
.field private static final RETRIEVAL_ALLOWING_EVENT_TYPES:I = 0x1b9bf

.field private static final VALID_ACTIONS:I = 0x1fffff


# instance fields
.field private mActiveWindowId:I

.field private mTouchInteractionInProgress:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p0    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)I
    .registers 2
    .param p0    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method private canDispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v2, v3, :cond_11

    :goto_10
    :sswitch_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10

    nop

    :sswitch_data_14
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFocusedWindowId()I
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_30

    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowIdLocked(Landroid/os/IBinder;Landroid/util/SparseArray;)I

    move-result v1

    if-gez v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowIdLocked(Landroid/os/IBinder;Landroid/util/SparseArray;)I

    move-result v1

    :cond_2b
    monitor-exit v3

    :goto_2c
    return v1

    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception v2

    :cond_31
    const/4 v1, -0x1

    goto :goto_2c
.end method

.method private getFocusedWindowIdLocked(Landroid/os/IBinder;Landroid/util/SparseArray;)I
    .registers 6
    .param p1    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_15

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_12

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    :goto_11
    return v2

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v2, -0x1

    goto :goto_11
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isActionPermitted(I)Z
    .registers 3
    .param p1    # I

    const v0, 0x1fffff

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isRetrievalAllowingWindow(I)Z
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    .registers 4
    .param p1    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2    # I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canPerformActionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;IILandroid/os/Bundle;)Z
    .registers 6
    .param p1    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindow(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isActionPermitted(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    .registers 3
    .param p1    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public enforceCanRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .registers 5
    .param p1    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContent(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility serivce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "declare android:canRetrieveWindowContent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_32
    return-void
.end method

.method public getRetrievalAllowingWindowLocked()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 5
    .param p1    # I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_18

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_18

    const/4 v1, -0x2

    if-eq p1, v1, :cond_18

    const/4 v1, -0x3

    if-ne p1, v1, :cond_1a

    :cond_18
    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public onTouchInteractionEnd()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return-void
.end method

.method public onTouchInteractionStart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    return-void
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 7
    .param p1    # I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_e

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_15

    :cond_e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    :cond_14
    :goto_14
    return p1

    :cond_15
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p1, :cond_14

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission INTERACT_ACROSS_USERS or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5a
    const/4 v2, -0x2

    if-eq p1, v2, :cond_60

    const/4 v2, -0x3

    if-ne p1, v2, :cond_67

    :cond_60
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    goto :goto_14

    :cond_67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateActiveWindow(II)V
    .registers 4
    .param p1    # I
    .param p2    # I

    sparse-switch p2, :sswitch_data_14

    :cond_3
    :goto_3
    return-void

    :sswitch_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    if-ne v0, p1, :cond_3

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_3

    :sswitch_d
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    goto :goto_3

    :sswitch_data_14
    .sparse-switch
        0x20 -> :sswitch_4
        0x80 -> :sswitch_d
    .end sparse-switch
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x1b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :cond_e
    return-void
.end method
