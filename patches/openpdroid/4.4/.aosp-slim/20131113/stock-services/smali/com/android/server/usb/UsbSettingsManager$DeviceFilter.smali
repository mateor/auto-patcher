.class Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mProductId:I

.field public final mProtocol:I

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iput p2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iput p3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iput p4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iput p5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3
    .param p1    # Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    return-void
.end method

.method private matches(III)Z
    .registers 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne p1, v0, :cond_1b

    :cond_9
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne p2, v0, :cond_1b

    :cond_11
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne p3, v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .registers 11
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_4c

    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "vendor-id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v1, v9

    :cond_21
    :goto_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_24
    const-string v0, "product-id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v2, v9

    goto :goto_21

    :cond_2e
    const-string v0, "class"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v3, v9

    goto :goto_21

    :cond_38
    const-string v0, "subclass"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v4, v9

    goto :goto_21

    :cond_42
    const-string v0, "protocol"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v5, v9

    goto :goto_21

    :cond_4c
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(IIIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v4, v5, :cond_19

    :cond_17
    move v2, v3

    :cond_18
    :goto_18
    return v2

    :cond_19
    instance-of v4, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    if-eqz v4, :cond_40

    move-object v1, p1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v4, v5, :cond_18

    :cond_3e
    move v2, v3

    goto :goto_18

    :cond_40
    instance-of v4, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_71

    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v4, v5, :cond_6f

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v4, v5, :cond_6f

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v4, v5, :cond_6f

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v4, v5, :cond_6f

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v4, v5, :cond_18

    :cond_6f
    move v2, v3

    goto :goto_18

    :cond_71
    move v2, v3

    goto :goto_18
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .registers 10
    .param p1    # Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v5, v7, :cond_10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    iget v6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v5, v6, :cond_10

    :cond_f
    :goto_f
    return v3

    :cond_10
    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v5, v7, :cond_1c

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    iget v6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v5, v6, :cond_f

    :cond_1c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_30

    move v3, v4

    goto :goto_f

    :cond_30
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v0, :cond_f

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v3, v4

    goto :goto_f

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_35
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 6
    .param p1    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v1, v3, :cond_d

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v1, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v1, v3, :cond_17

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v1, v2, :cond_c

    :cond_17
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_16

    const-string v0, "vendor-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_25

    const-string v0, "product-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v3, :cond_34

    const-string v0, "class"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_34
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v3, :cond_43

    const-string v0, "subclass"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_43
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v3, :cond_52

    const-string v0, "protocol"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_52
    const-string v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
