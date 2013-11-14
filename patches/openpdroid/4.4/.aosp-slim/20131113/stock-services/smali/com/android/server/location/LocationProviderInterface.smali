.class public interface abstract Lcom/android/server/location/LocationProviderInterface;
.super Ljava/lang/Object;
.source "LocationProviderInterface.java"


# virtual methods
.method public abstract disable()V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enable()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getProperties()Lcom/android/internal/location/ProviderProperties;
.end method

.method public abstract getStatus(Landroid/os/Bundle;)I
.end method

.method public abstract getStatusUpdateTime()J
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
.end method
