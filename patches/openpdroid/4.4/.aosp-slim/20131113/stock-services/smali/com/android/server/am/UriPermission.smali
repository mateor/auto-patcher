.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$1;,
        Lcom/android/server/am/UriPermission$Snapshot;,
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final uri:Landroid/net/Uri;

.field final userHandle:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    iput v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/UriPermission;->userHandle:I

    iput-object p1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/UriPermission;->targetUid:I

    iput-object p4, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 3
    .param p1    # Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    :cond_1e
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 3
    .param p1    # Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    :cond_1e
    return-void
.end method

.method private updateModeFlags()V
    .registers 3

    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    return-void
.end method


# virtual methods
.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .registers 6

    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method clearModes(IZ)Z
    .registers 8
    .param p1    # I
    .param p2    # Z

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3d

    if-eqz p2, :cond_15

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    :cond_15
    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_2b

    :cond_3b
    iput-object v4, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    :cond_3d
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_77

    if-eqz p2, :cond_4f

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    :cond_4f
    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    if-eqz v3, :cond_77

    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_65

    :cond_75
    iput-object v4, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    :cond_77
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v3, :cond_7f

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    :cond_7f
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v3, v0, :cond_88

    const/4 v3, 0x1

    :goto_87
    return v3

    :cond_88
    const/4 v3, 0x0

    goto :goto_87
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->userHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sourcePkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " targetPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " owned=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " global=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistable=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persisted=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_fa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " persistedCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fa
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    if-eqz v2, :cond_135

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "readOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_135

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10f

    :cond_135
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    if-eqz v2, :cond_16d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "writeOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_147
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_147

    :cond_16d
    return-void
.end method

.method public getStrength(I)I
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x3

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_e

    const/4 v0, 0x2

    goto :goto_6

    :cond_e
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_15

    const/4 v0, 0x1

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method grantModes(IZLcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1    # I
    .param p2    # Z
    .param p3    # Lcom/android/server/am/UriPermissionOwner;

    if-eqz p2, :cond_7

    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    :cond_7
    if-nez p3, :cond_12

    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    :cond_e
    :goto_e
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    return-void

    :cond_12
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_19

    invoke-direct {p0, p3}, Lcom/android/server/am/UriPermission;->addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    :cond_19
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_e

    invoke-direct {p0, p3}, Lcom/android/server/am/UriPermission;->addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    goto :goto_e
.end method

.method initPersistedModes(IJ)V
    .registers 4
    .param p1    # I
    .param p2    # J

    iput p1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    iput p1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iput-wide p2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    return-void
.end method

.method releasePersistableModes(I)Z
    .registers 5
    .param p1    # I

    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v1, :cond_18

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    :cond_18
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v1, v0, :cond_21

    const/4 v1, 0x1

    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1    # Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Ljava/util/HashSet;

    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    :cond_3e
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .registers 5
    .param p1    # Lcom/android/server/am/UriPermissionOwner;

    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Ljava/util/HashSet;

    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    :cond_3e
    return-void
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .registers 3

    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$1;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .registers 6
    .param p1    # I

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v1, p1

    if-eq v1, p1, :cond_38

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but only 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eqz v1, :cond_4c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    :cond_4c
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    iget v1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v1, v0, :cond_55

    const/4 v1, 0x1

    :goto_54
    return v1

    :cond_55
    const/4 v1, 0x0

    goto :goto_54
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    :goto_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    goto :goto_6
.end method
