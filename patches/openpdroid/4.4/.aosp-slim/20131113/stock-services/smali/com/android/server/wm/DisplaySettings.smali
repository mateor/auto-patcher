.class public Lcom/android/server/wm/DisplaySettings;
.super Ljava/lang/Object;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplaySettings$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplaySettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/wm/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "display_settings.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 7
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v2

    :cond_c
    :goto_c
    return v2

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    const-string v2, "overscanLeft"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    const-string v2, "overscanTop"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    const-string v2, "overscanRight"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    const-string v2, "overscanBottom"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplaySettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    iget-object v2, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public getOverscanLocked(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    if-eqz v0, :cond_1c

    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1b
.end method

.method public readSettingsLocked()V
    .registers 13

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    :try_start_3
    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_48

    move-result-object v3

    const/4 v4, 0x0

    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v8, :cond_1a

    if-ne v6, v10, :cond_12

    :cond_1a
    if-eq v6, v8, :cond_6e

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "no start tag found"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_24} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_24} :catch_95
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_24} :catch_db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_24} :catch_113
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_13b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_24} :catch_163
    .catchall {:try_start_a .. :try_end_24} :catchall_18b

    :catch_24
    move-exception v0

    :try_start_25
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_18b

    if-nez v4, :cond_44

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_44
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_197

    :goto_47
    return-void

    :catch_48
    move-exception v0

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No existing display settings "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; starting empty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_6e
    :try_start_6e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_72
    :goto_72
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_103

    if-ne v6, v11, :cond_80

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_103

    :cond_80
    if-eq v6, v11, :cond_72

    const/4 v7, 0x4

    if-eq v6, v7, :cond_72

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "display"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplaySettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_94
    .catch Ljava/lang/IllegalStateException; {:try_start_6e .. :try_end_94} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_6e .. :try_end_94} :catch_95
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_94} :catch_db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_94} :catch_113
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_94} :catch_13b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6e .. :try_end_94} :catch_163
    .catchall {:try_start_6e .. :try_end_94} :catchall_18b

    goto :goto_72

    :catch_95
    move-exception v0

    :try_start_96
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_18b

    if-nez v4, :cond_b5

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_b5
    :try_start_b5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_47

    :catch_b9
    move-exception v7

    goto :goto_47

    :cond_bb
    :try_start_bb
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <display-settings>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_da
    .catch Ljava/lang/IllegalStateException; {:try_start_bb .. :try_end_da} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_bb .. :try_end_da} :catch_95
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_da} :catch_db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_da} :catch_113
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_da} :catch_13b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bb .. :try_end_da} :catch_163
    .catchall {:try_start_bb .. :try_end_da} :catchall_18b

    goto :goto_72

    :catch_db
    move-exception v0

    :try_start_dc
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_dc .. :try_end_f4} :catchall_18b

    if-nez v4, :cond_fb

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_fb
    :try_start_fb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_100

    goto/16 :goto_47

    :catch_100
    move-exception v7

    goto/16 :goto_47

    :cond_103
    const/4 v4, 0x1

    if-nez v4, :cond_10b

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_10b
    :try_start_10b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_110

    goto/16 :goto_47

    :catch_110
    move-exception v7

    goto/16 :goto_47

    :catch_113
    move-exception v0

    :try_start_114
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catchall {:try_start_114 .. :try_end_12c} :catchall_18b

    if-nez v4, :cond_133

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_133
    :try_start_133
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_138

    goto/16 :goto_47

    :catch_138
    move-exception v7

    goto/16 :goto_47

    :catch_13b
    move-exception v0

    :try_start_13c
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_13c .. :try_end_154} :catchall_18b

    if-nez v4, :cond_15b

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_15b
    :try_start_15b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_160

    goto/16 :goto_47

    :catch_160
    move-exception v7

    goto/16 :goto_47

    :catch_163
    move-exception v0

    :try_start_164
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catchall {:try_start_164 .. :try_end_17c} :catchall_18b

    if-nez v4, :cond_183

    iget-object v7, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_183
    :try_start_183
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_188

    goto/16 :goto_47

    :catch_188
    move-exception v7

    goto/16 :goto_47

    :catchall_18b
    move-exception v7

    if-nez v4, :cond_193

    iget-object v8, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    :cond_193
    :try_start_193
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_196} :catch_19a

    :goto_196
    throw v7

    :catch_197
    move-exception v7

    goto/16 :goto_47

    :catch_19a
    move-exception v8

    goto :goto_196
.end method

.method public setOverscanLocked(Ljava/lang/String;IIII)V
    .registers 8
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    if-nez p2, :cond_e

    if-nez p3, :cond_e

    if-nez p4, :cond_e

    if-nez p5, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    if-nez v0, :cond_22

    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iput p2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    iput p3, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    iput p4, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    iput p5, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    goto :goto_d
.end method

.method public writeSettingsLocked()V
    .registers 9

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_98

    move-result-object v4

    :try_start_6
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v5, "utf-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v5, 0x0

    const-string v6, "display-settings"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplaySettings$Entry;

    const/4 v5, 0x0

    const-string v6, "display"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->name:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    if-eqz v5, :cond_53

    const/4 v5, 0x0

    const-string v6, "overscanLeft"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_53
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    if-eqz v5, :cond_63

    const/4 v5, 0x0

    const-string v6, "overscanTop"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_63
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    if-eqz v5, :cond_73

    const/4 v5, 0x0

    const-string v6, "overscanRight"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_73
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    if-eqz v5, :cond_83

    const/4 v5, 0x0

    const-string v6, "overscanBottom"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_83
    const/4 v5, 0x0

    const-string v6, "display"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_89} :catch_8a

    goto :goto_29

    :catch_8a
    move-exception v0

    const-string v5, "WindowManager"

    const-string v6, "Failed to write display settings, restoring backup."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_97
    return-void

    :catch_98
    move-exception v0

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write display settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_b2
    const/4 v5, 0x0

    :try_start_b3
    const-string v6, "display-settings"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/android/server/wm/DisplaySettings;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_c0} :catch_8a

    goto :goto_97
.end method
