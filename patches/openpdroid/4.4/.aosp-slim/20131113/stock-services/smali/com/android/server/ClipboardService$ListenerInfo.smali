.class Lcom/android/server/ClipboardService$ListenerInfo;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerInfo"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V
    .registers 4
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ClipboardService$ListenerInfo;->this$0:Lcom/android/server/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iput-object p3, p0, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method
