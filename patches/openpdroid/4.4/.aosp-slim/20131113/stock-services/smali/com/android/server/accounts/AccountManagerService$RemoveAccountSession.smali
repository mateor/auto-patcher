.class Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccountSession"
.end annotation


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .registers 12
    .param p2    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3    # Landroid/accounts/IAccountManagerResponse;
    .param p4    # Landroid/accounts/Account;

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 8
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_63

    const-string v3, "booleanResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    const-string v3, "booleanResult"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    # invokes: Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->access$1000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    :cond_23
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    if-eqz v1, :cond_63

    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_56

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

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "booleanResult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_60
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_67

    :cond_63
    :goto_63
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void

    :catch_67
    move-exception v3

    goto :goto_63
.end method

.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .registers 5
    .param p1    # J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removeAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
