.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field dispatchClockTime:J

.field dispatchTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field nextReceiver:I

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermission:Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .registers 21
    .param p1    # Lcom/android/server/am/BroadcastQueue;
    .param p2    # Landroid/content/Intent;
    .param p3    # Lcom/android/server/am/ProcessRecord;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # I
    .param p10    # Ljava/util/List;
    .param p11    # Landroid/content/IIntentReceiver;
    .param p12    # I
    .param p13    # Ljava/lang/String;
    .param p14    # Landroid/os/Bundle;
    .param p15    # Z
    .param p16    # Z
    .param p17    # Z
    .param p18    # I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput p12, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput-object p13, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 16
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v9, " to user "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v9, :cond_3f

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eq v9, v10, :cond_3f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  targetComp: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  extras: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_56
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "caller="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_251

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v9

    :goto_72
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " pid="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " uid="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    if-nez v9, :cond_92

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a9

    :cond_92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "requiredPermission="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  appOp="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_a9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "dispatchClockTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    iget-wide v10, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "dispatchTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v9, v10, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_255

    const-string v9, " finishTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v9, v10, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_da
    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v9, :cond_f0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "anrCount="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    :cond_f0
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v9, :cond_fd

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_fd

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v9, :cond_11e

    :cond_fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "resultTo="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v9, " resultCode="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " resultData="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11e
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v9, :cond_12f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "resultExtras="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_12f
    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v9, :cond_13f

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v9, :cond_13f

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v9, :cond_13f

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v9, :cond_16a

    :cond_13f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "resultAbort="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " ordered="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " sticky="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Z)V

    const-string v9, " initialSticky="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Z)V

    :cond_16a
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v9, :cond_172

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v9, :cond_189

    :cond_172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "nextReceiver="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " receiver="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_189
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_19a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curFilter="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_19a
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_1ab

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curReceiver="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1ab
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_1ec

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curApp="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curComponent="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_261

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    :goto_1ce
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_1ec

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_1ec

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "curSourceDir="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1ec
    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v9, :cond_207

    const-string v8, " (?)"

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    packed-switch v9, :pswitch_data_27e

    :goto_1f7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "state="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_207
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v9, :cond_271

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    :goto_211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v2, 0x0

    :goto_22a
    if-ge v2, v0, :cond_27d

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Receiver #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    instance-of v9, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_273

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_24e
    :goto_24e
    add-int/lit8 v2, v2, 0x1

    goto :goto_22a

    :cond_251
    const-string v9, "null"

    goto/16 :goto_72

    :cond_255
    const-string v9, " receiverTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v9, v10, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_da

    :cond_261
    const-string v9, "--"

    goto/16 :goto_1ce

    :pswitch_265
    const-string v8, " (APP_RECEIVE)"

    goto :goto_1f7

    :pswitch_268
    const-string v8, " (CALL_IN_RECEIVE)"

    goto :goto_1f7

    :pswitch_26b
    const-string v8, " (CALL_DONE_RECEIVE)"

    goto :goto_1f7

    :pswitch_26e
    const-string v8, " (WAITING_SERVICES)"

    goto :goto_1f7

    :cond_271
    const/4 v0, 0x0

    goto :goto_211

    :cond_273
    instance-of v9, v5, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_24e

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_24e

    :cond_27d
    return-void

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_265
        :pswitch_268
        :pswitch_26b
        :pswitch_26e
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
