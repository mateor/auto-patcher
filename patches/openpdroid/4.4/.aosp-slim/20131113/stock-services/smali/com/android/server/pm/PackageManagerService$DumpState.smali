.class Lcom/android/server/pm/PackageManagerService$DumpState;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpState"
.end annotation


# static fields
.field public static final DUMP_FEATURES:I = 0x2

.field public static final DUMP_KEYSETS:I = 0x800

.field public static final DUMP_LIBS:I = 0x1

.field public static final DUMP_MESSAGES:I = 0x40

.field public static final DUMP_PACKAGES:I = 0x10

.field public static final DUMP_PERMISSIONS:I = 0x8

.field public static final DUMP_PREFERRED:I = 0x200

.field public static final DUMP_PREFERRED_XML:I = 0x400

.field public static final DUMP_PROVIDERS:I = 0x80

.field public static final DUMP_RESOLVERS:I = 0x4

.field public static final DUMP_SHARED_USERS:I = 0x20

.field public static final DUMP_VERIFIERS:I = 0x100

.field public static final OPTION_SHOW_FILTERS:I = 0x1


# instance fields
.field private mOptions:I

.field private mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field private mTitlePrinted:Z

.field private mTypes:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedUser()Lcom/android/server/pm/SharedUserSetting;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-object v0
.end method

.method public getTitlePrinted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    return v0
.end method

.method public isDumping(I)Z
    .registers 4
    .param p1    # I

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    if-nez v1, :cond_a

    const/16 v1, 0x400

    if-eq p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    and-int/2addr v1, p1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOptionEnabled(I)Z
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onTitlePrinted()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    return v0
.end method

.method public setDump(I)V
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTypes:I

    return-void
.end method

.method public setOptionEnabled(I)V
    .registers 3
    .param p1    # I

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mOptions:I

    return-void
.end method

.method public setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V
    .registers 2
    .param p1    # Lcom/android/server/pm/SharedUserSetting;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mSharedUser:Lcom/android/server/pm/SharedUserSetting;

    return-void
.end method

.method public setTitlePrinted(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$DumpState;->mTitlePrinted:Z

    return-void
.end method
