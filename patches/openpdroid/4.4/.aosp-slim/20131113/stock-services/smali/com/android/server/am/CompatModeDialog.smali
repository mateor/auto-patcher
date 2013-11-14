.class public final Lcom/android/server/am/CompatModeDialog;
.super Landroid/app/Dialog;
.source "CompatModeDialog.java"


# instance fields
.field final mAlwaysShow:Landroid/widget/CheckBox;

.field final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field final mCompatEnabled:Landroid/widget/Switch;

.field final mHint:Landroid/view/View;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    const v0, 0x1030070

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModeDialog;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModeDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const v0, 0x1090029

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->setContentView(I)V

    const v0, 0x102027c

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    new-instance v1, Lcom/android/server/am/CompatModeDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/CompatModeDialog$1;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x102027d

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/server/am/CompatModeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/CompatModeDialog$2;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x102027e

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    return-void
.end method


# virtual methods
.method updateControls()V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v6, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    if-ne v1, v3, :cond_31

    :goto_13
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    if-eqz v0, :cond_2c

    const/4 v2, 0x4

    :cond_2c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    monitor-exit v4

    return-void

    :cond_31
    move v3, v2

    goto :goto_13

    :catchall_33
    move-exception v2

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v2
.end method
