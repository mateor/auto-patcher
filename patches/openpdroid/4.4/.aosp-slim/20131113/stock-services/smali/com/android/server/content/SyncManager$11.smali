.class Lcom/android/server/content/SyncManager$11;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V
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
        "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    iget-object v1, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/content/SyncAdapterType;

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    check-cast p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$11;->compare(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)I

    move-result v0

    return v0
.end method
