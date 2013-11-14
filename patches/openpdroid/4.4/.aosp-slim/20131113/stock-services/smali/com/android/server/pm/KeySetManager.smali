.class public Lcom/android/server/pm/KeySetManager;
.super Ljava/lang/Object;
.source "KeySetManager.java"


# static fields
.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field private static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManager"

.field private static lastIssuedKeyId:J

.field private static lastIssuedKeySetId:J


# instance fields
.field private final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockObject:Ljava/lang/Object;

.field private final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    return-void
.end method

.method private addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Landroid/content/pm/KeySet;"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Provided keys cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/PublicKey;

    invoke-direct {p0, v6}, Lcom/android/server/pm/KeySetManager;->addPublicKeyLocked(Ljava/security/PublicKey;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManager;->getIdFromKeyIdsLocked(Ljava/util/Set;)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_42

    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/KeySet;

    :goto_41
    return-object v8

    :cond_42
    new-instance v7, Landroid/content/pm/KeySet;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-direct {v7, v8}, Landroid/content/pm/KeySet;-><init>(Landroid/os/Binder;)V

    invoke-direct {p0}, Lcom/android/server/pm/KeySetManager;->getFreeKeySetIDLocked()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v8, v7

    goto :goto_41
.end method

.method private addPublicKeyLocked(Ljava/security/PublicKey;)J
    .registers 8
    .param p1    # Ljava/security/PublicKey;

    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getIdForPublicKeyLocked(Ljava/security/PublicKey;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_b

    :goto_a
    return-wide v0

    :cond_b
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManager;->getFreePublicKeyIdLocked()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v0, v2

    goto :goto_a
.end method

.method private getFreeKeySetIDLocked()J
    .registers 5

    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLocked()J
    .registers 5

    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    sget-wide v0, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLocked(Landroid/content/pm/KeySet;)J
    .registers 6
    .param p1    # Landroid/content/pm/KeySet;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/KeySet;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    :goto_1d
    return-wide v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 v2, -0x1

    goto :goto_1d
.end method

.method private getIdForPublicKeyLocked(Ljava/security/PublicKey;)J
    .registers 8
    .param p1    # Ljava/security/PublicKey;

    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    :goto_a
    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_33

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    new-instance v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    :goto_2f
    return-wide v4

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_33
    const-wide/16 v4, -0x1

    goto :goto_2f
.end method

.method private getIdFromKeyIdsLocked(Ljava/util/Set;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    :goto_1d
    return-wide v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 v2, -0x1

    goto :goto_1d
.end method

.method private getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-nez v6, :cond_12

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unknown package"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_12
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_1e

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Package has no keySet data"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v5, :cond_39

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_39
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_41
    if-ge v1, v5, :cond_4f

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_4f
    return-object v2
.end method


# virtual methods
.method public addDefinedKeySetToPackage(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v5

    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManager;->addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_23

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "Unknown package"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_20
    move-exception v4

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v4

    :cond_23
    :try_start_23
    invoke-direct {p0, v2}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v0

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4, v0, v1, p3}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_20

    goto :goto_6
.end method

.method public addSigningKeySetToPackage(Ljava/lang/String;Ljava/util/Set;)V
    .registers 18
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v12, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v12

    :try_start_8
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManager;->addKeySetLocked(Ljava/util/Set;)Landroid/content/pm/KeySet;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v4

    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-nez v10, :cond_27

    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "Got invalid KeySet id"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    :catchall_24
    move-exception v11

    monitor-exit v12
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v11

    :cond_27
    :try_start_27
    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    if-nez v9, :cond_3b

    new-instance v11, Ljava/lang/NullPointerException;

    const-string v13, "No such package!"

    invoke-direct {v11, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_3b
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v11, v4, v5}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v1

    array-length v8, v1

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v8, :cond_6e

    aget-wide v13, v1, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_6e
    monitor-exit v12
    :try_end_6f
    .catchall {:try_start_27 .. :try_end_6f} :catchall_24

    goto :goto_4
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 21
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/server/pm/PackageManagerService$DumpState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v14

    const/4 v11, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_127

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz p2, :cond_2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_2e
    if-nez v11, :cond_41

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v13

    if-eqz v13, :cond_39

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_39
    const-string v13, "Key Set Manager:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    const-string v13, "  ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v13, :cond_12

    const/4 v12, 0x0

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v12, :cond_ac

    const-string v13, "      KeySets Aliases: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v13, 0x3d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6d

    :catchall_a9
    move-exception v13

    monitor-exit v14
    :try_end_ab
    .catchall {:try_start_6 .. :try_end_ab} :catchall_a9

    throw v13

    :cond_ac
    :try_start_ac
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_83

    :cond_b4
    if-eqz v12, :cond_bd

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bd
    const/4 v12, 0x0

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getDefinedKeySets()[J

    move-result-object v1

    array-length v9, v1

    const/4 v5, 0x0

    :goto_c6
    if-ge v5, v9, :cond_e8

    aget-wide v6, v1, v5

    if-nez v12, :cond_e0

    const-string v13, "      Defined KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_d4
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c6

    :cond_e0
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_d4

    :cond_e8
    if-eqz v12, :cond_f1

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f1
    const/4 v12, 0x0

    iget-object v13, v10, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v1

    array-length v9, v1

    const/4 v5, 0x0

    :goto_fa
    if-ge v5, v9, :cond_11c

    aget-wide v6, v1, v5

    if-nez v12, :cond_114

    const-string v13, "      Signing KeySets: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x1

    :goto_108
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_fa

    :cond_114
    const-string v13, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_108

    :cond_11c
    if-eqz v12, :cond_12

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_127
    monitor-exit v14
    :try_end_128
    .catchall {:try_start_ac .. :try_end_128} :catchall_a9

    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getIdByKeySet(Landroid/content/pm/KeySet;)J
    .registers 6
    .param p1    # Landroid/content/pm/KeySet;

    iget-object v1, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getKeySetByAliasAndPackageName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_18

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Unknown package"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_15
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3

    :cond_18
    :try_start_18
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_24

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Package has no keySet data"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/KeySet;

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_15

    return-object v3
.end method

.method public getKeySetById(J)Landroid/content/pm/KeySet;
    .registers 5
    .param p1    # J

    iget-object v1, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/KeySet;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getSigningKeySetsByPackageName(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-nez v5, :cond_1d

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v9, "Unknown package"

    invoke-direct {v7, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_1a
    move-exception v7

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v7

    :cond_1d
    :try_start_1d
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v7, :cond_29

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Package has no keySet data"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_29
    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v4, :cond_41

    aget-wide v2, v0, v1

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_41
    monitor-exit v8
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_1a

    return-object v6
.end method

.method public packageIsSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/pm/KeySet;

    iget-object v4, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_18

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Invalid package name"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_15
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3

    :cond_18
    :try_start_18
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v3, :cond_24

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Package has no KeySet data"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManager;->getIdByKeySetLocked(Landroid/content/pm/KeySet;)J

    move-result-wide v0

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->packageIsSignedBy(J)Z

    move-result v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_15

    return v3
.end method

.method readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J
    .registers 4
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const-wide/16 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_61

    if-ne v6, v10, :cond_16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_61

    :cond_16
    if-eq v6, v10, :cond_7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "keyset"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v8, Landroid/content/pm/KeySet;

    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    invoke-direct {v8, v9}, Landroid/content/pm/KeySet;-><init>(Landroid/os/Binder;)V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7

    :cond_45
    const-string v7, "key-id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readIdentifierLPw(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_61
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "keys"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_1f
    const-string v4, "keysets"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_2b
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_54

    if-ne v2, v5, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_54

    :cond_15
    if-eq v2, v5, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_2a
    const-string v3, "lastIssuedKeyId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    goto :goto_6

    :cond_3f
    const-string v3, "lastIssuedKeySetId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    goto :goto_6

    :cond_54
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v5, "identifier"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, "value"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public removeAppKeySetData(Ljava/lang/String;)V
    .registers 16
    .param p1    # Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/pm/KeySetManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManager;->getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_11

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :catchall_2f
    move-exception v10

    monitor-exit v11
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v10

    :cond_32
    :try_start_32
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3c

    invoke-direct {p0, v9}, Lcom/android/server/pm/KeySetManager;->getKnownKeySetsByPackageNameLocked(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5e
    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_5e

    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5e

    :cond_7c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_80

    :cond_9f
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_a3

    :cond_b9
    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/KeySetManager;->mPackages:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeSigningKeySet(J)V

    iget-object v10, v8, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/android/server/pm/PackageKeySetData;->removeDefinedKeySet(J)V

    goto :goto_db

    :cond_fa
    monitor-exit v11
    :try_end_fb
    .catchall {:try_start_32 .. :try_end_fb} :catchall_2f

    return-void
.end method

.method writeKeySetManagerLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "keyset-settings"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManager;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    sget-wide v1, Lcom/android/server/pm/KeySetManager;->lastIssuedKeyId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeyId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    sget-wide v1, Lcom/android/server/pm/KeySetManager;->lastIssuedKeySetId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lastIssuedKeySetId"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "keyset-settings"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p1    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    :goto_7
    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5b

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    iget-object v7, p0, Lcom/android/server/pm/KeySetManager;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2f

    :cond_53
    const-string v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_5b
    const-string v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    :goto_7
    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    iget-object v5, p0, Lcom/android/server/pm/KeySetManager;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/KeySetManager;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "identifier"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "value"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_3c
    const-string v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
