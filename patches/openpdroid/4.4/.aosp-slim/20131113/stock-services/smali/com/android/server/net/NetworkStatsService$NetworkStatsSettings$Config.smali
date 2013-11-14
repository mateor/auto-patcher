.class public Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final bucketDuration:J

.field public final deleteAgeMillis:J

.field public final rotateAgeMillis:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7
    .param p1    # J
    .param p3    # J
    .param p5    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iput-wide p5, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    return-void
.end method
