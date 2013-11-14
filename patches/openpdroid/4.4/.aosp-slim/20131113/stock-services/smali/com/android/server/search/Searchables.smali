.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    const-string v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0    # Landroid/content/pm/ResolveInfo;

    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    sget-object v2, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1a
    return-object v0
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_17

    :goto_16
    return-object v0

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_16
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 8
    .param p1    # Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v3

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-direct {p0, v2, v4}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_33
    const-string v4, "Searchables"

    const-string v5, "No web search activity found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-object v1

    :cond_1b
    const-string v1, "Searchables"

    const-string v2, "No global search activity found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "search_global_search_activity"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1    # Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0    # Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 7
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    goto :goto_13
.end method


# virtual methods
.method public buildSearchableList()V
    .registers 26

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroid/content/Intent;

    const-string v22, "android.intent.action.SEARCH"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/16 v22, 0x80

    :try_start_1e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v9, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    new-instance v20, Landroid/content/Intent;

    const-string v22, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    if-nez v16, :cond_41

    if-eqz v19, :cond_c0

    :cond_41
    if-nez v16, :cond_a7

    const/16 v17, 0x0

    :goto_45
    if-nez v19, :cond_ac

    const/16 v21, 0x0

    :goto_49
    add-int v4, v17, v21

    const/4 v7, 0x0

    :goto_4c
    if-ge v7, v4, :cond_c0

    move/from16 v0, v17

    if-ge v7, v0, :cond_b1

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    move-object/from16 v8, v22

    :goto_5c
    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v22, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/search/Searchables;->mUserId:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v18

    if-eqz v18, :cond_a4

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v18}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v22

    if-eqz v22, :cond_a4

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_a7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    goto :goto_45

    :cond_ac
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    goto :goto_49

    :cond_b1
    sub-int v22, v7, v17

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    move-object/from16 v8, v22

    goto :goto_5c

    :cond_c0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v15

    monitor-enter p0
    :try_end_d1
    .catchall {:try_start_1e .. :try_end_d1} :catchall_f1

    :try_start_d1
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_d1 .. :try_end_ea} :catchall_ee

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ee
    move-exception v22

    :try_start_ef
    monitor-exit p0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw v22
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f1

    :catchall_f1
    move-exception v22

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    const-string v2, "Searchable authorities:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v2

    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    return-void
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 14
    .param p1    # Landroid/content/ComponentName;

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SearchableInfo;

    if-eqz v7, :cond_f

    monitor-exit p0

    move-object v8, v7

    :goto_e
    return-object v8

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_40

    const/4 v1, 0x0

    :try_start_11
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v10, 0x80

    iget v11, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v8, p1, v10, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_43

    move-result-object v1

    const/4 v5, 0x0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_26

    const-string v8, "android.app.default_searchable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_26
    if-nez v5, :cond_34

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_34

    const-string v8, "android.app.default_searchable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_34
    if-eqz v5, :cond_9e

    const-string v8, "*"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    move-object v8, v9

    goto :goto_e

    :catchall_40
    move-exception v8

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v8

    :catch_43
    move-exception v4

    const-string v8, "Searchables"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting activity info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    goto :goto_e

    :cond_5e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x2e

    if-ne v8, v10, :cond_97

    new-instance v6, Landroid/content/ComponentName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_81
    monitor-enter p0

    :try_start_82
    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/app/SearchableInfo;

    move-object v7, v0

    if-eqz v7, :cond_9d

    iget-object v8, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_a1

    move-object v8, v7

    goto/16 :goto_e

    :cond_97
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :cond_9d
    :try_start_9d
    monitor-exit p0

    :cond_9e
    move-object v8, v9

    goto/16 :goto_e

    :catchall_a1
    move-exception v8

    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a1

    throw v8
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
