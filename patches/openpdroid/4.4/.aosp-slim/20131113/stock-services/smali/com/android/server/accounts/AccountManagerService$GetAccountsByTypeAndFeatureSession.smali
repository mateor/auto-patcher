.class Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountsByTypeAndFeatureSession"
.end annotation


# instance fields
.field private volatile mAccountsOfType:[Landroid/accounts/Account;

.field private volatile mAccountsWithFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mCallingUid:I

.field private volatile mCurrentAccount:I

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 15
    .param p2    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3    # Landroid/accounts/IAccountManagerResponse;
    .param p4    # Ljava/lang/String;
    .param p5    # [Ljava/lang/String;
    .param p6    # I

    const/4 v7, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    iput-object v7, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iput-object v7, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iput p6, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkAccount()V
    .registers 6

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v3, v3

    if-lt v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->sendResult()V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-nez v0, :cond_35

    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_40} :catch_41

    goto :goto_a

    :catch_41
    move-exception v1

    const/4 v2, 0x1

    const-string v3, "remote exception"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    goto :goto_a
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;

    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mNumResults:I

    if-nez p1, :cond_f

    const/4 v0, 0x5

    const-string v1, "null bundle"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->onError(ILjava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    goto :goto_e
.end method

.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountType:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_28

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public sendResult()V
    .registers 10

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v3

    if-eqz v3, :cond_5a

    :try_start_7
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/accounts/Account;

    const/4 v2, 0x0

    :goto_10
    array-length v5, v0

    if-ge v2, v5, :cond_20

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calling onResult() on response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "accounts"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-interface {v3, v4}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v1

    const-string v5, "AccountManagerService"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5a

    const-string v5, "AccountManagerService"

    const-string v6, "failure while notifying response"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 6
    .param p1    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAccountsByTypeAndFeatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_2e

    const-string v0, ","

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_25
.end method
