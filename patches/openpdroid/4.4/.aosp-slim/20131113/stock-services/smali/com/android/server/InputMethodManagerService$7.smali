.class Lcom/android/server/InputMethodManagerService$7;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$7;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    array-length v2, v2

    if-le v2, p2, :cond_27

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    array-length v2, v2

    if-gt v2, p2, :cond_29

    :cond_27
    monitor-exit v3

    :goto_28
    return-void

    :cond_29
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    aget-object v0, v2, p2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1400(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v1, v2, p2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    if-eqz v0, :cond_5b

    if-ltz v1, :cond_51

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v1, v2, :cond_52

    :cond_51
    const/4 v1, -0x1

    :cond_52
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_5b
    monitor-exit v3

    goto :goto_28

    :catchall_5d
    move-exception v2

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_5d

    throw v2
.end method
