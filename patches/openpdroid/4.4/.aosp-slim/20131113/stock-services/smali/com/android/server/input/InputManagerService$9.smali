.class Lcom/android/server/input/InputManagerService$9;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutOverlay(Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$9;->val$result:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17

    :catch_1a
    move-exception v0

    goto :goto_17
.end method
