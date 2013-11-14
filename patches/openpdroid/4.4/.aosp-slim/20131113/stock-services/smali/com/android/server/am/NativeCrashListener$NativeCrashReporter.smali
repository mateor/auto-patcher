.class Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/NativeCrashListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCrashReporter"
.end annotation


# instance fields
.field mApp:Lcom/android/server/am/ProcessRecord;

.field mCrashReport:Ljava/lang/String;

.field mSignal:I

.field final synthetic this$0:Lcom/android/server/am/NativeCrashListener;


# direct methods
.method constructor <init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V
    .registers 6
    .param p2    # Lcom/android/server/am/ProcessRecord;
    .param p3    # I
    .param p4    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    const-string v0, "NativeCrashReport"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iput p3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    iput-object p4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    const-string v2, "Native crash"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v3, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mSignal:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string v2, "unknown"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    const-string v2, "unknown"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    const-string v2, "unknown"

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mCrashReport:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->this$0:Lcom/android/server/am/NativeCrashListener;

    iget-object v2, v2, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "native_crash"

    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->handleApplicationCrashInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v1

    const-string v2, "NativeCrashListener"

    const-string v3, "Unable to report native crash"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method
