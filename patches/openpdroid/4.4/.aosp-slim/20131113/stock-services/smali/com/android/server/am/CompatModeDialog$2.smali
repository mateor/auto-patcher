.class Lcom/android/server/am/CompatModeDialog$2;
.super Ljava/lang/Object;
.source "CompatModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CompatModeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CompatModeDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v1, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v2, v2, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0
.end method
