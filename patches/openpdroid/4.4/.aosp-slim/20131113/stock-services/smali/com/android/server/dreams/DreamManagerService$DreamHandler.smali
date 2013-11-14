.class final Lcom/android/server/dreams/DreamManagerService$DreamHandler;
.super Landroid/os/Handler;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DreamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method
