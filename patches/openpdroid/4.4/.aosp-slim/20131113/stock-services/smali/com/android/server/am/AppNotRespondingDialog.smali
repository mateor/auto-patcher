.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .registers 16
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Landroid/content/Context;
    .param p3    # Lcom/android/server/am/ProcessRecord;
    .param p4    # Lcom/android/server/am/ActivityRecord;
    .param p5    # Z

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    if-eqz p4, :cond_d0

    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_24
    const/4 v2, 0x0

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ne v5, v8, :cond_db

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_db

    if-eqz v1, :cond_d3

    const v4, 0x104040e

    :goto_3e
    if-eqz v2, :cond_eb

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_52
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    const v6, 0x1040412

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    const/4 v5, -0x2

    const v6, 0x1040414

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v5, :cond_8d

    const/4 v5, -0x3

    const v6, 0x1040413

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    :cond_8d
    const v5, 0x104040d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_a2

    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Not Responding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v5, 0x110

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_d0
    const/4 v1, 0x0

    goto/16 :goto_24

    :cond_d3
    move-object v1, v2

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v4, 0x1040410

    goto/16 :goto_3e

    :cond_db
    if-eqz v1, :cond_e4

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v4, 0x104040f

    goto/16 :goto_3e

    :cond_e4
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const v4, 0x1040411

    goto/16 :goto_3e

    :cond_eb
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_52
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .registers 2
    .param p0    # Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0    # Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method
