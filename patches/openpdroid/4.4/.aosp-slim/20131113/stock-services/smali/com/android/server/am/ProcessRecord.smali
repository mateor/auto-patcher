.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceOom:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field final batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field forceCrashReport:Z

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field hasAboveClient:Z

.field hasActivities:Z

.field hasClientActivities:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field final isolated:Z

.field keeping:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastWakeTime:J

.field lruSeq:I

.field maxAdj:I

.field memImportance:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repProcState:I

.field reportLowMemory:Z

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field trimMemoryLevel:I

.field final uid:I

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 10
    .param p1    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .param p2    # Landroid/content/pm/ApplicationInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I

    const/16 v4, -0x64

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, p4, :cond_7f

    const/4 v0, 0x1

    :goto_50
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    return-void

    :cond_7f
    move v0, v1

    goto :goto_50
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/server/am/ProcessStatsService;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, v1, :cond_22

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    :cond_22
    :goto_22
    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_2b
    const/4 v1, 0x0

    goto :goto_23
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 16
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "user #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " uid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_2f

    const-string v7, " ISOLATED uid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    :cond_2f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_47

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "class="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_47
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_5c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "manageSpaceActivityName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " publicDir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " data="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "packageList={"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8c
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_a9

    if-lez v0, :cond_9b

    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9b
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    :cond_a9
    const-string v7, "}"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "compat="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v7, :cond_c7

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    if-nez v7, :cond_c7

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    if-eqz v7, :cond_119

    :cond_c7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "instrumentationClass="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " instrumentationProfileFile="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "instrumentationArguments="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "instrumentationInfo="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_119

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v8, Landroid/util/PrintWriterPrinter;

    invoke-direct {v8, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "thread="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "pid="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " starting="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastActivityTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " lastPssTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " nextPssTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "adjSeq="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " lruSeq="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " lastPss="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " lastCachedPss="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "keeping="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->keeping:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " cached="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " empty="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v7, :cond_1c8

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "serviceb="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " serviceHighRam="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1c8
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v7, :cond_1e3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "notCachedSinceIdle="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " initialIdlePss="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    :cond_1e3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "oom: max="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " curRaw="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " setRaw="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " cur="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " set="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curSchedGroup="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " setSchedGroup="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " systemNoUi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " trimMemoryLevel="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " repProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " pssProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " setProcState="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " lastStateTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v7, :cond_287

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    if-nez v7, :cond_287

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v7, :cond_2a8

    :cond_287
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "hasShownUi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " pendingUiClean="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " hasAboveClient="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2a8
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    if-nez v7, :cond_2b4

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v7, :cond_2b4

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    if-eqz v7, :cond_2d5

    :cond_2b4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "setIsForeground="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " foregroundServices="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " forcingToForeground="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2d5
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v7, :cond_2dd

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v7, :cond_2f4

    :cond_2dd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "persistent="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " removed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2f4
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasActivities:Z

    if-nez v7, :cond_300

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v7, :cond_300

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v7, :cond_321

    :cond_300
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "hasActivities="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasActivities:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " hasClientActivities="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " foregroundActivities="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_321
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v7, :cond_332

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "hasStartedServices="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_332
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-nez v7, :cond_38f

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v8

    monitor-enter v8

    :try_start_33d
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v5

    monitor-exit v8
    :try_end_352
    .catchall {:try_start_33d .. :try_end_352} :catchall_468

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    sub-long v3, v5, v7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastWakeTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " timeUsed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastCpuTime="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v7, " timeUsed="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v9, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_38f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "lastRequestedGc="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " lastLowMemory="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v7, v8, v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v7, " reportLowMemory="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v7, :cond_3b8

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v7, :cond_3cf

    :cond_3b8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "killedByAm="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " waitingToKill="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3cf
    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-nez v7, :cond_3e7

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v7, :cond_3e7

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v7, :cond_3e7

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v7, :cond_3e7

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v7, :cond_3e7

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v7, :cond_43b

    :cond_3e7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "debugging="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " crashing="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " notResponding="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " bad="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v7, :cond_438

    const-string v7, " errorReportReceiver="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_438
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_43b
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_46b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Activities:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_44c
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_46b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44c

    :catchall_468
    move-exception v7

    :try_start_469
    monitor-exit v8
    :try_end_46a
    .catchall {:try_start_469 .. :try_end_46a} :catchall_468

    throw v7

    :cond_46b
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_498

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Services:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_47c
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_498

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47c

    :cond_498
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_4cf

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Executing Services (fg="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4b3
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_4cf

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b3

    :cond_4cf
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_4fc

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Connections:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4e0
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_4fc

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e0

    :cond_4fc
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_53c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Published Providers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_50d
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_53c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "    -> "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50d

    :cond_53c
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_56f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Connected Providers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_54d
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_56f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_54d

    :cond_56f
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v7, :cond_580

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "curReceiver="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_580
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_5ad

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Receivers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_591
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_5ad

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  - "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_591

    :cond_5ad
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    if-le v0, p1, :cond_8

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    :cond_8
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x0

    :cond_9
    return-object v1

    :cond_a
    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_d
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getSetAdjWithServices()I
    .registers 3

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    goto :goto_c
.end method

.method public isInterestingToUserLocked()Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_1c

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    :goto_18
    return v3

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1    # Landroid/app/IApplicationThread;
    .param p2    # Lcom/android/server/am/ProcessStatsService;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_67

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v0, :cond_19

    const/4 v1, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    :cond_19
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    const/4 v6, 0x0

    :goto_2f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_67

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v7, :cond_46

    if-eq v7, v0, :cond_46

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    :cond_46
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v7, v1, :cond_5f

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    :cond_5f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_67
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_72

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5e

    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_49
    return-object v1

    :cond_4a
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_58
    const-string v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_5e
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_6c
    const-string v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_72
    const/4 v1, 0x0

    goto :goto_49
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1    # Lcom/android/server/am/ProcessStatsService;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v0, :cond_3c

    if-eqz v0, :cond_1a

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    :cond_1a
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v6, 0x0

    :goto_1d
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v7, :cond_34

    if-eq v7, v0, :cond_34

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    :cond_34
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v8}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3c
    return-void
.end method

.method modifyRawOomAdj(I)I
    .registers 3
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_6

    if-gez p1, :cond_7

    :cond_6
    :goto_6
    return p1

    :cond_7
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x2

    if-ge p1, v0, :cond_11

    const/4 p1, 0x2

    goto :goto_6

    :cond_11
    const/16 v0, 0x9

    if-ge p1, v0, :cond_18

    const/16 p1, 0x9

    goto :goto_6

    :cond_18
    const/16 v0, 0xf

    if-ge p1, v0, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_6
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 12
    .param p1    # Lcom/android/server/am/ProcessStatsService;

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v0, :cond_58

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    if-eq v6, v9, :cond_57

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v6, :cond_34

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v8, :cond_31

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v8, v0, :cond_31

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v8, v0, :cond_57

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    :cond_57
    :goto_57
    return-void

    :cond_58
    if-eq v6, v9, :cond_57

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57
.end method

.method public setPid(I)V
    .registers 3
    .param p1    # I

    const/4 v0, 0x0

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public stopFreezingAllLocked()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-lez v0, :cond_17

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    :goto_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    goto :goto_6
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1    # Ljava/lang/StringBuilder;

    const/16 v2, 0x2710

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_22

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/16 v1, 0x75

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v2, :cond_5b

    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_40
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_21

    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_5b
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    :goto_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    goto :goto_6
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    :cond_1e
    return-void

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method
