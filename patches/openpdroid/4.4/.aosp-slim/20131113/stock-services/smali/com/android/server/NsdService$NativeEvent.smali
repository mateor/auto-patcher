.class Lcom/android/server/NsdService$NativeEvent;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEvent"
.end annotation


# instance fields
.field final code:I

.field final raw:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;ILjava/lang/String;)V
    .registers 4
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/NsdService$NativeEvent;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/NsdService$NativeEvent;->code:I

    iput-object p3, p0, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    return-void
.end method
