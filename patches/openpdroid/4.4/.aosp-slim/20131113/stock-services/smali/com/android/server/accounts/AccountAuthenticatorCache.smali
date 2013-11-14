.class Lcom/android/server/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Lcom/android/server/accounts/IAccountAuthenticatorCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountAuthenticatorCache$1;,
        Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;",
        "Lcom/android/server/accounts/IAccountAuthenticatorCache;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>(Lcom/android/server/accounts/AccountAuthenticatorCache$1;)V

    sput-object v0, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;

    const-string v2, "android.accounts.AccountAuthenticator"

    const-string v3, "android.accounts.AccountAuthenticator"

    const-string v4, "account-authenticator"

    sget-object v5, Lcom/android/server/accounts/AccountAuthenticatorCache;->sSerializer:Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .registers 4
    .param p1    # Landroid/accounts/AuthenticatorDescription;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .registers 13
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/util/AttributeSet;

    sget-object v0, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v0, 0x2

    :try_start_7
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_3e

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_33
    return-object v0

    :cond_34
    :try_start_34
    new-instance v0, Landroid/accounts/AuthenticatorDescription;

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3e

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_33

    :catchall_3e
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 5
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/util/AttributeSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountAuthenticatorCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method
