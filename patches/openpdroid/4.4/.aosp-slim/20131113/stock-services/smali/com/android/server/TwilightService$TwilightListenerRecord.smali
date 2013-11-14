.class final Lcom/android/server/TwilightService$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TwilightListenerRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/TwilightService$TwilightListener;


# direct methods
.method public constructor <init>(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V
    .registers 3
    .param p1    # Lcom/android/server/TwilightService$TwilightListener;
    .param p2    # Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/TwilightService$TwilightListener;

    iput-object p2, p0, Lcom/android/server/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/TwilightService$TwilightListener;

    invoke-interface {v0}, Lcom/android/server/TwilightService$TwilightListener;->onTwilightStateChanged()V

    return-void
.end method
