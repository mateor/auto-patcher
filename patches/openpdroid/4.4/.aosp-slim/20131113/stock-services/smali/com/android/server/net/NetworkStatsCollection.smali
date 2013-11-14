.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    return-void
.end method

.method private estimateBuckets()I
    .registers 5

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .registers 12
    .param p1    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    :cond_19
    :goto_19
    if-eqz v2, :cond_33

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-object v2

    :cond_21
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v2, v0, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    goto :goto_19

    :cond_33
    move-object v2, v0

    goto :goto_20
.end method

.method private noteRecordedHistory(JJJ)V
    .registers 9
    .param p1    # J
    .param p3    # J
    .param p5    # J

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    :cond_8
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_10

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    :cond_10
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .registers 11
    .param p1    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2    # Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkStatsHistory;

    if-nez v7, :cond_2f

    new-instance v7, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-virtual {v7, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_6
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .registers 5
    .param p0    # Landroid/net/NetworkTemplate;
    .param p1    # Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method


# virtual methods
.method public clearDirty()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1    # Lcom/android/internal/util/IndentingPrintWriter;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    const-string v4, "ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " uid="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v4, " set="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " tag="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_14

    :cond_67
    return-void
.end method

.method public getEndMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    :goto_b
    return-wide v0

    :cond_c
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    goto :goto_b
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 16
    .param p1    # Landroid/net/NetworkTemplate;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .registers 20
    .param p1    # Landroid/net/NetworkTemplate;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # J
    .param p8    # J

    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->estimateBuckets()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_15
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2e

    iget v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    if-ne v1, p3, :cond_4f

    :cond_2e
    const/4 v9, 0x1

    :goto_2f
    iget v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v1, p2, :cond_15

    if-eqz v9, :cond_15

    iget v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v1, p4, :cond_15

    iget-object v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_15

    :cond_4f
    const/4 v9, 0x0

    goto :goto_2f

    :cond_51
    return-object v0
.end method

.method public getStartMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 19
    .param p1    # Landroid/net/NetworkTemplate;
    .param p2    # J
    .param p4    # J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v12, Landroid/net/NetworkStats;

    sub-long v1, p4, p2

    const/16 v3, 0x18

    invoke-direct {v12, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v7, 0x0

    cmp-long v1, p2, p4

    if-nez v1, :cond_18

    :cond_17
    return-object v12

    :cond_18
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_22
    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    move-wide v1, p2

    move-wide/from16 v3, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->uid:I

    iget v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->set:I

    iget v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->tag:I

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v12, v8}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_22
.end method

.method public getTotalBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public read(Ljava/io/DataInputStream;)V
    .registers 18
    .param p1    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const v13, 0x414e4554

    if-eq v7, v13, :cond_22

    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    packed-switch v12, :pswitch_data_7c

    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v2, 0x0

    :goto_47
    if-ge v2, v4, :cond_7a

    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v5, 0x0

    :goto_55
    if-ge v5, v9, :cond_77

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    new-instance v1, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x10
        :pswitch_42
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 3
    .param p1    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .registers 15
    .param p1    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_88
    .catchall {:try_start_6 .. :try_end_14} :catchall_86

    :try_start_14
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const v10, 0x414e4554

    if-eq v7, v10, :cond_3c

    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected magic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_36} :catch_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_5c

    :catch_36
    move-exception v10

    move-object v3, v4

    :goto_38
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_3b
    return-void

    :cond_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    packed-switch v9, :pswitch_data_8a

    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_5c} :catch_36
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v10

    move-object v3, v4

    :goto_5e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    :pswitch_62
    :try_start_62
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/4 v1, 0x0

    :goto_67
    if-ge v1, v8, :cond_81

    new-instance v2, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v2, v4}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v4}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v6, v2, v10, v11, v12}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    invoke-direct {p0, v6, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_7e} :catch_36
    .catchall {:try_start_62 .. :try_end_7e} :catchall_5c

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_81
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    goto :goto_3b

    :catchall_86
    move-exception v10

    goto :goto_5e

    :catch_88
    move-exception v10

    goto :goto_38

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_62
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .registers 23
    .param p1    # Ljava/io/File;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v8, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    :try_start_8
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_c0
    .catchall {:try_start_8 .. :try_end_18} :catchall_be

    :try_start_18
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_44

    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_3e} :catch_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_68

    :catch_3e
    move-exception v17

    move-object v6, v7

    :goto_40
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_43
    return-void

    :cond_44
    :try_start_44
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    packed-switch v16, :pswitch_data_c4

    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_68} :catch_3e
    .catchall {:try_start_44 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v17

    move-object v6, v7

    :goto_6a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    :pswitch_6e
    :try_start_6e
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const/4 v3, 0x0

    :goto_73
    if-ge v3, v5, :cond_b9

    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, v7}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    const/4 v9, 0x0

    :goto_7f
    if-ge v9, v13, :cond_b6

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_b1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    :goto_91
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v15, v12, v14}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v7}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    if-nez v14, :cond_b3

    const/16 v17, 0x1

    :goto_a3
    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_ae

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_ae
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_ae} :catch_3e
    .catchall {:try_start_6e .. :try_end_ae} :catchall_68

    :cond_ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    :cond_b1
    const/4 v12, 0x0

    goto :goto_91

    :cond_b3
    const/16 v17, 0x0

    goto :goto_a3

    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_b9
    :pswitch_b9
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    goto :goto_43

    :catchall_be
    move-exception v17

    goto :goto_6a

    :catch_c0
    move-exception v17

    goto/16 :goto_40

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b9
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .registers 6
    .param p1    # Lcom/android/server/net/NetworkStatsCollection;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_a

    :cond_26
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .registers 21
    .param p1    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # J
    .param p7    # J
    .param p9    # Landroid/net/NetworkStats$Entry;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v5

    move-object/from16 v0, p9

    iget-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v9, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v7, v9

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    return-void
.end method

.method public removeUids([I)V
    .registers 10
    .param p1    # [I

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_12

    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    iget-object v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    :cond_3c
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    goto :goto_12

    :cond_45
    return-void
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 10
    .param p1    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2d

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_31
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_6b

    :cond_92
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method
