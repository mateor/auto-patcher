.class final Lcom/android/server/pm/PendingPackage;
.super Lcom/android/server/pm/PackageSettingBase;
.source "PendingPackage.java"


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    .registers 17
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/io/File;
    .param p4    # Ljava/io/File;
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p7    # I
    .param p8    # I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    iput p6, p0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    return-void
.end method
