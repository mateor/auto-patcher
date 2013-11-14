.class Lcom/android/server/CountryDetectorService$2;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CountryDetectorService;

.field final synthetic val$listener:Landroid/location/CountryListener;


# direct methods
.method constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$2;->this$0:Lcom/android/server/CountryDetectorService;

    iput-object p2, p0, Lcom/android/server/CountryDetectorService$2;->val$listener:Landroid/location/CountryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/CountryDetectorService$2;->this$0:Lcom/android/server/CountryDetectorService;

    # getter for: Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;
    invoke-static {v0}, Lcom/android/server/CountryDetectorService;->access$200(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/CountryDetectorService$2;->val$listener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->setCountryListener(Landroid/location/CountryListener;)V

    return-void
.end method
