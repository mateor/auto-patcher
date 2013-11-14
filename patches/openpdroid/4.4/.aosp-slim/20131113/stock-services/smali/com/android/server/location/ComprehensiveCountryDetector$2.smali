.class Lcom/android/server/location/ComprehensiveCountryDetector$2;
.super Ljava/lang/Object;
.source "ComprehensiveCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

.field final synthetic val$country:Landroid/location/Country;

.field final synthetic val$detectedCountry:Landroid/location/Country;

.field final synthetic val$notifyChange:Z

.field final synthetic val$startLocationBasedDetection:Z


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    iput-object p3, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    iput-boolean p4, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    iput-boolean p5, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    iget-boolean v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    iget-boolean v4, p0, Lcom/android/server/location/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V

    return-void
.end method
