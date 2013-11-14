.class Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestFeaturesSession"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mFeatures:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .registers 13
    .param p2    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3    # Landroid/accounts/IAccountManagerResponse;
    .param p4    # Landroid/accounts/Account;
    .param p5    # [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 9
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v2

    if-eqz v2, :cond_f

    if-nez p1, :cond_10

    const/4 v3, 0x5

    :try_start_a
    const-string v4, "null bundle"

    invoke-interface {v2, v3, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calling onResult() on response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "booleanResult"

    const-string v4, "booleanResult"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v2, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_51} :catch_52

    goto :goto_f

    :catch_52
    move-exception v0

    const-string v3, "AccountManagerService"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "AccountManagerService"

    const-string v4, "failure while notifying response"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    invoke-interface {v1, p0, v2, v3}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const/4 v1, 0x1

    const-string v2, "remote exception"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->onError(ILjava/lang/String;)V

    goto :goto_9
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

    const-string v1, ", hasFeatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    if-eqz v0, :cond_3a

    const-string v0, ","

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->mFeatures:[Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_31
.end method
