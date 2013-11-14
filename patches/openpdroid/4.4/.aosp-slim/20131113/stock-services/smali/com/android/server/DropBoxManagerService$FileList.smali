.class final Lcom/android/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$FileList;",
        ">;"
    }
.end annotation


# instance fields
.field public blocks:I

.field public final contents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService$1;)V
    .registers 2
    .param p1    # Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService$FileList;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I
    .registers 5
    .param p1    # Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-eq v1, v2, :cond_d

    iget v0, p1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v0, v1

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-eq p0, p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ge v1, v2, :cond_1b

    const/4 v0, -0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-le v1, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_c
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/server/DropBoxManagerService$FileList;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$FileList;->compareTo(Lcom/android/server/DropBoxManagerService$FileList;)I

    move-result v0

    return v0
.end method
