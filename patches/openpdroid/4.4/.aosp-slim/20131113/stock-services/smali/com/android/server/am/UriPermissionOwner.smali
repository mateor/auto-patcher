.class final Lcom/android/server/am/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field externalToken:Landroid/os/Binder;

.field final owner:Ljava/lang/Object;

.field readUriPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final service:Lcom/android/server/am/ActivityManagerService;

.field writeUriPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Lcom/android/server/am/ActivityManagerService;
    .param p2    # Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .registers 2
    .param p0    # Landroid/os/IBinder;

    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    :cond_10
    return-void
.end method

.method removeUriPermissionLocked(Landroid/net/Uri;I)V
    .registers 7
    .param p1    # Landroid/net/Uri;
    .param p2    # I

    const/4 v3, 0x0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_39

    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    :cond_39
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_47

    :cond_67
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_71

    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    :cond_71
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .registers 6
    .param p1    # I

    const/4 v3, 0x0

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    goto :goto_f

    :cond_24
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    :cond_26
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermission;->removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    goto :goto_34

    :cond_49
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    :cond_4b
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .registers 3
    .param p1    # Lcom/android/server/am/UriPermission;

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
