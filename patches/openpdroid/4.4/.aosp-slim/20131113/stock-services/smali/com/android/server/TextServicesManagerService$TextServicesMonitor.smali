.class Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V
    .registers 3
    .param p1    # Lcom/android/server/TextServicesManagerService;
    .param p2    # Lcom/android/server/TextServicesManagerService$1;

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$300(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$400(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/TextServicesManagerService;->access$500(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->access$000(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    invoke-static {v7}, Lcom/android/server/TextServicesManagerService;->access$300(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v7

    # invokes: Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/TextServicesManagerService;->access$600(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    if-nez v2, :cond_37

    monitor-exit v4

    goto :goto_6

    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw v3

    :cond_37
    :try_start_37
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4b

    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_4b
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v3, v5, v1}, Lcom/android/server/TextServicesManagerService;->access$700(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    if-eqz v2, :cond_5d

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/TextServicesManagerService;->access$800(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V

    :cond_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_34

    goto :goto_6
.end method
