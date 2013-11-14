.class Lcom/android/server/location/GpsLocationProvider$GpsRequest;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsRequest"
.end annotation


# instance fields
.field public request:Lcom/android/internal/location/ProviderRequest;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1    # Lcom/android/internal/location/ProviderRequest;
    .param p2    # Landroid/os/WorkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    return-void
.end method
