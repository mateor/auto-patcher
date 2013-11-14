.class public Lcom/android/server/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mReboot:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShutdownActivity;)Z
    .registers 2
    .param p0    # Lcom/android/server/ShutdownActivity;

    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ShutdownActivity;)Z
    .registers 2
    .param p0    # Lcom/android/server/ShutdownActivity;

    iget-boolean v0, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownActivity;->mReboot:Z

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    const-string v2, "ShutdownActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): confirm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ShutdownActivity;->mConfirm:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/ShutdownActivity$1;

    const-string v2, "ShutdownActivity"

    invoke-direct {v1, p0, v2}, Lcom/android/server/ShutdownActivity$1;-><init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/server/ShutdownActivity;->finish()V

    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v2

    goto :goto_46
.end method
