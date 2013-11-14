.class Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/inputmethod/InputMethodInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;->this$0:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodInfo;)I
    .registers 7
    .param p1    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2    # Landroid/view/inputmethod/InputMethodInfo;

    if-nez p2, :cond_4

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_4
    if-nez p1, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;->this$0:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    # getter for: Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->access$1600(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;->this$0:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    # getter for: Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->access$1600(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;->this$0:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    # getter for: Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->access$1600(Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager$1;->compare(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodInfo;)I

    move-result v0

    return v0
.end method
