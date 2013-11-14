.class Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .registers 3
    .param p1    # Landroid/os/Handler;
    .param p2    # I

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
