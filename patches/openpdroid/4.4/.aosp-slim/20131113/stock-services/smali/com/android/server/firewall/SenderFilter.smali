.class Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "SenderFilter.java"


# static fields
.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field private static final SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM:Lcom/android/server/firewall/Filter;

.field private static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

.field private static final USER_ID:Lcom/android/server/firewall/Filter;

.field private static final VAL_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VAL_SYSTEM:Ljava/lang/String; = "system"

.field private static final VAL_SYSTEM_OR_SIGNATURE:Ljava/lang/String; = "system|signature"

.field private static final VAL_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$2;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$3;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$3;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$4;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$4;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$5;

    invoke-direct {v0}, Lcom/android/server/firewall/SenderFilter$5;-><init>()V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/firewall/Filter;
    .registers 1

    sget-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/Filter;

    return-object v0
.end method

.method static isPrivilegedApp(II)Z
    .registers 8
    .param p0    # I
    .param p1    # I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-eq p0, v4, :cond_10

    if-eqz p0, :cond_10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq p1, v4, :cond_10

    if-nez p1, :cond_11

    :cond_10
    :goto_10
    return v2

    :cond_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_15
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getFlagsForUid(I)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_20

    move-result v4

    const/high16 v5, 0x40000000

    and-int/2addr v4, v5

    if-nez v4, :cond_10

    move v2, v3

    goto :goto_10

    :catch_20
    move-exception v0

    const-string v2, "IntentFirewall"

    const-string v4, "Remote exception while retrieving uid flags"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto :goto_10
.end method
