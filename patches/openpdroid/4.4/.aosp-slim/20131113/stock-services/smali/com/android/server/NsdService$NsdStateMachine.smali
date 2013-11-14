.class Lcom/android/server/NsdService$NsdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NsdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdStateMachine$EnabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$DisabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

.field private final mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

.field private final mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;Ljava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    # invokes: Lcom/android/server/NsdService;->isNsdEnabled()Z
    invoke-static {p1}, Lcom/android/server/NsdService;->access$100(Lcom/android/server/NsdService;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    :goto_38
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setLogRecSize(I)V

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V

    return-void

    :cond_41
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_38
.end method

.method static synthetic access$1400(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    .registers 2
    .param p0    # Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0    # Lcom/android/server/NsdService$NsdStateMachine;
    .param p1    # Lcom/android/internal/util/IState;

    invoke-virtual {p0, p1}, Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    .registers 2
    .param p0    # Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0    # Lcom/android/server/NsdService$NsdStateMachine;
    .param p1    # Lcom/android/internal/util/IState;

    invoke-virtual {p0, p1}, Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private registerForNsdSetting()V
    .registers 5

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$1;

    invoke-virtual {p0}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine$1;-><init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/NsdService;->access$300(Lcom/android/server/NsdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nsd_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3
    .param p1    # I

    # invokes: Lcom/android/server/NsdService;->cmdToString(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NsdService;->access$000(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
