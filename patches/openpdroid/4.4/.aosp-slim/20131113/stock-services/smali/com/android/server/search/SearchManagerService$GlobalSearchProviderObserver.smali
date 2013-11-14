.class Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .registers 6
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "search_global_search_activity"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1    # Z

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v4, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/search/SearchManagerService;->access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    # invokes: Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;
    invoke-static {v2, v4}, Lcom/android/server/search/SearchManagerService;->access$300(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->buildSearchableList()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_43

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Lcom/android/server/search/SearchManagerService;

    # getter for: Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/search/SearchManagerService;->access$200(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method
