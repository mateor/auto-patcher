.class Lcom/android/server/accessibility/AccessibilityManagerService$4;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field final synthetic val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v2, "touch_exploration_granted_accessibility_services"

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iput-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$4;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method
