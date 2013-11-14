.class public Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncHistoryItem"
.end annotation


# instance fields
.field authorityId:I

.field downstreamActivity:J

.field elapsedTime:J

.field event:I

.field eventTime:J

.field extras:Landroid/os/Bundle;

.field historyId:I

.field initialization:Z

.field mesg:Ljava/lang/String;

.field reason:I

.field source:I

.field upstreamActivity:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
