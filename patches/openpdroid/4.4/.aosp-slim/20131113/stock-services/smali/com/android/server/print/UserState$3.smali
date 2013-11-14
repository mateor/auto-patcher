.class Lcom/android/server/print/UserState$3;
.super Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 4
    .param p2    # Landroid/print/IPrintJobStateChangeListener;
    .param p3    # I

    iput-object p1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    # getter for: Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/print/UserState;->access$300(Lcom/android/server/print/UserState;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
