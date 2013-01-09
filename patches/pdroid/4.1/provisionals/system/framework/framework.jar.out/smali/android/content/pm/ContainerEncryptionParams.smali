.class public Landroid/content/pm/ContainerEncryptionParams;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ContainerEncryptionParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENC_PARAMS_IV_PARAMETERS:I = 0x1

.field private static final MAC_PARAMS_NONE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ContainerEncryptionParams"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ContainerEncryptionParams{"


# instance fields
.field private final mAuthenticatedDataStart:J

.field private final mDataEnd:J

.field private final mEncryptedDataStart:J

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final mMacAlgorithm:Ljava/lang/String;

.field private final mMacKey:Ljavax/crypto/SecretKey;

.field private final mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mMacTag:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/ContainerEncryptionParams$1;

    invoke-direct {v0}, Landroid/content/pm/ContainerEncryptionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    packed-switch v0, :pswitch_data_96

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_62
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    packed-switch v2, :pswitch_data_9c

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_85
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    if-nez v3, :cond_94

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "encryptionKey == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_94
    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_62
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_85
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-nez p2, :cond_1b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionSpec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-nez p3, :cond_25

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    if-nez p6, :cond_36

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "macKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_42

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Unknown parameter spec class; must be IvParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iput-object p1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    iput-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    iput-object p3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    iput-object p4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    iput-object p7, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    iput-wide p8, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    iput-wide p10, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    iput-wide p12, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    return-void
.end method

.method private static final isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1a

    if-eq v0, v1, :cond_e

    :cond_d
    :goto_d
    return v2

    :cond_e
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    if-ne v3, v4, :cond_d

    :cond_18
    const/4 v2, 0x1

    goto :goto_d

    :cond_1a
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    instance-of v3, p1, Landroid/content/pm/ContainerEncryptionParams;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ContainerEncryptionParams;

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    iget-wide v5, v0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    iget-wide v5, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    iget-wide v5, v0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    :cond_26
    move v1, v2

    goto :goto_4

    :cond_28
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_3c
    move v1, v2

    goto :goto_4

    :cond_3e
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v3, v4}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v3, v4}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v3

    if-nez v3, :cond_54

    :cond_52
    move v1, v2

    goto :goto_4

    :cond_54
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eq v3, v4, :cond_4

    :cond_76
    move v1, v2

    goto :goto_4
.end method

.method public getAuthenticatedDataStart()J
    .registers 3

    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    return-wide v0
.end method

.method public getDataEnd()J
    .registers 3

    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    return-wide v0
.end method

.method public getEncryptedDataStart()J
    .registers 3

    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    return-wide v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getMacTag()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    const/4 v0, 0x3

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    int-to-long v1, v0

    const-wide/16 v3, 0x17

    iget-wide v5, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    int-to-long v1, v0

    const-wide/16 v3, 0x1d

    iget-wide v5, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    int-to-long v1, v0

    const-wide/16 v3, 0x1f

    iget-wide v5, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContainerEncryptionParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mEncryptionAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEncryptionSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEncryptionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMacAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMacSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMacKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAuthenticatedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mEncryptedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mDataEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
