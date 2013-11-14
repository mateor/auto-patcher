.class Lcom/android/server/CountryDetectorService$1;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CountryDetectorService;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$1;->this$0:Lcom/android/server/CountryDetectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .registers 4
    .param p1    # Landroid/location/Country;

    iget-object v0, p0, Lcom/android/server/CountryDetectorService$1;->this$0:Lcom/android/server/CountryDetectorService;

    # getter for: Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/CountryDetectorService;->access$100(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/CountryDetectorService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$1$1;-><init>(Lcom/android/server/CountryDetectorService$1;Landroid/location/Country;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
