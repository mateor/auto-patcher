.class Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field mSignatures:[Landroid/content/pm/Signature;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .registers 3
    .param p1    # Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    :cond_13
    return-void
.end method

.method constructor <init>([Landroid/content/pm/Signature;)V
    .registers 2
    .param p1    # [Landroid/content/pm/Signature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    return-void
.end method


# virtual methods
.method assignSignatures([Landroid/content/pm/Signature;)V
    .registers 5
    .param p1    # [Landroid/content/pm/Signature;

    if-nez p1, :cond_6

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    :cond_5
    return-void

    :cond_6
    array-length v1, p1

    new-array v1, v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 19
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v13, 0x0

    const-string v14, "count"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <signatures> has no count at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v13, v1, [Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_38
    :goto_38
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1c7

    const/4 v13, 0x3

    if-ne v12, v13, :cond_48

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v8, :cond_1c7

    :cond_48
    const/4 v13, 0x3

    if-eq v12, v13, :cond_38

    const/4 v13, 0x4

    if-eq v12, v13, :cond_38

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "cert"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1aa

    if-ge v9, v1, :cond_183

    const/4 v13, 0x0

    const-string v14, "index"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_166

    :try_start_67
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v13, 0x0

    const-string v14, "key"

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_145

    if-ltz v4, :cond_e9

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_e9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/Signature;

    if-eqz v10, :cond_9c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/Signature;

    aput-object v13, v14, v9
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_96} :catch_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_96} :catch_10f

    add-int/lit8 v9, v9, 0x1

    :goto_98
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_38

    :cond_9c
    const/4 v13, 0x5

    :try_start_9d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <cert> index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not defined at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_9d .. :try_end_c1} :catch_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_c1} :catch_10f

    goto :goto_98

    :catch_c2
    move-exception v3

    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <cert> index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not a number at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_98

    :cond_e9
    const/4 v13, 0x5

    :try_start_ea
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <cert> index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is out of bounds at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_ea .. :try_end_10e} :catch_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_10e} :catch_10f

    goto :goto_98

    :catch_10f
    move-exception v3

    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <cert> index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has an invalid signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_98

    :cond_145
    :goto_145
    :try_start_145
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gt v13, v4, :cond_152

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_145

    :cond_152
    new-instance v10, Landroid/content/pm/Signature;

    invoke-direct {v10, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aput-object v10, v13, v9
    :try_end_162
    .catch Ljava/lang/NumberFormatException; {:try_start_145 .. :try_end_162} :catch_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_145 .. :try_end_162} :catch_10f

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_98

    :cond_166
    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: <cert> has no index at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_98

    :cond_183
    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_98

    :cond_1aa
    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown element under <cert>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_98

    :cond_1c7
    if-ge v9, v1, :cond_1d8

    new-array v7, v9, [Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v7, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    :cond_1d8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "PackageSignatures{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3f

    const/4 v1, 0x0

    :goto_21
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    if-lez v1, :cond_2d

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2d
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3f
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .param p1    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v6, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "count"

    iget-object v7, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_16
    iget-object v6, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-ge v0, v6, :cond_6c

    const-string v6, "cert"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v4, v6, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v2, :cond_4a

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/Signature;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v6

    if-ne v6, v5, :cond_69

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    const-string v6, "index"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4a
    if-lt v1, v2, :cond_61

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "index"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "key"

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_61
    const-string v6, "cert"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_6c
    invoke-interface {p1, v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5
.end method
