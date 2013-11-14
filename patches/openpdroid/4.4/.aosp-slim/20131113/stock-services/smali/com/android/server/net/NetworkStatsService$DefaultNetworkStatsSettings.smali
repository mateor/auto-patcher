.class Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkStatsSettings"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getGlobalBoolean(Ljava/lang/String;Z)Z
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_e

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    :goto_d
    return v1

    :cond_e
    move v0, v2

    goto :goto_5

    :cond_10
    move v1, v2

    goto :goto_d
.end method

.method private getGlobalLong(Ljava/lang/String;J)J
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # J

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 9

    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string v1, "netstats_dev_bucket_duration"

    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "netstats_dev_rotate_age"

    const-wide/32 v4, 0x4d3f6400

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "netstats_dev_delete_age"

    const-wide v6, 0x1cf7c5800L

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method public getDevPersistBytes(J)J
    .registers 5
    .param p1    # J

    const-string v0, "netstats_dev_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGlobalAlertBytes(J)J
    .registers 5
    .param p1    # J

    const-string v0, "netstats_global_alert_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollInterval()J
    .registers 4

    const-string v0, "netstats_poll_interval"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReportXtOverDev()Z
    .registers 3

    const-string v0, "netstats_report_xt_over_dev"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSampleEnabled()Z
    .registers 3

    const-string v0, "netstats_sample_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTimeCacheMaxAge()J
    .registers 4

    const-string v0, "netstats_time_cache_max_age"

    const-wide/32 v1, 0x5265c00

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 9

    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string v1, "netstats_uid_bucket_duration"

    const-wide/32 v2, 0x6ddd00

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "netstats_uid_rotate_age"

    const-wide/32 v4, 0x4d3f6400

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "netstats_uid_delete_age"

    const-wide v6, 0x1cf7c5800L

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method public getUidPersistBytes(J)J
    .registers 5
    .param p1    # J

    const-string v0, "netstats_uid_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 9

    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    const-string v1, "netstats_uid_tag_bucket_duration"

    const-wide/32 v2, 0x6ddd00

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "netstats_uid_tag_rotate_age"

    const-wide/32 v4, 0x19bfcc00

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "netstats_uid_tag_delete_age"

    const-wide/32 v6, 0x4d3f6400

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method public getUidTagPersistBytes(J)J
    .registers 5
    .param p1    # J

    const-string v0, "netstats_uid_tag_persist_bytes"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getGlobalLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v0

    return-object v0
.end method

.method public getXtPersistBytes(J)J
    .registers 5
    .param p1    # J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v0

    return-wide v0
.end method
