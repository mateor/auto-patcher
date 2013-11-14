.class public interface abstract Lcom/android/server/accounts/IAccountAuthenticatorCache;
.super Ljava/lang/Object;
.source "IAccountAuthenticatorCache.java"


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
.end method

.method public abstract getAllServices(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            "I)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invalidateCache(I)V
.end method

.method public abstract setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method
