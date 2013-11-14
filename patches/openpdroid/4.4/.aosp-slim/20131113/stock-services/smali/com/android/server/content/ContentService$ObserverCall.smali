.class public final Lcom/android/server/content/ContentService$ObserverCall;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final mNode:Lcom/android/server/content/ContentService$ObserverNode;

.field final mObserver:Landroid/database/IContentObserver;

.field final mSelfChange:Z


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V
    .registers 4
    .param p1    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2    # Landroid/database/IContentObserver;
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    return-void
.end method
