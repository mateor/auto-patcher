.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# instance fields
.field private mDefinedKeySets:[J

.field private final mKeySetAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningKeySets:[J


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .registers 4
    .param p1    # Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v0

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addDefinedKeySet(JLjava/lang/String;)V
    .registers 12
    .param p1    # J
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v5, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_10

    aget-wide v3, v0, v2

    cmp-long v6, p1, v3

    if-nez v6, :cond_d

    :goto_c
    return-void

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v1, v6

    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    add-int/lit8 v7, v1, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    aput-wide p1, v6, v1

    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public addSigningKeySet(J)V
    .registers 11
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v5, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_10

    aget-wide v3, v0, v2

    cmp-long v6, p1, v3

    if-nez v6, :cond_d

    :goto_c
    return-void

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v1, v6

    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    add-int/lit8 v7, v1, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    iget-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    aput-wide p1, v6, v1

    goto :goto_c
.end method

.method public getAliases()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    return-object v0
.end method

.method public getDefinedKeySets()[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    return-object v0
.end method

.method public getSigningKeySets()[J
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    return-object v0
.end method

.method public packageIsSignedBy(J)Z
    .registers 9
    .param p1    # J

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_11

    aget-wide v3, v0, v1

    cmp-long v5, p1, v3

    if-nez v5, :cond_e

    const/4 v5, 0x1

    :goto_d
    return v5

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    const/4 v5, 0x0

    goto :goto_d
.end method

.method public removeDefinedKeySet(J)V
    .registers 13
    .param p1    # J

    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    new-array v6, v8, [J

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    array-length v7, v1

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v7, :cond_27

    aget-wide v2, v1, v4

    cmp-long v8, v2, p1

    if-eqz v8, :cond_24

    aput-wide v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_27
    iput-object v6, p0, Lcom/android/server/pm/PackageKeySetData;->mDefinedKeySets:[J

    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, p1

    if-nez v8, :cond_33

    iget-object v8, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    return-void
.end method

.method public removeSigningKeySet(J)V
    .registers 11
    .param p1    # J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageKeySetData;->packageIsSignedBy(J)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    new-array v3, v7, [J

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    array-length v4, v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v4, :cond_21

    aget-wide v5, v0, v1

    cmp-long v7, v5, p1

    if-eqz v7, :cond_1e

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_21
    iput-object v3, p0, Lcom/android/server/pm/PackageKeySetData;->mSigningKeySets:[J

    :cond_23
    return-void
.end method
