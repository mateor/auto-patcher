.class final Lcom/android/server/am/AppWaitingForDebuggerDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppWaitingForDebuggerDialog.java"


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private final mHandler:Landroid/os/Handler;

.field final mProc:Lcom/android/server/am/ProcessRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Landroid/content/Context;
    .param p3    # Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;-><init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V

    iput-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setCancelable(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_90

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, " (process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_48
    const-string v2, " is waiting for the debugger to attach."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    const-string v3, "Force Close"

    iget-object v4, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const-string v2, "Waiting For Debugger"

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting For Debugger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_90
    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method
