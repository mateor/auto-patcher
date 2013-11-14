.class Lcom/android/server/pm/GrantedPermissions;
.super Ljava/lang/Object;
.source "GrantedPermissions.java"


# instance fields
.field gids:[I

.field grantedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgFlags:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/GrantedPermissions;)V
    .registers 3
    .param p1    # Lcom/android/server/pm/GrantedPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    iget v0, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    :cond_26
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .registers 3
    .param p1    # I

    const v0, 0x60040001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    return-void
.end method
