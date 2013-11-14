.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4
    .param p1    # I
    .param p2    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    iput-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return-void
.end method


# virtual methods
.method public addSufficientVerifier(I)V
    .registers 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public extendTimeout()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    :cond_7
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public isInstallAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    goto :goto_5

    :cond_d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isVerificationComplete()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    goto :goto_5
.end method

.method public setVerifierResponse(II)Z
    .registers 6
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    if-ne p1, v2, :cond_16

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    packed-switch p2, :pswitch_data_36

    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    :cond_d
    :goto_d
    return v0

    :pswitch_e
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    :pswitch_13
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_d

    :cond_16
    iget-object v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_34

    if-ne p2, v0, :cond_24

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    goto :goto_d

    :cond_34
    move v0, v1

    goto :goto_d

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
