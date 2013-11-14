.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .registers 6
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p4    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz p2, :cond_f

    move-object v6, p2

    :goto_4
    if-ltz p1, :cond_e

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt p1, v8, :cond_19

    :cond_e
    :goto_e
    return-object v6

    :cond_f
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_4

    :cond_19
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    iget-object v1, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v5, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    const v8, 0x1020014

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v8, 0x1020015

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_45
    const v8, 0x10202c1

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v8, :cond_53

    const/4 v7, 0x1

    :cond_53
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_e

    :cond_57
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_45
.end method
