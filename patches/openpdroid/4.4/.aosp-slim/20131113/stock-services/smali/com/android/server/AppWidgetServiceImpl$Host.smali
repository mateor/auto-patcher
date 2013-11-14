.class Lcom/android/server/AppWidgetServiceImpl$Host;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Host"
.end annotation


# instance fields
.field callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

.field hostId:I

.field instances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field packageName:Ljava/lang/String;

.field tag:I

.field uid:I

.field zombie:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->instances:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method uidMatches(I)Z
    .registers 4
    .param p1    # I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/android/server/AppWidgetServiceImpl$Host;->uid:I

    if-ne v0, p1, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method
