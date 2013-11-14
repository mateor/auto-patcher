.class final Lcom/android/server/am/BroadcastFilter;
.super Landroid/content/IntentFilter;
.source "BroadcastFilter.java"


# instance fields
.field final owningUid:I

.field final owningUserId:I

.field final packageName:Ljava/lang/String;

.field final receiverList:Lcom/android/server/am/ReceiverList;

.field final requiredPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1    # Landroid/content/IntentFilter;
    .param p2    # Lcom/android/server/am/ReceiverList;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iput-object p3, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    iput p6, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "requiredPermission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/io/PrintWriter;
    .param p2    # Landroid/util/Printer;
    .param p3    # Ljava/lang/String;

    invoke-super {p0, p2, p3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
