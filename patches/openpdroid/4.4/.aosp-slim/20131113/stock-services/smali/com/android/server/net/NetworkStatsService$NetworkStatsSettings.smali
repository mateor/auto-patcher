.class public interface abstract Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkStatsSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    }
.end annotation


# virtual methods
.method public abstract getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
.end method

.method public abstract getDevPersistBytes(J)J
.end method

.method public abstract getGlobalAlertBytes(J)J
.end method

.method public abstract getPollInterval()J
.end method

.method public abstract getReportXtOverDev()Z
.end method

.method public abstract getSampleEnabled()Z
.end method

.method public abstract getTimeCacheMaxAge()J
.end method

.method public abstract getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
.end method

.method public abstract getUidPersistBytes(J)J
.end method

.method public abstract getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
.end method

.method public abstract getUidTagPersistBytes(J)J
.end method

.method public abstract getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
.end method

.method public abstract getXtPersistBytes(J)J
.end method
