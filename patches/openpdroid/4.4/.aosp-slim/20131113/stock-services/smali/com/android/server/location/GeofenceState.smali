.class public Lcom/android/server/location/GeofenceState;
.super Ljava/lang/Object;
.source "GeofenceState.java"


# static fields
.field public static final FLAG_ENTER:I = 0x1

.field public static final FLAG_EXIT:I = 0x2

.field private static final STATE_INSIDE:I = 0x1

.field private static final STATE_OUTSIDE:I = 0x2

.field private static final STATE_UNKNOWN:I


# instance fields
.field public final mAllowedResolutionLevel:I

.field mDistanceToCenter:D

.field public final mExpireAt:J

.field public final mFence:Landroid/location/Geofence;

.field public final mIntent:Landroid/app/PendingIntent;

.field private final mLocation:Landroid/location/Location;

.field public final mPackageName:Ljava/lang/String;

.field mState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/location/Geofence;JIILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1    # Landroid/location/Geofence;
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/String;
    .param p7    # Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GeofenceState;->mState:I

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    iput-object p1, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    iput-wide p2, p0, Lcom/android/server/location/GeofenceState;->mExpireAt:J

    iput p4, p0, Lcom/android/server/location/GeofenceState;->mAllowedResolutionLevel:I

    iput p5, p0, Lcom/android/server/location/GeofenceState;->mUid:I

    iput-object p6, p0, Lcom/android/server/location/GeofenceState;->mPackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/location/GeofenceState;->mIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-void
.end method


# virtual methods
.method public getDistanceToBoundary()D
    .registers 5

    const-wide v0, 0x7fefffffffffffffL

    iget-wide v2, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_e

    :goto_d
    return-wide v0

    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->getRadius()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_d
.end method

.method public processLocation(Landroid/location/Location;)I
    .registers 11
    .param p1    # Landroid/location/Location;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/server/location/GeofenceState;->mLocation:Landroid/location/Location;

    invoke-virtual {v5, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v5, v5

    iput-wide v5, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    iget v1, p0, Lcom/android/server/location/GeofenceState;->mState:I

    iget-wide v5, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    iget-object v7, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v7}, Landroid/location/Geofence;->getRadius()F

    move-result v7

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2b

    move v0, v2

    :goto_24
    if-eqz v0, :cond_2d

    iput v2, p0, Lcom/android/server/location/GeofenceState;->mState:I

    if-eq v1, v2, :cond_33

    :goto_2a
    return v2

    :cond_2b
    move v0, v4

    goto :goto_24

    :cond_2d
    iput v3, p0, Lcom/android/server/location/GeofenceState;->mState:I

    if-ne v1, v2, :cond_33

    move v2, v3

    goto :goto_2a

    :cond_33
    move v2, v4

    goto :goto_2a
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget v1, p0, Lcom/android/server/location/GeofenceState;->mState:I

    packed-switch v1, :pswitch_data_2c

    const-string v0, "?"

    :goto_7
    const-string v1, "%s d=%.0f %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/location/GeofenceState;->mFence:Landroid/location/Geofence;

    invoke-virtual {v4}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/server/location/GeofenceState;->mDistanceToCenter:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_26
    const-string v0, "IN"

    goto :goto_7

    :pswitch_29
    const-string v0, "OUT"

    goto :goto_7

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method
