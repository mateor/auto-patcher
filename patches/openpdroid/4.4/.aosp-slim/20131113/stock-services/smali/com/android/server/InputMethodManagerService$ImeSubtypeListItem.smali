.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final mImeName:Ljava/lang/CharSequence;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z

.field public final mSubtypeId:I

.field public final mSubtypeName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4    # I
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-nez v1, :cond_2c

    const/4 v1, 0x2

    invoke-virtual {p6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    :cond_2d
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_16
.end method


# virtual methods
.method public compareTo(Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;)I
    .registers 6
    .param p1    # Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_a

    :cond_15
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    :cond_30
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x0

    goto :goto_a

    :cond_3c
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-eqz v2, :cond_42

    move v0, v1

    goto :goto_a

    :cond_42
    iget-boolean v2, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v2, :cond_4c

    move v0, v1

    goto :goto_a

    :cond_4c
    iget-boolean v2, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    goto :goto_a

    :cond_62
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->compareTo(Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;)I

    move-result v0

    return v0
.end method
