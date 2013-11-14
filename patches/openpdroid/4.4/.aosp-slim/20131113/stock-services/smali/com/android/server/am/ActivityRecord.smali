.class final Lcom/android/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# static fields
.field static final APPLICATION_ACTIVITY_TYPE:I = 0x0

.field static final DEBUG_SAVED_STATE:Z = false

.field static final HOME_ACTIVITY_TYPE:I = 0x1

.field static final RECENTS_ACTIVITY_TYPE:I = 0x2

.field public static final RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recent"

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field final baseDir:Ljava/lang/String;

.field compat:Landroid/content/res/CompatibilityInfo;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field final dataDir:Ljava/lang/String;

.field delayedResume:Z

.field displayStartTime:J

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field keysPaused:Z

.field labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromUid:I

.field logo:I

.field mActivityType:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

.field final resDir:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field theme:I

.field thumbHolder:Lcom/android/server/am/ThumbnailHolder;

.field thumbnailNeeded:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field waitingVisible:Z

.field windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;)V
    .registers 22
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Lcom/android/server/am/ProcessRecord;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/content/Intent;
    .param p6    # Ljava/lang/String;
    .param p7    # Landroid/content/pm/ActivityInfo;
    .param p8    # Landroid/content/res/Configuration;
    .param p9    # Lcom/android/server/am/ActivityRecord;
    .param p10    # Ljava/lang/String;
    .param p11    # I
    .param p12    # Z
    .param p13    # Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Lcom/android/server/am/ActivityRecord$Token;

    invoke-direct {v3, p0}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iput-object p7, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput p3, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    iput-object p5, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz p7, :cond_1f2

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v3, :cond_82

    iget v3, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v3, :cond_82

    iget v3, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1ba

    :cond_82
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :goto_88
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1c7

    const/4 v3, 0x1

    :goto_93
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v3, p7, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_c1

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v3, :cond_c1

    iget-object v1, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    :cond_c1
    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->logo:I

    invoke-virtual {p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    if-nez v3, :cond_e8

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1ca

    const v3, 0x1030005

    :goto_e6
    iput v3, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    :cond_e8
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_f5

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    :cond_f5
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1cf

    if-eqz p2, :cond_1cf

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_10f

    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_1cf

    :cond_10f
    iget-object v3, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_113
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_124

    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_124

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_124
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, p7, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_1d5

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_1d5

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_1d5

    const/4 v3, 0x1

    :goto_155
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_1d8

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1d8

    const/4 v3, 0x1

    :goto_165
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz p12, :cond_171

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq p3, v3, :cond_171

    if-nez p3, :cond_1da

    :cond_171
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1da

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {p5, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1da

    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1da

    invoke-virtual {p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1da

    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1da

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1da

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v3

    if-eqz v3, :cond_1da

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    :goto_1b0
    iget v3, p7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1f0

    const/4 v3, 0x1

    :goto_1b7
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    :goto_1b9
    return-void

    :cond_1ba
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_88

    :cond_1c7
    const/4 v3, 0x0

    goto/16 :goto_93

    :cond_1ca
    const v3, 0x103006b

    goto/16 :goto_e6

    :cond_1cf
    iget-object v3, p7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_113

    :cond_1d5
    const/4 v3, 0x0

    goto/16 :goto_155

    :cond_1d8
    const/4 v3, 0x0

    goto :goto_165

    :cond_1da
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui.recent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_1b0

    :cond_1ec
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_1b0

    :cond_1f0
    const/4 v3, 0x0

    goto :goto_1b7

    :cond_1f2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    goto :goto_1b9
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 3
    .param p0    # Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    return-void
.end method

.method private activityTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p1    # I

    packed-switch p1, :pswitch_data_12

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "APPLICATION_ACTIVITY_TYPE"

    goto :goto_7

    :pswitch_b
    const-string v0, "HOME_ACTIVITY_TYPE"

    goto :goto_7

    :pswitch_e
    const-string v0, "RECENTS_ACTIVITY_TYPE"

    goto :goto_7

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method static forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 7
    .param p0    # Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz p0, :cond_11

    :try_start_3
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_f} :catch_13

    :goto_f
    move-object v3, v2

    :goto_10
    return-object v3

    :cond_11
    move-object v2, v3

    goto :goto_f

    :catch_13
    move-exception v1

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad activity token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p0    # Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 6
    .param p0    # Landroid/os/IBinder;
    .param p1    # Z

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    :pswitch_7
    return v2

    :cond_8
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_1c

    if-nez p1, :cond_7

    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_7

    :pswitch_18
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    move-object v0, p0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v2, :cond_12

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_f
    if-nez v0, :cond_12

    move-object v0, p0

    :cond_12
    return-object v0
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p0    # Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private reportLaunchTimeLocked(J)V
    .registers 16
    .param p1    # J

    const-wide/16 v11, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v9, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    sub-long v3, p1, v9

    iget-wide v9, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_96

    iget-wide v9, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    sub-long v5, p1, v9

    :goto_15
    const-wide/16 v9, 0x40

    const-string v0, "launching"

    invoke-static {v9, v10, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/16 v0, 0x7539

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v1

    const/4 v9, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v2, v9

    const/4 v9, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v9

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "Displayed "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    cmp-long v0, v3, v5

    if-eqz v0, :cond_74

    const-string v0, " (total "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    const-string v0, "ActivityManager"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    cmp-long v0, v5, v11

    if-lez v0, :cond_91

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    long-to-int v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UsageStatsService;->noteLaunchTime(Landroid/content/ComponentName;I)V

    :cond_91
    iput-wide v11, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v11, v8, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    return-void

    :cond_96
    move-wide v5, v3

    goto/16 :goto_15
.end method


# virtual methods
.method addNewIntentLocked(Landroid/content/Intent;)V
    .registers 3
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 12
    .param p1    # Lcom/android/server/am/ActivityRecord;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/content/Intent;

    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method applyOptionsLocked()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v6

    packed-switch v6, :pswitch_data_f0

    :cond_d
    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_10
    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    goto :goto_d

    :pswitch_31
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_d

    :pswitch_89
    const/4 v0, 0x3

    if-ne v6, v0, :cond_ee

    const/4 v5, 0x1

    :goto_8d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_d

    :cond_ee
    const/4 v5, 0x0

    goto :goto_8d

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_31
        :pswitch_89
        :pswitch_89
    .end packed-switch
.end method

.method changeWindowTranslucency(Z)Z
    .registers 10
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-ne v3, p1, :cond_8

    move v2, v1

    :goto_7
    return v2

    :cond_8
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v3, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2c
    move v2, v1

    goto :goto_7

    :cond_2e
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v3, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz p1, :cond_3b

    move v1, v2

    :goto_35
    add-int/2addr v1, v4

    iput v1, v3, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    goto :goto_7

    :cond_3b
    const/4 v1, -0x1

    goto :goto_35
.end method

.method clearOptionsLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_c
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 8

    const/16 v6, 0x67

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v2, 0x1

    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;)V
    .registers 10
    .param p1    # I
    .param p2    # Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    invoke-virtual {v4, p1, v5, p2, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_23

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-ne v4, p0, :cond_45

    :cond_23
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_45

    :try_start_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_37} :catch_6a

    :try_start_37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v0, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_43} :catch_87
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_43} :catch_84

    const/4 v3, 0x0

    move-object p2, v2

    :cond_45
    :goto_45
    if-eqz v3, :cond_4f

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Landroid/content/Intent;)V

    :cond_4f
    return-void

    :catch_50
    move-exception v1

    :goto_51
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    :catch_6a
    move-exception v1

    :goto_6b
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    :catch_84
    move-exception v1

    move-object p2, v2

    goto :goto_6b

    :catch_87
    move-exception v1

    move-object p2, v2

    goto :goto_51
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 16
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "packageName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " processName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "launchedFromUid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " launchedFromPackage="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " userId="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "app="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "frontOfTask="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " task="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "taskAffinity="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "realActivity="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "baseDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->baseDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "resDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dataDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "stateNotNeeded="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " componentSpecified="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mActivityType="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "compat="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " labelRes=0x"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " icon=0x"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " theme=0x"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "config="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_12c

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v7, :cond_14d

    :cond_12c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "resultTo="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " resultWho="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " resultCode="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    :cond_14d
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v7, :cond_15e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "results="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15e
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v7, :cond_1b9

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_1b9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Pending Results:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_178
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_19d

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PendingIntentRecord;

    move-object v5, v7

    :goto_18d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v5, :cond_19f

    const-string v7, "null"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_178

    :cond_19d
    const/4 v5, 0x0

    goto :goto_18d

    :cond_19f
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_178

    :cond_1b9
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v7, :cond_1f8

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1f8

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Pending New Intents:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1ce
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1f8

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v2, :cond_1f0

    const-string v7, "null"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1ed
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    :cond_1f0
    invoke-virtual {v2, v11, v12, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ed

    :cond_1f8
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_209

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "pendingOptions="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_209
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v7, :cond_237

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v7, :cond_222

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "readUriPermissions="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_222
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v7, :cond_237

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "writeUriPermissions="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    iget-object v7, v7, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "launchFailed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " launchCount="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " lastLaunchTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_408

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_25e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "haveState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " icicle="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "state="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " stopped="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " delayedResume="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " finishing="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "keysPaused="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " inHistory="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " visible="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " sleeping="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " idle="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "fullscreen="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " noDisplay="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " immersive="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " launchMode="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "frozenBeforeDestroy="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " thumbnailNeeded="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " forceNewConfig="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mActivityType="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-direct {p0, v7}, Lcom/android/server/am/ActivityRecord;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "thumbHolder: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v7, :cond_366

    const-string v7, " bm="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v7, v7, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " desc="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v7, v7, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_375

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_39b

    :cond_375
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "displayStartTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_40f

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_388
    const-string v7, " startTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_416

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_398
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_39b
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_3a9

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v7, :cond_3a9

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_3d3

    :cond_3a9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "waitingVisible="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " nowVisible="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " lastVisibleTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_41d

    const-string v7, "0"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3d0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3d3
    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-nez v7, :cond_3db

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v7, :cond_3f6

    :cond_3db
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "configDestroy="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " configChangeFlags="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f6
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v7, :cond_407

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "connections="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_407
    return-void

    :cond_408
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_25e

    :cond_40f
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_388

    :cond_416
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_398

    :cond_41d
    iget-wide v7, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    invoke-static {v7, v8, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_3d0
.end method

.method finishLaunchTickingLocked()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getKeyDispatchingTimeout()J
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method isApplicationActivity()Z
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isHomeActivity()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isInHistory()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method isNotResolverActivity()Z
    .registers 3

    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isRecentsActivity()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isRootActivity()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .registers 8
    .param p1    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_b
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_16
    const/4 v1, 0x0

    goto :goto_b

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method makeFinishing()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_17
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_1e
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1    # Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method pauseKeyDispatchingLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    :cond_10
    return-void
.end method

.method putInHistory()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_17
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 7
    .param p1    # Lcom/android/server/am/ActivityRecord;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_c
    if-ltz v0, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1d

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_2d

    if-nez p2, :cond_1a

    :cond_23
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_1a

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    :cond_2d
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1a

    :cond_36
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    :cond_c
    return-void
.end method

.method public reportFullyDrawnLocked()V
    .registers 16

    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_10

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    :cond_10
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_a2

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    sub-long v4, v0, v8

    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_a3

    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    sub-long v6, v0, v8

    :goto_28
    const-wide/16 v8, 0x40

    const-string v10, "drawing"

    invoke-static {v8, v9, v10, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/16 v8, 0x755a

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "Fully drawn "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    cmp-long v8, v4, v6

    if-eqz v8, :cond_87

    const-string v8, " (total "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    const-string v8, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v8, v6, v12

    if-lez v8, :cond_9e

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Lcom/android/server/am/UsageStatsService;

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    long-to-int v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/UsageStatsService;->noteFullyDrawnTime(Landroid/content/ComponentName;I)V

    :cond_9e
    iput-wide v12, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v12, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    :cond_a2
    return-void

    :cond_a3
    move-wide v6, v4

    goto :goto_28
.end method

.method resumeKeyDispatchingLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    :cond_10
    return-void
.end method

.method public setSleeping(Z)V
    .registers 6
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v1, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_4

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2d} :catch_2e

    goto :goto_4

    :catch_2e
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V
    .registers 6
    .param p1    # Lcom/android/server/am/TaskRecord;
    .param p2    # Lcom/android/server/am/ThumbnailHolder;
    .param p3    # Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;)V

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_27
    if-eqz p1, :cond_2f

    iget v0, p1, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/TaskRecord;->numActivities:I

    :cond_2f
    if-nez p2, :cond_32

    move-object p2, p1

    :cond_32
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez p3, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-nez v0, :cond_4c

    new-instance v0, Lcom/android/server/am/ThumbnailHolder;

    invoke-direct {v0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    goto :goto_4c
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5
    .param p1    # Lcom/android/server/am/ProcessRecord;
    .param p2    # I

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    :cond_f
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    goto :goto_4
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 4
    .param p1    # Z

    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_12

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    :cond_12
    return-void
.end method

.method takeFromHistory()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    :cond_1d
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_2d

    const/4 v1, -0x1

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_32

    const-string v1, " f}"

    :goto_24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    return-object v1

    :cond_2d
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_1a

    :cond_32
    const-string v1, "}"

    goto :goto_24

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1    # Landroid/app/ActivityOptions;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_b
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_d
    return-void
.end method

.method updateOptionsLocked(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_b
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    :cond_12
    return-void
.end method

.method updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object p1, v0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iput-object p2, v0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    :cond_e
    return-void
.end method

.method public windowsDrawn()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    :cond_12
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public windowsGone()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    return-void
.end method

.method public windowsVisible()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_24

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    :cond_1f
    :goto_1f
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    :cond_24
    monitor-exit v4

    return-void

    :cond_26
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_43

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_43
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_1f

    :catchall_50
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v3
.end method
