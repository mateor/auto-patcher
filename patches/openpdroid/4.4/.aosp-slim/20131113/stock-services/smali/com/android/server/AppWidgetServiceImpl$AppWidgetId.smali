.class Lcom/android/server/AppWidgetServiceImpl$AppWidgetId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWidgetId"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/AppWidgetServiceImpl$Host;

.field options:Landroid/os/Bundle;

.field provider:Lcom/android/server/AppWidgetServiceImpl$Provider;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
