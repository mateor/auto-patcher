.class Lcom/android/server/am/ActivityManagerService$2$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$2;

.field final synthetic val$memInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 38

    new-instance v23, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_19
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_19

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuThread:Ljava/lang/Thread;

    monitor-enter v10

    :try_start_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v18

    const/16 v22, 0x0

    :goto_55
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_af

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v32

    move-object/from16 v0, v32

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_ac

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v30

    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-lez v4, :cond_ac

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_ac

    new-instance v3, Lcom/android/server/am/ProcessMemInfo;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v6, -0x11

    const/4 v7, -0x1

    const-string v8, "native"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ProcessMemInfo;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v30

    iput-wide v0, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    add-int/lit8 v22, v22, 0x1

    goto :goto_55

    :cond_af
    monitor-exit v10
    :try_end_b0
    .catchall {:try_start_47 .. :try_end_b0} :catchall_e6

    const-wide/16 v35, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_bc
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_e9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_df

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->pid:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    :cond_df
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    add-long v35, v35, v4

    add-int/lit8 v22, v22, 0x1

    goto :goto_bc

    :catchall_e6
    move-exception v4

    :try_start_e7
    monitor-exit v10
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v4

    :cond_e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/ActivityManagerService$2$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$2$1$1;-><init>(Lcom/android/server/am/ActivityManagerService$2$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v34, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v33, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Low on memory -- "

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "total"

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    const-string v4, "total"

    const/4 v5, 0x1

    move-object/from16 v0, v33

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Low on memory:\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x1

    const/high16 v26, -0x80000000

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_142
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_29a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessMemInfo;

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/16 v5, -0x11

    if-eq v4, v5, :cond_21a

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_169

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_169

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_21a

    :cond_169
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v26

    if-eq v0, v4, :cond_204

    iget v0, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v26, v0

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v4, :cond_17e

    const-string v4, " / "

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17e
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v4, :cond_1fc

    if-eqz v21, :cond_18d

    const-string v4, ":"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    :cond_18d
    const-string v4, "\n\t at "

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_194
    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-gtz v4, :cond_1a2

    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v8, v3, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v34

    invoke-static {v0, v4, v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    :cond_1a2
    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-object v8, v3, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v4, v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->appendMemBucket(Ljava/lang/StringBuilder;JLjava/lang/String;Z)V

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ltz v4, :cond_21a

    add-int/lit8 v4, v22, 0x1

    move/from16 v0, v18

    if-ge v4, v0, :cond_1c8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->val$memInfos:Ljava/util/ArrayList;

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessMemInfo;

    iget v4, v4, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    move/from16 v0, v26

    if-eq v4, v0, :cond_21a

    :cond_1c8
    const-string v4, "("

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v25, 0x0

    :goto_1d1
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v4, v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_213

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v4, v4, v25

    iget v5, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-ne v4, v5, :cond_1f9

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v4, v4, v25

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v4, v4, v25

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1f9
    add-int/lit8 v25, v25, 0x1

    goto :goto_1d1

    :cond_1fc
    const-string v4, "$"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_194

    :cond_204
    const-string v4, " "

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_194

    :cond_213
    const-string v4, ")"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21a
    const-string v4, "  "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->procState:I

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/android/server/am/ProcessMemInfo;->pss:J

    move-object/from16 v0, v27

    invoke-static {v0, v4, v5}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    const-string v4, " kB: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/ProcessMemInfo;->pid:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    if-eqz v4, :cond_296

    const-string v4, "                      "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_296
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_142

    :cond_29a
    const-string v4, "           "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList;->appendRamKb(Ljava/lang/StringBuilder;J)V

    const-string v4, " kB: TOTAL\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    new-array v0, v4, [J

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/Debug;->getMemInfo([J)V

    const-string v4, "  MemInfo: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB slab, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB shmem, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB buffers, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB cached, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kB free\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    aget-wide v4, v24, v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_344

    const-string v4, "  ZRAM: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " kB RAM, "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " kB swap total, "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    aget-wide v4, v24, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " kB swap free\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_344
    const-string v4, "ActivityManager"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v4, 0x400

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v19, Ljava/io/StringWriter;

    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v12, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_385
    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/4 v4, 0x0

    const/16 v5, 0x100

    move-object/from16 v0, v19

    invoke-direct {v6, v0, v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityManagerService;->dumpProcessesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActiveServices;->dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v12
    :try_end_3ca
    .catchall {:try_start_385 .. :try_end_3ca} :catchall_412

    invoke-virtual/range {v19 .. v19}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v9, "lowmem"

    const/4 v10, 0x0

    const-string v11, "system_server"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_3f6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    cmp-long v4, v8, v28

    if-gez v4, :cond_410

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v28

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    :cond_410
    monitor-exit v5
    :try_end_411
    .catchall {:try_start_3f6 .. :try_end_411} :catchall_415

    return-void

    :catchall_412
    move-exception v4

    :try_start_413
    monitor-exit v12
    :try_end_414
    .catchall {:try_start_413 .. :try_end_414} :catchall_412

    throw v4

    :catchall_415
    move-exception v4

    :try_start_416
    monitor-exit v5
    :try_end_417
    .catchall {:try_start_416 .. :try_end_417} :catchall_415

    throw v4
.end method
