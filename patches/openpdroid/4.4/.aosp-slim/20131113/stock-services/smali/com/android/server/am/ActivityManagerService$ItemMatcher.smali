.class Lcom/android/server/am/ActivityManagerService$ItemMatcher;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemMatcher"
.end annotation


# instance fields
.field all:Z

.field components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    return-void
.end method


# virtual methods
.method build([Ljava/lang/String;I)I
    .registers 5
    .param p1    # [Ljava/lang/String;
    .param p2    # I

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_f

    aget-object v0, p1, p2

    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 p2, p2, 0x1

    :cond_f
    return p2

    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method build(Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-nez v3, :cond_12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    :cond_12
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    :goto_19
    return-void

    :cond_1a
    const/4 v2, 0x0

    const/16 v3, 0x10

    :try_start_1d
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-nez v3, :cond_2c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    :cond_2c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_38} :catch_39

    goto :goto_19

    :catch_39
    move-exception v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-nez v3, :cond_45

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    :cond_45
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    goto :goto_19
.end method

.method match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/content/ComponentName;

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_6
    return v2

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v3

    goto :goto_6

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_27
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-eqz v2, :cond_4b

    const/4 v1, 0x0

    :goto_2c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v4, v2, :cond_48

    move v2, v3

    goto :goto_6

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-eqz v2, :cond_6f

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_54
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    move v2, v3

    goto :goto_6

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_6f
    const/4 v2, 0x0

    goto :goto_6
.end method
