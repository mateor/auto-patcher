.class Lcom/android/server/location/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 4
    .param p1    # Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # operator++ for: Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # operator++ for: Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # invokes: Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$500(Lcom/android/server/location/ComprehensiveCountryDetector;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # invokes: Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;
    invoke-static {v0, v1, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    goto :goto_13
.end method
